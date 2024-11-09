enum Wood {
  IndianRosewood,
  BrazilianRosewood,
  Mahogany,
  Maple,
  Cocobolo,
  Cedar,
  Adirondack,
  Alder,
  Sitkam,
}

extension WoodExtension on Wood {
  String get displayName {
    switch (this) {
      case Wood.IndianRosewood:
        return 'Indian Rosewood';
      case Wood.BrazilianRosewood:
        return 'Brazilian Rosewood';
      case Wood.Mahogany:
        return 'Mahogany';
      case Wood.Maple:
        return 'Maple';
      case Wood.Cocobolo:
        return 'Cocobolo';
      case Wood.Cedar:
        return 'Cedar';
      case Wood.Adirondack:
        return 'Adirondack';
      case Wood.Alder:
        return 'Alder';
      case Wood.Sitkam:
        return 'Sitkam';
    }
  }
}
