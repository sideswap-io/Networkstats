import 'package:network_stats/models/network_stats.dart';
import 'package:riverpod/riverpod.dart';

final networkStatsProvider =
    StateProvider<NetworkStats>((ref) => NetworkStats());
