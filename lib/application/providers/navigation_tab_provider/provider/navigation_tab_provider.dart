import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healsense/application/providers/navigation_tab_provider/notifier/navigation_tab_state_notifier.dart';

final navigationTabProvider =
    StateNotifierProvider<NavigationTabStateNotifier, int>(
  (_) => NavigationTabStateNotifier(),
);
