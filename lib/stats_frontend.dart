import 'package:isolator/isolator.dart';
import 'package:network_stats/backend/stats_backend.dart';
import 'package:network_stats/event.dart';

class StatsFrontend with Frontend {
  @override
  void initActions() {}

  void startBackend() => run(event: Event.startBackend);

  Future<void> init() async {
    await initBackend(initializer: createBackend);
  }
}

StatsBackend createBackend(BackendArgument<void> argument) {
  return StatsBackend(argument: argument);
}
