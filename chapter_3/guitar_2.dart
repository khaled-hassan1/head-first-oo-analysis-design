import './enum_2/builder_2.dart';
import './enum_2/type_2.dart';
import './enum_2/wood_2.dart';
import './instrument.dart';
import './instrument_spec.dart';

class Guitar2 extends Instrument {
  Guitar2(
    super.instrumentSpec,
    super.serialNumber,
    super.price,
  );

  @override
  String toString() {
    final InstrumentSpec spec = getSpec;
    return 'Guitar Details:\n'
            'Serial Number: ${getSerialNumber}\n'
            'Builder: ${spec.builder.displayName}\n'
            'Model: ${spec.model}\n'
            'Type: ${spec.type.displayName}\n'
            'Back Wood: ${spec.backWood.displayName}\n'
            'Front Wood: ${spec.frontWood.displayName}\n'
            'Price: \$$getPrice\n'
        'Number of Strings: ${spec.numStrings}'
        ;
  }
}
