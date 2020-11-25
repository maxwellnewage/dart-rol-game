import 'package:DartRolGame/Entity.dart';

void main(List<String> arguments) {
  var hero = Entity('Tomas', 100, 10, 20);
  var slime = Entity('Slime', 10, 10, 10);

  while(hero.currentHP > 0 && slime.currentHP > 0) {
    hero.attack(slime);
  }

  if(hero.currentHP > 0) {
    print('Has ganado!');
  } else {
    print('Has perdido :(');
  }
}
