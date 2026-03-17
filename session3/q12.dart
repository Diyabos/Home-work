/**
 Question 20
 Write a Dart program that checks access rules for a ticket
 gate. If the user is under 18, check if theyhave a parent.
 Use a switch statement on an area variable (general
 or restricted) to decide what message to print
 */

void main() {
  int age = 16;
  bool hasParent = true;
  bool hasAcess = false;
  String area = 'restricted'; // 'general' or 'restricted'

  // Check access rules
  if (age < 18 || !hasParent) {
    hasAcess = true;
  }

  // Decide message based on area
  switch (area) {
    case 'restricted':
      if (age >= 18) {
        print('Access granted to restricted area');
      } else {
        print('Restricted area: Adult supervision required');
      }
      break;
    default:
      print('Invalid area selection');
  }
}
