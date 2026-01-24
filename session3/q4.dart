/**
 Question 12
 Create a Dart program that safely reads a phone number
 from a map. If the phone number is null,print a default
 message. Then update the phone number and print its length.
 */
void main() {
  //A map with nullable phone nummber
  Map<String, String> contact = {'name': 'samy', 'phone': '0123453356'};
  //the print statment
  String phoneNumber = contact['phoneNumber'] ?? 'No phone number available';
  print(phoneNumber);
  //update the phone number
  contact['phoneNumber'] = '01388473929';
  print(contact['phoneNumber']!.length);
}
