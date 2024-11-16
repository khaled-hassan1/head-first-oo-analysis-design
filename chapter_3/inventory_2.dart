import './guitar_2.dart';
import './guitar_spec_2.dart';
import './instrument.dart';
import './instrument_spec.dart';
import './mandolin.dart';
import './mandolin_spec.dart';

class Inventory2 {
  final List<Instrument> _instrument;

  Inventory2({List<Instrument>? instrument}) : _instrument = instrument ?? [];

  void addInstrument(
      {required final String serialNumber,
      required final double price,
      required final InstrumentSpec spec}) {
    Instrument? instrument;

    if (spec is GuitarSpec2) {
      instrument = Guitar2(spec, serialNumber, price);
    } else if (spec is MandolinSpec) {
      instrument = Mandolin(spec, serialNumber, price);
    }
    _instrument.add(instrument!);
  }

  Instrument? getInstrument(final String serialNumber) {
    for (Instrument instrument in _instrument) {
      if (instrument.getSerialNumber == serialNumber) {
        return instrument;
      }
    }
    return null;
  }

  List<Instrument> search(final InstrumentSpec searchSpec) {
    List<Instrument> matchingInstruments = [];
    for (final Instrument guitar in _instrument) {
      if (guitar.getSpec.matches(searchSpec)) {
        matchingInstruments.add(guitar);
      }
    }
    return matchingInstruments;
  }
}
