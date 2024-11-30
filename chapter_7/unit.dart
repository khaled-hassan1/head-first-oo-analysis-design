import 'weapon.dart';

class Unit {
  String? type;
  final int id;
  String? name;
  List<Weapon>? weapons;
  Map<String, dynamic>? properties;

  Unit(this.id);

  // Getter for type
  String? getType() => type;
  int get getId=>id;

  // Setter for type
  void setType(String type) {
    this.type = type;
  }

  // Getter for name
  String? getName() => name;

  // Setter for name
  void setName(String name) {
    this.name = name;
  }

  // Getter for weapons
  List<Weapon>? getWeapons() => weapons;

  // Method to add a weapon
  void addWeapon(Weapon weapon) {
    weapons ??= []; // Initialize if null
    weapons!.add(weapon);
  }

  // Setter for properties
  void setProperty(String property, dynamic value) {
    properties ??= {}; // Initialize if null
    properties![property] = value;
  }

  // Getter for a specific property
  dynamic getProperty(String property) {
    return properties?[property];
  }
}
