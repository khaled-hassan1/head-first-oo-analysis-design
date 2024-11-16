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
        'Builder: ${spec.builder}\n'
        'Model: ${spec.model}\n'
        'Type: ${spec.type}\n'
        'Back Wood: ${spec.backWood}\n'
        'Front Wood: ${spec.frontWood}\n'
        'Price: \$$getPrice\n';
  }
}
