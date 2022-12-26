import 'dart:math' show Random;

extension ShuffleListsExtension<E> on List<E> {
  List<E> get shuffleItems {
    var random = Random();

    for (var i = length - 1; i > 0; i--) {
      var n = random.nextInt(i + 1);

      var temp = this[i];
      this[i] = this[n];
      this[n] = temp;
    }

    return this;
  }
}
