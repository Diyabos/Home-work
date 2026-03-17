/**
 Q2
 Create a program that stores country codes and names.
 Start with: EG → Egypt, SA → Saudi
 Arabia, AE → UAE. Add QA → Qatar and then print 
 the name of the country with the code EG
 */
void main() {
  //creat program that store country codes
  Map<String, String> countryCodes = {
    "EG": "Egypt",
    "SA": "Saudi ",
    "AE": "UAE",
  };
  // Add QA → Qatar to the map
  countryCodes["QA"] = "Qatar";
  //the print statment of EG
  print(countryCodes["EG"]);
}
