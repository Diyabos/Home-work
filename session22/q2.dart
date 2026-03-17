/**
  Exercise 2:
 2. a) Declare variables: String country, int year, double weight, bool likesCoding. Assign values.
 b) Print a sentence that includes all values using string interpolation.
 c) Change weight to a different value and print only the updated one.
  */
void main() {
  String country = 'egypt';
  int year = 2000;
  double wight = 50.5;
  bool likesCoding = true;
  print(
    'i live in $country , i was born in $year , my wight is $wight kg, and i love coding $likesCoding',
  );
  wight = 55.5;
  print('$wight kg');
}
