import 'car.dart';

/**
 Q2
Create a class Car with private fields _brand and _year.-
 Add setters that reject empty brand names and years less
  than 1886 (first car invention).- Add getters for both.-
   In main(), demonstrate creating two car objects 
   (one valid, one invalid input)
 */
void main() {
  Car car1 = Car();
  car1.brand = "ferrari";
  car1.year = 2025;
  print("car : ${car1.brand} year ${car1.year}");
  Car car2 = Car();
  car2.brand = "";
  car2.year = 1830;
  print("car : ${car1.brand} year ${car1.year}");
}
