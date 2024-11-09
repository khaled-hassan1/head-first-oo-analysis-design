enum GuitarType {
  Acoustic,
  Electric,
}

extension GuitarTypeExtension on GuitarType {
  String get displayName {
    switch (this) {
      case GuitarType.Acoustic:
        return 'Acoustic';
      case GuitarType.Electric:
        return 'Electric';
    }
  }
}
