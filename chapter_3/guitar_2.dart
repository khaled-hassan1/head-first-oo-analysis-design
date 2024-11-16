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
        'Builder: ${spec.getBuilder}\n'
        'Model: ${spec.getModel}\n'
        'Type: ${spec.getType}\n'
        'Back Wood: ${spec.getBackWood}\n'
        'Front Wood: ${spec.getFrontWood}\n'
        'Price: \$$getPrice\n'
        'Number of Strings: ${spec.getnumStrings}';
  }
}
