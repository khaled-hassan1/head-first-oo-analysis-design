import './enum_2/builder_2.dart';
import './enum_2/type_2.dart';
import './enum_2/wood_2.dart';

abstract class InstrumentSpec {
  final String model;
  final InstrumentBuilder builder;
  final InstrumentType type;
  final InstrumentWood backWood, frontWood;
  final int? numStrings;

  InstrumentSpec(
    this.builder,
    this.type,
    this.backWood,
    this.frontWood,
    this.model,
    this.numStrings,
  );

  String get getModel => model;
  String get getBuilder => builder.name;
  String get getType => type.name;
  String get getBack => backWood.name;
  String get getFrontWood => frontWood.name;
  int? get get => numStrings;

  // Delegated comparison method
  bool matches(final InstrumentSpec otherSpec) {
    /// ''' Delegated comparison method ''' ///
    if (builder != otherSpec.builder && otherSpec.builder.name.isNotEmpty) {
      return false;
    }
    if (model.toLowerCase() != otherSpec.model.toLowerCase() &&
        otherSpec.model.isNotEmpty) {
      return false;
    }
    if (type != otherSpec.type && otherSpec.type.name.isNotEmpty) {
      return false;
    }
    if (backWood != otherSpec.backWood && otherSpec.backWood.name.isNotEmpty) {
      return false;
    }
    if (frontWood != otherSpec.frontWood &&
        otherSpec.frontWood.name.isNotEmpty) {
      return false;
    }
    return true;
  }
}
