

import 'package:DartRolGame/Utils.dart';

import 'models/Fighter.dart';

class BattleSystem {
  static void attack(Fighter to, Fighter from) {
    var myAtq = Utils.rand(from.minAtq, from.maxAtq);
    var otherDef = Utils.rand(to.minDef, to.maxDef);
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