/*Question 15
Write a Dart program that simulates a simple router using
a switch statement on a string path ('/','/products', 
'/profile', or other). Handle each case with appropriate
 output, including maps and null safety where needed
*/

void main() {
  String path = '/products';

  // Simulated data for routes
  Map<String, String?> pages = {
    '/': 'Home Page',
    '/products': 'Products Page',
    '/profile': null, // profile not loaded yet
  };

  switch (path) {
    case '/':
      print(pages['/']);
      break;

    case '/products':
      print(pages['/products']);
      break;

    case '/profile':
      String message = pages['/profile'] ?? 'Profile data not available';
      print(message);
      break;

    default:
      print('404 - Page not found');
  }
}
