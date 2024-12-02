// Case Study: Rental Service
// Design a rental system for cars and bikes. Include:
// A base class Vehicle with fields like id, brand, and rentalPrice.
// Subclasses Car and Bike with additional fields (e.g., seats for Car, gearType for Bike).
// A RentalService class with methods to add, list, and rent vehicles.
// Ensure the system is extendable for future types of vehicles.

void main(List<String> args) {
  final service = RentalService();

  // Adding vehicles
  service.addVehicle(Car(id: "C1", brand: "Toyota", rentalPrice: 50, seats: 4));
  service.addVehicle(Car(id: "C2", brand: "Ford", rentalPrice: 70, seats: 5));
  service.addVehicle(
      Bike(id: "B1", brand: "Yamaha", rentalPrice: 30, gearType: "Manual"));
  service.addVehicle(
      Bike(id: "B2", brand: "Harley", rentalPrice: 40, gearType: "Automatic"));

  // Listing available vehicles
  service.listAvailableVehicles();

  // Renting a vehicle
  service.rentVehicle("C1");
  service.rentVehicle("B1");

  // Listing available vehicles again
  service.listAvailableVehicles();

  // Returning a vehicle
  service.returnVehicle("C1");

  // Listing available vehicles after return
  service.listAvailableVehicles();
}

class Vehicle {
  final String _id, _brand;
  final double _rentalPrice;
  bool isRented = false;

  Vehicle(
      {required String id, required String brand, required double rentalPrice})
      : _rentalPrice = rentalPrice,
        _brand = brand,
        _id = id;

  String get id => _id;
  String get brand => _brand;
  double get rentalPrice => _rentalPrice;

  void displayDetails() {}
}

class Car extends Vehicle {
  final int seats;
  Car(
      {required super.id,
      required super.brand,
      required super.rentalPrice,
      required this.seats});

  @override
  void displayDetails() {
    print(
        "Car: $brand, Seats: $seats, Rental Price: \$${rentalPrice.toStringAsFixed(2)}");
  }
}

class Bike extends Vehicle {
  final String gearType;
  Bike(
      {required super.id,
      required super.brand,
      required super.rentalPrice,
      required this.gearType});

  @override
  void displayDetails() {
    print(
        "Bike: $brand, Gear Type: $gearType, Rental Price: \$${rentalPrice.toStringAsFixed(2)}");
  }
}

class RentalService {
  List<Vehicle> _vehicles = [];

  void addVehicle(Vehicle vehicle) {
    _vehicles.add(vehicle);
  }

  void listAvailableVehicles() {
    print("\nAvailable Vehicles:");
    for (Vehicle vehicle in _vehicles) {
      if (!vehicle.isRented) {
        vehicle.displayDetails();
      }
    }
  }

  Vehicle? rentVehicle(String id) {
    for (Vehicle vehicle in _vehicles) {
      if (vehicle.id == id && !vehicle.isRented) {
        vehicle.isRented = true;
        print("Vehicle rented successfully: $id");

        return vehicle;
      }
    }
    print("Vehicle not available for rent: $id");
    return null;
  }

  void returnVehicle(String id) {
    for (Vehicle vehicle in _vehicles) {
      if (vehicle.id == id && vehicle.isRented) {
        vehicle.isRented = false;
        print("Vehicle returned successfully: $id");
        return;
      }
    }
    print("Vehicle not found or not rented: $id");
  }
}
