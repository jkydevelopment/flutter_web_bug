
import 'dart:math';

class MathUtils {
  static int randomNumber(int min, int max) => min + Random().nextInt(max - min);
}