class Entity {
  String name;
  int totalHP;
  int currentHP;
  num atq;
  num def;

  Entity(this.name, this.totalHP, this.atq, this.def) {
    currentHP = totalHP;
  }
}
