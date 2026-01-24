/**
 Write a Dart program that evaluates three integer variables
 with different logical and comparison expressions.
 Print the results, then decide whether to print '
 Rule passed' or 'Rule failed' based on one of the expressions
 */
void main() {
  //define three integers
  int a = 10;
  int b = 20;
  int c = 5;
  //the logical and comparison and print the result
  bool campartion1 = a > c;
  bool campartion2 = a < b;
  bool campartion3 = (a > b) && (c < a);
  print(campartion1);
  print(campartion2);
  print(campartion3);
  //decied whatever the 'rule passed' or 'Rule failed' based on one of the expressions
  if (campartion3) {
    print('rule passed');
  } else {
    print('rule failed');
  }
}
