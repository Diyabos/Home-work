import 'dart:vmservice_io';

import 'q2shape.dart';

/**
 Q2
Model shapes to compute total paintable area and cost.
Requirements:- Provide a general shape type (concrete class)
 with an area() method that can be overridden.- Implement at
  least three concrete shape types with encapsulated dimensions
   and validated ,constructors (invalid → print; keep previous).
   - Use polymorphism with a mixed collection of shapes to
    compute total area (no type checks in client code).- 
    Apply tiered pricing: first 50 units at 1.50, next 100 at
     1.25, remainder at 1.00; print total area and total cost to
      2 decimals
 */
void main() {
  List<Shape> shapes = [Rectangle(10, 5), Circle(4), Triangle(6, 8)];
  double totalArea = 0;
  for (var shape in shapes) {
    totalArea += shape.area();
  }
  double totalCost = calculateCost(totalArea);
  print("Total Area: ${totalArea.toStringAsFixed(2)}");
  print("Total Cost: \$${totalCost.toStringAsFixed(2)}");
}
