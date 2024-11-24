enum InstrumentType { Guitar, Banjo, Dobro, Fiddle, Bass, Mandolin }

extension InstrumentTypeEx on InstrumentType {
  String get display {
    switch (this) {
      case InstrumentType.Guitar:
        return 'Guitar';
      case InstrumentType.Banjo:
        return 'Banjo';
      case InstrumentType.Dobro:
        return 'Dobro';
      case InstrumentType.Fiddle:
        return 'Fiddle';
      case InstrumentType.Bass:
        return 'Bass';
      case InstrumentType.Mandolin:
        return 'Mandolin';
      default:
        return 'Unspecified';
    }
  }
}
