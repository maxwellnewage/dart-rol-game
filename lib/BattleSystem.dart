import 'dart:math';

import 'Entity.dart';

class BattleSystem {
  static void attack(Entity to, Entity from) {
    var myAtq = 1 + Random().nextInt(from.atq - 1);
    var otherDef = 1 + Random().nextInt(to.def - 1);
    var impact = otherDef - myAtq;

    print('${to.name} HP: ${to.currentHP}');

    if (impact >= 0) {
      print(
          '${to.name} ha repelido tu ataque! Se Prepara para el contraataque...');
      attack(from, to);
    } else {
      impact *= -1;
      to.currentHP -= impact;
      print('${from.name} atacó a ${to.name} con un impacto de ${impact}');
    }
  }
}