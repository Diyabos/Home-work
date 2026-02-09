/**
 Q1 
 Create a class City with attributes name and population.
  In main(), create two city objects and print their details
 */
class City {
  String? name;
  int? population;
  City(String name, int population) {
    this.name = name;
    this.population = population;
  }
  void detailes() {
    print("city : $name , population : $population");
  }
}

void main() {
  City city1 = City("cairo", 120);
  City city2 = City("washinton", 200);
  city1.detailes();
  city2.detailes();
}
