import 'package:DartRolGame/models/Fighter.dart';

class Enemy extends Fighter {
  num coinsDrop;
  num xpDrop;

  Enemy({name, this.coinsDrop, this.xpDrop, int totalHP, num minAtq, num maxAtq, num minDef, num maxDef}) : super(name, totalHP, minAtq, maxAtq, minDef, maxDef);

}