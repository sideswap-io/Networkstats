import 'package:logger/logger.dart' as log;

class AnyModeFilter extends log.LogFilter {
  bool get isInDebugMode {
    bool inDebugMode = false;
    assert(inDebugMode = true);
    return inDebugMode;
  }

  @override
  bool shouldLog(log.LogEvent event) {
    if (isInDebugMode) {
      return true;
    }

    return event.level.index >= level!.index;
  }
}

CustomLogger logger = CustomLogger();

class CustomLogger {
  factory CustomLogger() {
    return _customLogger;
  }

  CustomLogger._internal();

  static final CustomLogger _customLogger = CustomLogger._internal();

  static const String appName = 'NetworkStats';

  log.Logger internalLogger = log.Logger(
    filter: AnyModeFilter(),
    printer: log.SimplePrinter(printTime: true),
    output: ConsoleOutput(),
    level: log.Level.info,
  );

  void v(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    internalLogger.v('$appName: $message', error, stackTrace);
  }

  void d(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    internalLogger.d('$appName: $message', error, stackTrace);
  }

  void i(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    internalLogger.i('$appName: $message', error, stackTrace);
  }

  void w(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    internalLogger.w('$appName: $message', error, stackTrace);
  }

  void e(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    internalLogger.e('$appName: $message', error, stackTrace);
  }

  void wtf(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    internalLogger.wtf('$appName: $message', error, stackTrace);
  }
}

class ConsoleOutput extends log.LogOutput {
  void printWrapped(Object object) {
    final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern.allMatches('$object').forEach((match) async {
      final line = match.group(0);
      // ignore: avoid_print
      print(line);
    });
  }

  @override
  void output(log.OutputEvent event) {
    event.lines.forEach(printWrapped);
  }
}
