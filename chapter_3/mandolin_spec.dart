import 'enum_2/builder_2.dart';
import 'enum_2/style.dart';
import 'enum_2/type_2.dart';
import 'enum_2/wood_2.dart';
import 'instrument_spec.dart';

class MandolinSpec extends InstrumentSpec {
  final MandolinStyle _style;

  MandolinSpec(
    this._style,
    InstrumentBuilder builder,
    InstrumentType type,
    InstrumentWood backWood,
    InstrumentWood frontWood,
    String model,
  ) : super(
          builder,
          type,
          backWood,
          frontWood,
          model,
          null,
        );

  MandolinStyle get getStyle => _style;

  @override
  bool matches(InstrumentSpec otherSpec) {
    if (!super.matches(otherSpec)) {
      return false;
    }
    if (otherSpec is MandolinSpec) {
      if (otherSpec.getStyle.name != _style.name &&
          otherSpec.getStyle.name.isNotEmpty) {
        return false;
      }
    }
    return true;
  }
}
