/**
 Q2.
  Class with Constructor - Create a class Car with attributes
   brand and year. - Add a constructor to set the values when
    creating the object. - In main(), create two car objects
     with different data and print their details
 */
class Car {
  String? brand;
  int? year;
  Car({String? brand, int? year}) {
    this.brand = brand;
    this.year = year;
  }
}

void main() {
  Car car1 = Car(brand: "ferrari", year: 2025);
  print({car1.brand, car1.year});
  Car car2 = Car(brand: "mercedes", year: 2026);
  print({car2.brand, car2.year});
}
