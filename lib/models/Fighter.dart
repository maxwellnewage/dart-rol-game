import 'package:DartRolGame/models/Entity.dart';

class Fighter extends Entity {
  int totalHP;
  int currentHP;
  num minAtq;
  num maxAtq;
  num minDef;
  num maxDef;

  Fighter(name, this.totalHP, this.minAtq, this.maxAtq, this.minDef,
      this.maxDef) : super(name) {
    currentHP = totalHP;
  }
}