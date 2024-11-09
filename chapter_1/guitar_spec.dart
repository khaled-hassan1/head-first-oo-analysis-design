class GuitarSpec {
  final String builder, model, type, backWood, frontWood;
  final int numStrings;

  GuitarSpec(
      {required this.numStrings,
      required this.builder,
      required this.model,
      required this.type,
      required this.backWood,
      required this.frontWood});

  String get getBuilder => builder;
  String get getModel => model;
  String get getType => type;
  String get getBackWood => backWood;
  String get getFrontWood => frontWood;
  int get getNumsStrings => numStrings;

  // Delegated comparison method
  bool matches(GuitarSpec otherSpec) {
    /// ''' Delegated comparison method '''
    if (builder != otherSpec.builder && otherSpec.builder.isNotEmpty) {
      return false;
    }
    if (model.toLowerCase() != otherSpec.model.toLowerCase() &&
        otherSpec.model.isNotEmpty) {
      return false;
    }
    if (type != otherSpec.type && otherSpec.type.isNotEmpty) {
      return false;
    }
    if (backWood != otherSpec.backWood && otherSpec.backWood.isNotEmpty) {
      return false;
    }
    if (frontWood != otherSpec.frontWood && otherSpec.frontWood.isNotEmpty) {
      return false;
    }
    return true;
  }
}
