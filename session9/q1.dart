import 'dart:vmservice_io';

import 'q1Vehicle.dart';

/**
 Q1
Design an OOP model for planning trip fuel across multiple
 vehicle types.
Requirements:- Provide a general vehicle type with encapsulated
 core data (private fields) and validated constructors
(invalid → print an error; keep previous values).-
 Create at least two specialized vehicle types that inherit from
  the general type and introduce one private field each affecting
   fuel usage, with validation.- Define a fuel computation
    method in the general type; specialized types must override
     it with their own rule.- In a mixed collection of vehicles,
      given a list of trip distances, compute total fuel per
       vehicle and print
 which vehicles cannot complete the route under their own
 constraints (you define the constraint per type)
 */
void main() {
  List<Vehicle> vehicle = [
    car("toyota", 2022, 5, 10, 80),
    van("mercedez", 2020, 10, 30, 100),
  ];
  List<double> tripDistance = [100, 200, 300, 400, 500];
  double totalDistance = 0;
  for (double distance in tripDistance) {
    totalDistance += distance;
  }

  for (var vehicle in vehicle) {
    double fuelNeeded = vehicle.fuelConsumption(totalDistance);

    print("Vehicle: ${vehicle}");

    if (!vehicle.trip(totalDistance)) {
      print("Status: Can complete the route");
    } else {
      print("Status: Cannot complete the route");
    }
  }
}
