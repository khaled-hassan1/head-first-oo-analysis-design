import './chapter_3/inventory_2.dart';
import 'chapter_3/enum_2/builder_2.dart';
import 'chapter_3/enum_2/type_2.dart';
import 'chapter_3/enum_2/wood_2.dart';
import 'chapter_3/guitar_2.dart';
import 'chapter_3/guitar_spec_2.dart';
import 'chapter_3/instrument.dart';

void main() {
  final GuitarSpec2 spec1 = GuitarSpec2(
    0,
    builder: InstrumentBuilder.Fender,
    model: 'model2',
    type: InstrumentType.Acoustic,
    backWood: InstrumentWood.Alder,
    frontWood: InstrumentWood.Alder,
  );
  final Inventory2 inventory2 = Inventory2();
  initInventory(inventory2);

  final List<Instrument>? test = inventory2.searchGuitar(spec1);
  if (test != null && test.isNotEmpty) {
    print('It\'s here');
    test.forEach(print);
  } else {
    print('Not Found');
  }
}

void initInventory(final Inventory2 inventory) {
  final GuitarSpec2 spec1 = GuitarSpec2(
    4,
    builder: InstrumentBuilder.Fender,
    model: 'model1',
    type: InstrumentType.Acoustic,
    backWood: InstrumentWood.Alder,
    frontWood: InstrumentWood.Alder,
  );

  final GuitarSpec2 spec2 = GuitarSpec2(
    0,
    builder: InstrumentBuilder.Fender,
    model: 'model2',
    type: InstrumentType.Acoustic,
    backWood: InstrumentWood.Alder,
    frontWood: InstrumentWood.Alder,
  );

  final GuitarSpec2 spec3 = GuitarSpec2(
    4,
    builder: InstrumentBuilder.Fender,
    model: 'model3',
    type: InstrumentType.Acoustic,
    backWood: InstrumentWood.Alder,
    frontWood: InstrumentWood.Alder,
  );
  final List<Guitar2> list = [
    Guitar2(spec1, 'No.1', 1000.0),
    Guitar2(spec2, 'No.2', 2000.0),
    Guitar2(spec3, 'No.3', 3000.0)
  ];
  for (final Guitar2 guitar in list) {
    inventory.addInstrument(
        price: guitar.getPrice!,
        serialNumber: guitar.getSerialNumber,
        spec: guitar.getSpec);
  }
}
