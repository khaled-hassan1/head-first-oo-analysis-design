/// Section 1: Core Concepts
/// 1. Encapsulation
class BankAccount {
  double _balance;
  final String _accountHolder;

  BankAccount({required double balance, required String accountHolder})
      : _balance = balance,
        _accountHolder = accountHolder;

  double get balance => _balance;

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposited: $amount. New balance: $_balance');
    } else {
      print('Invalid deposit amount.');
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && _balance >= amount) {
      _balance -= amount;
      print('Withdrew: $amount. Remaining balance: $_balance');
    } else {
      print('Invalid withdrawal amount or insufficient balance.');
    }
  }
}

/// 2. Inheritance
abstract class Animal {
  void eat();
  void sleep();
}

class Dog extends Animal {
  @override
  void eat() {
    print('Dog Eats.');
  }

  @override
  void sleep() {
    print('Dog Sleeps.');
  }
}

class Cat extends Animal {
  @override
  void eat() {
    print('Cat Eats.');
  }

  @override
  void sleep() {
    print('Cat Sleeps.');
  }
}

/// 3. Polymorphism
abstract class Shape {
  void draw();
}

class Circle implements Shape {
  final double radius;

  Circle(this.radius);

  @override
  void draw() {
    print('Drawing a circle with radius $radius');
  }
}

class Rectangle implements Shape {
  final double width;
  final double height;

  Rectangle(this.width, this.height);
  @override
  void draw() {
    print('Drawing a rectangle with width $width and height $height');
  }
}

void renderShapes(List<Shape> shapes) {
  for (Shape shape in shapes) {
    shape.draw();
  }
}

void main() {
  // Testing Encapsulation
  BankAccount account = BankAccount(balance: 1000, accountHolder: 'John Doe');
  account.deposit(200);
  account.withdraw(150);
  account.withdraw(1200); // Invalid

  // Testing Inheritance
  Dog dog = Dog();
  dog.eat();
  dog.sleep();

  Cat cat = Cat();
  cat.eat();
  cat.sleep();

  // Testing Polymorphism
  List<Shape> shapes = [
    Circle(5),
    Rectangle(10, 4),
  ];
  renderShapes(shapes);
}