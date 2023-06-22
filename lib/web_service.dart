import 'package:network_stats/provider.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class WebService {
  final ProviderContainer container;

  WebService(this.container);

  Handler get handler {
// Configure routes.
    final router = Router()..get('/', _rootHandler);
    // ..get('/echo/<message>', _echoHandler);

    return router;
  }

  Response _rootHandler(Request req) {
    final value = container.read(networkStatsProvider);
    return Response.ok('${value.toJson()}\n');
  }

  // Response _echoHandler(Request request) {
  //   final message = request.params['message'];
  //   return Response.ok('$message\n');
  // }
}
