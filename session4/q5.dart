/**
 Q5
 Create a program with the text 'EGP 12.50'.
 Print only the number 12.50 as a decimal
 */
void main() {
  //creating the text
  String text = 'EGP 12.50';
  //remove the text and keep the number
  double amount = double.parse(text.replaceAll("EGP", ""));
  //the print statment
  print(amount);
}
