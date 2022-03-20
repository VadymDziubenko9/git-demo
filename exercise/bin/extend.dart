/*

outside the class    |     into the class

      function       =      method (has this. property)
      variable       =      property




 */
import 'dart:core';

import 'dart:math';

enum Color { red, blue, green }

abstract class Shape {
  double get area;
  final Color color;

  Shape(this.color);

  @override
  String toString() {
    return '$color $area';
  }
}

class Triangle extends Shape {
  final int side;
  final int verticalHeight;

  @override
  double get area => 1 / 2 * (side * verticalHeight);

  Triangle(Color color, this.side, this.verticalHeight) : super(color);
}

class Circle extends Shape {
  final int radius;

  @override
  double get area => pi * pow(radius, 2);

  Circle(Color color, this.radius) : super(color);
}

class Square extends Shape {
  final int _side;

  int get width => _side;

  int get length => _side;

  @override
  double get area => pow(_side, 2).toDouble();

  Square(Color color, this._side) : super(color);

  @override
  String toString() {
    return super.toString() + ' $length $width $_side';
  }
}

void main() {
  final triangle = Triangle(Color.blue, 15, 5);
  final circle = Circle(Color.green, 7);
  final square = Square(Color.red, 15);

  final list = [triangle, circle, square];
  list.elementAt(0).area;
  list.elementAt(1).area;
  list.elementAt(2).area;
}
