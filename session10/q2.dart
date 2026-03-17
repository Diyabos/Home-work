import 'dart:io';

import 'DeliveryApp.dart';

/**
 Food Delivery App – Orders & Menu
 Imagine you are building a food delivery app.-
 The app has a menu of food items (each with a name, price,
  and category like "Pizza" or "Drinks").- A user can add
   multiple items to an order.- The app should calculate the
    total price of the order
 */
void main() {
  // Sample Menu
  List<FoodItem> menu = [
    FoodItem("Margherita Pizza", 8.99, "Pizza"),
    FoodItem("Pepperoni Pizza", 10.99, "Pizza"),
    FoodItem("Coca Cola", 1.99, "Drinks"),
    FoodItem("Orange Juice", 2.49, "Drinks"),
    FoodItem("Burger", 6.49, "Fast Food"),
  ];

  Order order = Order();
  bool running = true;

  while (running) {
    print("===== Food Delivery App =====");
    print("1. View Menu");
    print("2. Add Item to Order");
    print("3. View Order");
    print("4. Exit");
    stdout.write("Choose an option: ");

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        print("\n===== Menu =====");
        for (int i = 0; i < menu.length; i++) {
          print("${i + 1}. ${menu[i]}");
        }
        print("");
        break;

      case '2':
        stdout.write("Enter item number to add: ");
        String? input = stdin.readLineSync();
        int? index = int.tryParse(input ?? "");

        if (index != null && index > 0 && index <= menu.length) {
          order.addItem(menu[index - 1]);
        } else {
          print("Invalid selection.\n");
        }
        break;

      case '3':
        order.showOrder();
        break;

      case '4':
        running = false;
        print("Thank you for using the app!");
        break;

      default:
        print("Invalid option. Try again.\n");
    }
  }
}
