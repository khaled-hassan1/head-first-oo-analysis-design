import 'enum_2/builder_2.dart';
import 'enum_2/type_2.dart';
import 'enum_2/wood_2.dart';
import 'instrument.dart';
import 'instrument_spec.dart';

class Mandolin extends Instrument {
  Mandolin(
    super.instrumentSpec,
    super.serialNumber,
    super.price,
  );

  @override
  String toString() {
    final InstrumentSpec spec = getSpec;
    return 'Mandolin Details:\n'
        'Serial Number: ${getSerialNumber}\n'
        'Builder: ${spec.builder.displayName}\n'
        'Model: ${spec.model}\n'
        'Type: ${spec.type.displayName}\n'
        'Back Wood: ${spec.backWood.displayName}\n'
        'Front Wood: ${spec.frontWood.displayName}\n'
        'Price: \$$getPrice\n';
  }
}
