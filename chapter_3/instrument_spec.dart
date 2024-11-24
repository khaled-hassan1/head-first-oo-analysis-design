class InstrumentSpec {
  final Map<String, dynamic> _properties;

  InstrumentSpec(this._properties);

  Map<String, dynamic> get getProperties => _properties;

  // Delegated comparison method
  bool matches(final InstrumentSpec otherSpec) {
    for (final key in otherSpec._properties.keys) {
      if (_properties.containsKey(key)) {
        if (_properties[key] != otherSpec._properties[key]) {
          return false; // Property mismatch
        }
      } else {
        return false; // Key not found
      }
    }
    return true; // All properties match
  }

  @override
  String toString() {
    return _properties.toString();
  }
}
