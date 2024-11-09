enum GuitarBuilder {
  Fender,
  Martin,
  Gibson,
  Collings,
  Olson,
  Ryan,
  PRS,
  Any,
}

extension GuitarTypeExtension on GuitarBuilder {
  String get displayName {
    switch (this) {
      case GuitarBuilder.Fender:
        return 'Fender';
      case GuitarBuilder.Martin:
        return 'Martin';
      case GuitarBuilder.Gibson:
        return 'Gibson';
      case GuitarBuilder.Collings:
        return 'Collings';
      case GuitarBuilder.Olson:
        return 'Olson';
      case GuitarBuilder.Ryan:
        return 'Ryan';
      case GuitarBuilder.PRS:
        return 'PRS';
      case GuitarBuilder.Any:
        return 'Any';
    }
  }
}
