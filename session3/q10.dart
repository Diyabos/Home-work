/**
 Question 18
 Write a Dart program that reads environment variables from a map.
 If a value is null, replace it with a default.
 Print values in uppercase, and display 'Prod ready'
 or 'Non-prod' depending on conditions.
 */

void main() {
  // Simulated environment variables
  Map<String, String?> env = {
    'APP_NAME': 'myApp',
    'ENV': 'prod',
    'DEBUG': null,
  };

  // Read values with defaults (null safety)
  String appName = env['APP_NAME']?.toUpperCase() ?? 'UNKNOWN_APP';
  String environment = env['ENV']?.toUpperCase() ?? 'DEV';
  String debug = env['DEBUG']?.toUpperCase() ?? 'FALSE';

  // Print environment values
  print('APP_NAME: $appName');
  print('ENVIRONMENT: $environment');
  print('DEBUG: $debug');

  // Environment check
  bool isProdReady = environment == 'PROD' && debug == 'FALSE';

  if (isProdReady) {
    print('Prod ready');
  } else {
    print('Non-prod');
  }
}
