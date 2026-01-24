/**
 Exercise 10:
 a) Demonstrate var vs dynamic: assign dynamic value first as an int,
 then as a String, printing after each.
 b) Create var greeting = 'Hi'; change it to another String and print.
 c) Declare num pi = 3.14159; print pi.toInt() and pi.toStringAsFixed(3)
 */
void main() {
  dynamic sport;
  sport = 20;
  print('$sport');
  sport = 'football';
  print('$sport');
  var greeting;
  greeting = 'Hi';
  greeting = 'heelo world';
  print('$greeting');
  num pi = 3.14159;
  print(pi.toInt());
  print(pi.toStringAsFixed(3));
}
