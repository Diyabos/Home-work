/**
 Q8
 Create a program with a setting called API_URL
 that is empty. If it is empty, replace it with
'https://example.com'. Print the new value in capital letters
 */
void main() {
  //creating the program
  String apiUrl = "";
  //the if condtion
  if (apiUrl.isEmpty) {
    apiUrl = 'https://example.com';
  }
  print(apiUrl.toUpperCase());
}
