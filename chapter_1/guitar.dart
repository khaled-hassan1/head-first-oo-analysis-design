import 'guitar_spec.dart';

class Guitar {
  final String serialNumber;
  final double price;
  final GuitarSpec spec;

  const Guitar({
    required this.serialNumber,
    required this.price,
    required this.spec,
  });

  String get getSerialNumber => serialNumber;
  GuitarSpec get guitarSpec => spec;
  double get getPrice => price;

  @override
  String toString() {
    return 'Guitar Details:\n'
        'Serial Number: $serialNumber\n'
        'Builder: ${spec.builder}\n'
        'Model: ${spec.model}\n'
        'Type: ${spec.type}\n'
        'Back Wood: ${spec.backWood}\n'
        'Front Wood: ${spec.frontWood}\n'
        'Price: \$$price\n'
        // 'Number of Strings: ${spec.numStrings}'
        ;
  }
}
