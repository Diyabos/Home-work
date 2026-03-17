import 'dart:math';

class Shape {
  double area() {
    return 0.0;
  }
}

class Rectangle extends Shape {
  double _width = 1;
  double _height = 1;
  Rectangle(double width, double height) {
    setWidth(width);
    setHeight(height);
  }
  void setWidth(double width) {
    if (width > 0) {
      _width = width;
    } else {
      print("Invalid width for Rectangle. Keeping previous value.");
    }
  }

  void setHeight(double height) {
    if (height > 0) {
      _height = height;
    } else {
      print("Invalid height for Rectangle. Keeping previous value.");
    }
  }

  @override
  double area() => _width * _height;
}

class Circle extends Shape {
  double _radius = 1;
  Circle(double radius) {
    setRadius(radius);
  }
  void setRadius(double radius) {
    if (radius > 0) {
      _radius = radius;
    } else {
      print("Invalid radius for Circle. Keeping previous value.");
    }
  }

  @override
  double area() => pi * _radius * _radius;
}

class Triangle extends Shape {
  double _base = 1;
  double _height = 1;

  Triangle(double base, double height) {
    setBase(base);
    setHeight(height);
  }
  void setBase(double base) {
    if (base > 0) {
      _base = base;
    } else {
      print("Invalid base for Triangle. Keeping previous value.");
    }
  }

  void setHeight(double height) {
    if (height > 0) {
      _height = height;
    } else {
      print("Invalid height for Triangle. Keeping previous value.");
    }
  }

  @override
  double area() => 0.5 * _base * _height;
}

double calculateCost(double totalArea) {
  double cost = 0;

  if (totalArea <= 50) {
    cost = totalArea * 1.50;
  } else if (totalArea <= 150) {
    cost = (50 * 1.50) + ((totalArea - 50) * 1.25);
  } else {
    cost = (50 * 1.50) + (100 * 1.25) + ((totalArea - 150) * 1.00);
  }

  return cost;
}
