import './chapter_3/inventory_2.dart';
import 'chapter_3/enum_2/builder_2.dart';
import 'chapter_3/enum_2/style.dart';
import 'chapter_3/enum_2/type_2.dart';
import 'chapter_3/enum_2/wood_2.dart';
import 'chapter_3/guitar_2.dart';
import 'chapter_3/guitar_spec_2.dart';
import 'chapter_3/instrument.dart';
import 'chapter_3/instrument_spec.dart';
import 'chapter_3/mandolin.dart';
import 'chapter_3/mandolin_spec.dart';

void main() {
  final List<InstrumentSpec> specs = [
    MandolinSpec(
      MandolinStyle.A,
      InstrumentBuilder.Fender,
      InstrumentType.Acoustic,
      InstrumentWood.Alder,
      InstrumentWood.Alder,
      'model2',
    ),
    GuitarSpec2(
      4,
      builder: InstrumentBuilder.Fender,
      model: 'model3',
      type: InstrumentType.Acoustic,
      backWood: InstrumentWood.Alder,
      frontWood: InstrumentWood.Alder,
    ),
  ];

  final Inventory2 inventory2 = Inventory2();
  initInventory(inventory2);

  if (specs.isEmpty) {
    print('Sorry, Inventory is Empty.');
    return;
  }

  for (final InstrumentSpec spec in specs) {
    final List<Instrument> test = inventory2.search(spec);
    if (test.isEmpty) {
      print('Not Found for spec: $spec');
    } else {
      print('It\'s here for spec: $spec');
      test.forEach(print);
    }
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

  final List<Instrument> instruments = [
    Mandolin(spec1, 'No.Mandolin.1', 1000.0),
    Guitar2(spec2, 'No.Guitar.2', 2000.0),
    Guitar2(spec3, 'No.Guitar.3', 3000.0),
  ];

  // Add instruments to inventory
  for (final instrument in instruments) {
    inventory.addInstrument(
      price: instrument.getPrice!,
      serialNumber: instrument.getSerialNumber,
      spec: instrument.getSpec,
    );
  }
}
