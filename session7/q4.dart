import 'dart:math';

/**
 Q4 
 Create a class Employee with attributes name and salary.
 Add a method giveRaise(int amount) that increases the salary.
 In main(), create an employee, give them a raise, and print
 the new salary
 */
class Employee {
  String? name;
  int? salary;
  Employee(String name, int salary) {
    this.name = name;
    this.salary = salary;
  }
  void giveRaise(int amount) {
    salary = salary! + amount;
  }
}

void main() {
  Employee employee = Employee("mina", 20000);
  employee.giveRaise(2000);
  print(employee.salary);
}
