import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:stack_trace/stack_trace.dart';
import 'package:network_stats/utils/custom_logger.dart' as log;

Middleware customLogRequests(
        {void Function(String message, bool isError)? logger}) =>
    (innerHandler) {
      return (request) {
        var startTime = DateTime.now();
        var watch = Stopwatch()..start();

        return Future.sync(() => innerHandler(request)).then((response) {
          final clientAddress = (request.context['shelf.io.connection_info']
                      as HttpConnectionInfo?)
                  ?.remoteAddress
                  .address ??
              '';
          var msg = _message(
              startTime, response, request, watch.elapsed, clientAddress);

          log.logger.i(msg);

          return response;
        }, onError: (Object error, StackTrace stackTrace) {
          if (error is HijackException) throw error;

          var msg = _errorMessage(startTime, request.requestedUri,
              request.method, watch.elapsed, error, stackTrace);

          log.logger.i(msg);

          // ignore: only_throw_errors
          throw error;
        });
      };
    };

String _formatQuery(String query) {
  return query == '' ? '' : '?$query';
}

String _message(DateTime requestTime, Response response, Request req,
    Duration elapsedTime, String clientAddress) {
  return '$clientAddress '
      '\"${req.method} [${response.statusCode}]\" ' // 7 - longest standard HTTP method
      '${req.requestedUri.path}${_formatQuery(req.requestedUri.query)} '
      '\"${req.headers['user-agent']}\" '
      '${elapsedTime.toString()} ';
}

String _errorMessage(DateTime requestTime, Uri requestedUri, String method,
    Duration elapsedTime, Object error, StackTrace? stack) {
  var chain = Chain.current();
  if (stack != null) {
    chain = Chain.forTrace(stack)
        .foldFrames((frame) => frame.isCore || frame.package == 'shelf')
        .terse;
  }

  var msg = '$requestTime\t$elapsedTime\t$method\t${requestedUri.path}'
      '${_formatQuery(requestedUri.query)}\n$error';

  return '$msg\n$chain';
}
