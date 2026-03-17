class Vehicle {
  String _brand;
  double _year;
  double _fuelConsumptionInKm;
  double _fuelCapcity;
  Vehicle(
    this._brand,
    this._year,
    this._fuelConsumptionInKm,
    this._fuelCapcity,
  ) {
    if (_year < 1886) {
      throw Exception("year must be above 1886 , $_year is not vaild");
    }
  }
  double fuelConsumption(double distanceKm) {
    return 0;
  }

  bool trip(double needFuel) {
    return needFuel <= _fuelCapcity;
  }

  get brand => _brand;
  get year => _year;
}

class car extends Vehicle {
  double _carCapacity;
  car(
    super.brand,
    super.year,
    super.fuelCapcity,
    super.fuelConsumptionInKm,
    this._carCapacity,
  ) {
    if (_carCapacity < 0) {
      throw Exception(
        " the car fuelCapacity must be greater than 0 $_carCapacity",
      );
    }
  }
  @override
  double fuelConsumption(double distanceKm) {
    double neededFuel = 0;
    if (_carCapacity < 5) {
      neededFuel = distanceKm * _fuelConsumptionInKm;
    } else {
      neededFuel = distanceKm * _fuelConsumptionInKm * 1.5;
    }
    return neededFuel;
  }
}

class van extends Vehicle {
  double _vanCapacity;
  van(
    super.brand,
    super.year,
    super.fuelCapcity,
    super.fuelConsumptionInKm,
    this._vanCapacity,
  ) {
    if (_vanCapacity < 0) {
      throw Exception("passanger capicity is greater than 0, $_vanCapacity");
    }
  }
  @override
  double fuelConsumption(double distanceKm) {
    double neededFuel = 0;
    if (_vanCapacity < 10) {
      neededFuel = distanceKm * _fuelConsumptionInKm;
    } else {
      neededFuel = distanceKm * _fuelConsumptionInKm * 2;
    }
    return neededFuel;
  }
}
