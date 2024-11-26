import 'tile.dart';
import 'unit.dart';

class Board {
  final int width, height;
  late List<List<Tile>> tiles;

  Board({required this.width, required this.height}) {
    _initialize();
  }

  void _initialize() {
    tiles = List.generate(width, (_) => List.generate(height, (_) => Tile()));
  }

  Tile getTile(int x, int y) {
    return tiles[x - 1][y - 1];
  }

  void addUnit(Unit unit, int x, int y) {
    final tile = getTile(x, y);
    tile.addUnit(unit);
  }

  void removeUnit(Unit unit, int x, int y) {
    final tile = getTile(x, y);
    tile.removeUnits(unit);
  }

  void removeUnits(int x, int y) {
    final tile = getTile(x, y);
    tile.removeUnits();
  }

  List<Unit> getUnits(int x, int y) {
    return getTile(x, y).unites;
  }
}
