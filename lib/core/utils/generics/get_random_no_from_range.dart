import 'dart:math';

getRandRange(int min, int max) {
  final _random = Random();
  return min + _random.nextInt(max - min);
}
