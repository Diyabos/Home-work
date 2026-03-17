/**
 Q1. 
  Class with Method - Create a class Calculator with two
  attributes: num1 and num2. - Add a method addNumbers() that
   prints the sum of the two numbers.
    - Create an object in main() and call the method
 */
class calculator {
  int? num1;
  int? num2;
  calculator(this.num1, this.num2) {}
  void addNumbers() {
    print("$num1 + $num2");
  }
}

void main() {
  calculator cal = calculator(10, 30);
  cal.addNumbers();
}
