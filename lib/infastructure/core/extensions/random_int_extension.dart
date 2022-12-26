import 'dart:math' show Random;

extension RandomIntExtension on int {
  int get randInt => Random().nextInt(this);
}
