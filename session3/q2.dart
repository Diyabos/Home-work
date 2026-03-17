/**
 Create a Dart program that builds a map of country codes
 Print the value for 'EG', add a new entry'QA': 'Qatar',
 print the total length, and check if 'JO' exists—if not, print 'Jordan missing
 */
void main() {
  //build a map of country codes
  Map<String, String> countryCodes = {
    'EG': 'Egypt',
    'SU': 'Sudan',
    'SA': 'Saudia Arabia',
  };
  //Print the value for 'EG'
  print(countryCodes['EG']);
  //Add a new entry'QA': 'Qatar',
  countryCodes['QA'] = 'Qatar';
  //print the total length
  print(countryCodes.entries.length);
  //check if JO exist
  if (countryCodes.containsKey('JO')) {
    print('Jorden is exist');
  } else {
    print('Jordan is missing');
  }
}
