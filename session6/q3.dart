/**
 Q3.
  Modify Attributes - Create a class Person with attributes name
  and age. - Create an object and set its initial values using
   a constructor. - Then change the age of the object and print
    the updated details.
 */
class Person {
  String? name;
  int? age;
  Person({String? name, int? age}) {
    this.name = name;
    this.age = age;
  }
}

void main() {
  Person person = Person(name: "ali", age: 22);
  person.age = 30;
  print({person.name, person.age});
}
