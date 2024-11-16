import './instrument_spec.dart';

abstract class Instrument {
  final String _serialNumber;
  double? _price;
  final InstrumentSpec _instrumentSpec;

  Instrument(this._instrumentSpec, this._serialNumber, this._price);

  String get getSerialNumber => _serialNumber;
  double? get getPrice => _price;
  InstrumentSpec get getSpec => _instrumentSpec;

  set setPrice(double newPrice) => _price = newPrice;
}
