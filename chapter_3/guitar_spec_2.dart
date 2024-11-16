import './enum_2/builder_2.dart';
import './enum_2/type_2.dart';
import './enum_2/wood_2.dart';
import './instrument_spec.dart';

class GuitarSpec2 extends InstrumentSpec {
  final int _numStrings;

  GuitarSpec2(
    this._numStrings, {
    required InstrumentBuilder builder,
    required InstrumentType type,
    required InstrumentWood backWood,
    required InstrumentWood frontWood,
    required String model,
  }) : super(builder, type, backWood, frontWood, model, _numStrings);

  int get getNumsStrings => _numStrings;

  @override
  bool matches(InstrumentSpec otherSpec) {
    // Ensure the otherSpec is a GuitarSpec2
    if (otherSpec is! GuitarSpec2) {
      return false;
    }
    if (!super.matches(otherSpec)) {
      return false;
    }
    if (otherSpec.getnumStrings != _numStrings) {
      return false;
    }
    return true;
  }
}
