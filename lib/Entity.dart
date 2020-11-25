import 'dart:math';

class Entity {
  String name;
  int totalHP;
  int currentHP;
  num atq;
  num def;

  Entity(this.name, this.totalHP, this.atq, this.def) {
    currentHP = totalHP;
  }

  void attack(Entity enemy) {
    var myAtq = 1 + Random().nextInt(atq - 1);
    var otherDef = 1 + Random().nextInt(enemy.def - 1);
    var impact = otherDef - myAtq;

    print('${enemy.name} HP: ${enemy.currentHP}');

    if (impact >= 0) {
      print(
          '${enemy.name} ha repelido tu ataque! Se Prepara para el contraataque...');
      enemy.attack(this);
    } else {
      impact *= -1;
      enemy.currentHP -= impact;
      print('${name} atacó a ${enemy.name} con un impacto de ${impact}');
    }
  }
}
