import './chapter_3/inventory_2.dart';
import 'chapter_3/enum_2/builder_2.dart';
import 'chapter_3/enum_2/style.dart';
import 'chapter_3/enum_2/type_2.dart';
import 'chapter_3/enum_2/wood_2.dart';
import 'chapter_3/guitar_2.dart';
import 'chapter_3/guitar_spec_2.dart';
import 'chapter_3/instrument.dart';
import 'chapter_3/mandolin.dart';
import 'chapter_3/mandolin_spec.dart';

void main() {
  final MandolinSpec spec1 = MandolinSpec(
    MandolinStyle.A,
    InstrumentBuilder.Fender,
    InstrumentType.Acoustic,
    InstrumentWood.Alder,
    InstrumentWood.Alder,
    'model2',
  );
  final Inventory2 inventory2 = Inventory2();
  initInventory(inventory2);

  final List<Instrument>? test = inventory2.search(spec1);
  if (test != null && test.isNotEmpty) {
    print('It\'s here');
    test.forEach(print);
  } else {
    print('Not Found');
  }
}

void initInventory(final Inventory2 inventory) {
  final MandolinSpec spec1 = MandolinSpec(
    MandolinStyle.A,
    InstrumentBuilder.Fender,
    InstrumentType.Acoustic,
    InstrumentWood.Alder,
    InstrumentWood.Alder,
    'model2',
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
  final List<Instrument> list = [
    Mandolin(spec1, 'No.Man.1', 1000.0),
    Guitar2(spec2, 'No.2', 2000.0),
    Guitar2(spec3, 'No.3', 3000.0)
  ];
  for (final Instrument guitar in list) {
    inventory.addInstrument(
        price: guitar.getPrice!,
        serialNumber: guitar.getSerialNumber,
        spec: guitar.getSpec);
  }
}
