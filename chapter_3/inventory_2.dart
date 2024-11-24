import './instrument.dart';
import './instrument_spec.dart';

class Inventory2 {
  final List<Instrument> _instruments;

  Inventory2({List<Instrument>? instrument}) : _instruments = instrument ?? [];

  void addInstrument(
      {required final String serialNumber,
      required final double price,
      required final InstrumentSpec spec}) {
    _instruments.add(Instrument(
      spec,
      serialNumber,
      price,
    ));
  }

  Instrument? getInstrument(final String serialNumber) {
    for (Instrument instrument in _instruments) {
      if (instrument.getSerialNumber == serialNumber) {
        return instrument;
      }
    }
    return null;
  }

  List<Instrument> search(final InstrumentSpec searchSpec) {
    List<Instrument> matchingInstruments = [];
    for (final Instrument guitar in _instruments) {
      if (guitar.getSpec.matches(searchSpec)) {
        matchingInstruments.add(guitar);
      }
    }
    return matchingInstruments;
  }
}
