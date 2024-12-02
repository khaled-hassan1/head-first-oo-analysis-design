// Section 3: Real-World Scenarios
// Refactoring Exercise:
// Below is a poorly designed Dart code snippet. Refactor it to follow OOP principles:

abstract class Shape {
  void draw();
}

class Circle implements Shape {
  @override
  void draw() {
    print("Drawing a circle");
  }
}

class Rectangle implements Shape {
  @override
  void draw() {
    print("Drawing a rectangle");
  }
}

class Triangle implements Shape {
  @override
  void draw() {
    print("Drawing a triangle");
  }
}

class Renderer {
  void renderShapes(List<Shape> shapes) {
    for (Shape shape in shapes) {
      shape.draw();
    }
  }
}

void main() {
  final List<Shape> shapes = [
    Circle(),
    Rectangle(),
    Triangle(),
  ];

  Renderer().renderShapes(shapes);

}