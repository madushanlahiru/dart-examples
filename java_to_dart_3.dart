import 'dart:math';

/// You can either Top-level factory function or Factory constructor
/// to implement factory design pattern in Dart.

// 01.Top-level factory function
/*Shape shapeFactory(String type) {
  if(type == 'circle') return Circle(2);
  if(type == 'square') return Square(2);
  throw 'Can\'t create $type';
}*/

abstract class Shape {
  
  // 02.Factory constructor
  factory Shape(String type) {
    if(type == 'circle') return Circle(2);
    if(type == 'square') return Square(2);
    throw 'Can\'t create $type';
  }
  
  num get area; // abstract getter function
}

class Circle implements Shape {
  final num radius;
  
  Circle(this.radius); // Single-line Constructor
  
  @override
  num get area => pi * pow(radius, 2); // lambda getter function
}

class Square implements Shape {
  final num side;
  
  Square(this.side);
  
  @override
  num get area => pow(side, 2);
}

main() {
  
  /*final circle = Circle(2);
  final square = Square(2);*/
  
  // Top-level factory function call
  /*final circle = shapeFactory('circle');
  final square = shapeFactory('square');*/
  
  // Factory constructor call
  final circle = Shape('circle');
  final square = Shape('square');
  
  print(circle.area);
  print(square.area);
}