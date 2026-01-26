/**
 Q3
 Create a program with a price of 180 and a flag showing
 the person is a student. If the person is astudent and the
 price is 150 or more, reduce the price by 15. Print the final
 price
 */
void main() {
  //creating the varibles
  int price = 180;
  bool isStudent = true;
  //the if condtion with the print statment
  if (isStudent && price >= 150) {
    price -= 15;
  }
  print("final price is $price");
}
