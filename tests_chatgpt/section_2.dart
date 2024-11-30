/// Section 2: Design Principles
/// 4. Encapsulate What Varies:
abstract class WeaponBehavior {
  void useWeapon();
}

class SwordBehavior implements WeaponBehavior {
  @override
  void useWeapon() => print("Swinging a sword!");
}

class BowAndArrowBehavior implements WeaponBehavior {
  @override
  void useWeapon() => print("Firing an arrow!");
}

class AxeBehavior implements WeaponBehavior {
  @override
  void useWeapon() => print("Swinging an axe!");
}

abstract class Character {
  WeaponBehavior weaponBehavior = SwordBehavior();

  void set setWeaponBehavior(WeaponBehavior newWeapon) {
    weaponBehavior = newWeapon;
  }

  void attack() {
    weaponBehavior.useWeapon();
  }
}

class King extends Character {}

class Queen extends Character {}

class Knight extends Character {}

class Troll extends Character {}

// 5. Favor Composition Over Inheritance:
abstract class FlyBehavior {
  void fly();
}

class WingedFlight implements FlyBehavior {
  @override
  void fly() => print('Flying with wings.');
}

class RocketFlight implements FlyBehavior {
  @override
  void fly() => print('Flying with rockets!');
}

class Duck {
  FlyBehavior flyBehavior = WingedFlight(); // Default fly behavior

  void setFlyBehavior(FlyBehavior behavior) {
    flyBehavior = behavior;
  }

  void fly() {
    flyBehavior.fly();
  }

  void quack() => print('Quack!');
}

void main(List<String> args) {
  King king = King();
  king.setWeaponBehavior = BowAndArrowBehavior();
  king.attack();
  king.setWeaponBehavior = AxeBehavior();
  king.attack();
  print('----------------------');
  Duck duck = Duck();
  duck.fly();
  duck.quack();
  print('----------------------');

  // Change fly behavior dynamically
  duck.setFlyBehavior(RocketFlight());
  duck.fly();
  duck.quack();
}
