enum Type {
  Acoustic,
  Electric, Mandolin,
}

extension InstrumentExtension on Type {
  String get displayName {
    switch (this) {
      case Type.Acoustic:
        return 'Acoustic';
      case Type.Electric:
        return 'Electric';
        case Type.Mandolin:
        return 'Mandolin';
    }
  }
}
