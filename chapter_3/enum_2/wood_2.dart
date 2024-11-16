enum InstrumentWood {
  IndianRosewood,
  BrazilianRosewood,
  Mahogany,
  Maple,
  Cocobolo,
  Cedar,
  Adirondack,
  Alder,
  Sitkam;

  
}

extension InstrumentExtension on InstrumentWood {
  String get displayName {
    switch (this) {
      case InstrumentWood.IndianRosewood:
        return 'Indian Rosewood';
      case InstrumentWood.BrazilianRosewood:
        return 'Brazilian Rosewood';
      case InstrumentWood.Mahogany:
        return 'Mahogany';
      case InstrumentWood.Maple:
        return 'Maple';
      case InstrumentWood.Cocobolo:
        return 'Cocobolo';
      case InstrumentWood.Cedar:
        return 'Cedar';
      case InstrumentWood.Adirondack:
        return 'Adirondack';
      case InstrumentWood.Alder:
        return 'Alder';
      case InstrumentWood.Sitkam:
        return 'Sitkam';
    }
  }
}
