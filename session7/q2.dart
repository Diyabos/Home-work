/**
 Q2 
 Create a class Temperature with an attribute celsius.
 Add a method toFahrenheit() that returns the temperature in
 Fahrenheit. In main(), create an object and print the converted
 value
 */
class Temperature {
  double? celsius;
  Temperature(double celsius) {
    this.celsius = celsius;
  }
  double toFahrenheit() {
    double Fahrenheit = (celsius! * 9 / 5) + 32;
    return Fahrenheit;
  }
}

void main() {
  Temperature temperature = Temperature(37);
  print(temperature.toFahrenheit());
}
