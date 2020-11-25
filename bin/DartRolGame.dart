import 'package:DartRolGame/BattleSystem.dart';
import 'package:DartRolGame/models/Enemy.dart';
import 'package:DartRolGame/models/Hero.dart';

void main(List<String> arguments) {
  var hero = Hero(
    name: 'Tomas',
    totalHP: 100,
    maxAtq: 10,
    minAtq: 5,
    maxDef: 10,
    minDef: 5,
  );

  var slime = Enemy(
    name: 'Slime',
    coinsDrop: 5,
    xpDrop: 10,
    totalHP: 50,
    maxAtq: 5,
    minAtq: 2,
    maxDef: 5,
    minDef: 4,
  );

  while (hero.currentHP > 0 && slime.currentHP > 0) {
    BattleSystem.attack(slime, hero);
  }

  if (hero.currentHP > 0) {
    print('Has ganado!');
  } else {
    print('Has perdido :(');
  }
}
