/**
 Q12
 Create a program with a username that is empty.If the username
 is empty, print (guest). Otherwise, print the username.
 */
void main() {
  //creating the program with the empty username
  String username = '';
  //the if condtion
  if (username.isEmpty) {
    print('guest');
  } else {
    print(username);
  }
}
