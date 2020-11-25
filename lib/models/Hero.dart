import 'package:DartRolGame/models/Fighter.dart';

class Hero extends Fighter {
  num coins;
  int level;
  int xp;

  Hero({name, int totalHP, num minAtq, num maxAtq, num minDef, num maxDef})
      : super(name, totalHP, minAtq, maxAtq, minDef, maxDef) {
    level = 1;
    xp = 0;
    coins = 25;
  }
}
