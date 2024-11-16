enum InstrumentType {
  Acoustic,
  Electric,
}

extension InstrumentExtension on InstrumentType {
  String get displayName {
    switch (this) {
      case InstrumentType.Acoustic:
        return 'Acoustic';
      case InstrumentType.Electric:
        return 'Electric';
    }
  }
}
