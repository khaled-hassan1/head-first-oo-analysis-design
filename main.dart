import './chapter_7/unit.dart';
import './chapter_7/unit_group.dart';

void main() {
  // Creating some units
  var unit1 = Unit(1);
  var unit2 = Unit(2);

  // Creating a UnitGroup with a list of units
  var group = UnitGroup([unit1, unit2]);

  // Adding a unit
  var unit3 = Unit(3);
  group.addUnit(unit3);

  // Retrieving and printing all units
  var units = group.getUnits();
  for (var unit in units) {
    print('Unit ID: ${unit.getId}');
  }

  // Removing a unit by ID
  group.removeUnitById(2);

  // Getting a specific unit
  var unit = group.getUnit(1);
  if (unit != null) {
    print('Retrieved Unit ID: ${unit.getId}');
  }
}
