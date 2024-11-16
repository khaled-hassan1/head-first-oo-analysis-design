import './instrument.dart';
import './mandolin_spec.dart';

class Mandolin extends Instrument {
  Mandolin(
    super.instrumentSpec,
    super.serialNumber,
    super.price,
  );

  @override
  String toString() {
    final MandolinSpec spec = getSpec as MandolinSpec;
    return 'Mandolin Details:\n'
        'Serial Number: ${getSerialNumber}\n'
        'Builder: ${spec.getBuilder}\n'
        'Model: ${spec.getModel}\n'
        'Style: ${spec.getStyle}\n'
        'Type: ${spec.getType}\n'
        'Back Wood: ${spec.getBackWood}\n'
        'Front Wood: ${spec.getFrontWood}\n'
        'Price: \$$getPrice';
  }
}
