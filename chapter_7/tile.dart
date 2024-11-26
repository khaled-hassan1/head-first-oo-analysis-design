import './unit.dart';

class Tile {
  final List<Unit> _units;
  Tile() : _units = [];

  List<Unit> get unites => _units;

  void addUnit(Unit unit) {
    _units.add(unit);
  }

  void removeUnits([Unit? unit = null]) {
    _units.remove(unit);
  }
}
