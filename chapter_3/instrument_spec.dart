import './enum_2/builder_2.dart';
import './enum_2/type_2.dart';
import './enum_2/wood_2.dart';

abstract class InstrumentSpec {
  final String _model;
  final InstrumentBuilder _builder;
  final InstrumentType _type;
  final InstrumentWood _backWood, _frontWood;
  final int? _numStrings;

  InstrumentSpec(
    this._builder,
    this._type,
    this._backWood,
    this._frontWood,
    this._model,
    this._numStrings,
  );

  String get getModel => _model;
  String get getBuilder => _builder.displayName;
  String get getType => _type.displayName;
  String get getBackWood => _backWood.displayName;
  String get getFrontWood => _frontWood.displayName;
  int? get getnumStrings => _numStrings;

  // Delegated comparison method
  bool matches(final InstrumentSpec otherSpec) {
    /// ''' Delegated comparison method ''' ///
    if (_builder != otherSpec._builder) {
      return false;
    }
    if (_model.toLowerCase() != otherSpec._model.toLowerCase()) {
      return false;
    }
    if (_type != otherSpec._type) {
      return false;
    }
    if (_backWood != otherSpec._backWood) {
      return false;
    }
    if (_frontWood != otherSpec._frontWood) {
      return false;
    }
    return true;
  }

  @override
  String toString() {
    return '$_model';
  }
}
