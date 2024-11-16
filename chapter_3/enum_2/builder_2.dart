enum InstrumentBuilder {
  Fender,
  Martin,
  Gibson,
  Collings,
  Olson,
  Ryan,
  PRS,
  Any,
}

extension InstrumentExtension on InstrumentBuilder {
  String get displayName {
    switch (this) {
      case InstrumentBuilder.Fender:
        return 'Fender';
      case InstrumentBuilder.Martin:
        return 'Martin';
      case InstrumentBuilder.Gibson:
        return 'Gibson';
      case InstrumentBuilder.Collings:
        return 'Collings';
      case InstrumentBuilder.Olson:
        return 'Olson';
      case InstrumentBuilder.Ryan:
        return 'Ryan';
      case InstrumentBuilder.PRS:
        return 'PRS';
      case InstrumentBuilder.Any:
        return 'Any';
    }
  }
}
