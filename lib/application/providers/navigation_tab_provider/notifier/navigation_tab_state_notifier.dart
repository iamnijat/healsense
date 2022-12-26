import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavigationTabStateNotifier extends StateNotifier<int> {
  NavigationTabStateNotifier() : super(0);

  set index(int value) => state = value;

  void select(int value) => index = value;
}
