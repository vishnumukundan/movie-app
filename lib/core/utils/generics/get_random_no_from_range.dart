// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:math';

getRandRange(int min, int max) {
  final _random = Random();
  return min + _random.nextInt(max - min);
}
