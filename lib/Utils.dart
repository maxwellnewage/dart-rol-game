import 'dart:math';

class Utils {
  static int rand(num from, num to) {
    return from + Random().nextInt(to - from);
  }
}