import 'unit.dart';

class UnitGroup {
  final Map<int, Unit> _units;

  // Constructor that takes a list of units
  UnitGroup(List<Unit> unitList)
      : _units = {
          for (Unit unit in unitList) unit.getId: unit,
        };

  // Default constructor with an empty list
  UnitGroup.empty() : _units = {};

  // Add a unit to the group
  void addUnit(Unit unit) {
    _units[unit.getId] = unit;
  }

  // Remove a unit by ID
  void removeUnitById(int id) {
    _units.remove(id);
  }

  // Remove a unit by instance
  void removeUnit(Unit unit) {
    removeUnitById(unit.getId);
  }

  // Get a unit by ID
  Unit? getUnit(int id) {
    return _units[id];
  }

  // Get a list of all units
  List<Unit> getUnits() {
    return _units.values.toList();
  }
}
