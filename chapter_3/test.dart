import 'enum_2/builder_2.dart';
import 'enum_2/instrument_type.dart';
import 'enum_2/style.dart';
import 'enum_2/wood_2.dart';
import 'instrument.dart';
import 'instrument_spec.dart';
import 'inventory_2.dart';
import './enum_2/type_2.dart';

void main() {
  final Inventory2 inventory2 = Inventory2();
  initInventory(inventory2);
  List<InstrumentSpec> properties = [
    InstrumentSpec({
      // 'instrumentType': InstrumentType.Guitar.display,
      'builder': InstrumentBuilder.Collings.displayName,
      'model': 'CJ',
      'type': Type.Acoustic.displayName,
      'backWood': InstrumentWood.IndianRosewood.displayName,
      'frontWood': InstrumentWood.Sitkam.displayName,
    }),
    InstrumentSpec({
      'instrumentType': InstrumentType.Mandolin.display,
      'builder': InstrumentBuilder.Gibson.displayName,
      'model': 'F5-G',
      'type': Type.Mandolin.displayName,
      'backWood': InstrumentWood.Maple.displayName,
      'frontWood': InstrumentWood.Maple.displayName,
      'style': MandolinStyle.F.displayName,
    }),
    InstrumentSpec({
      'instrumentType': InstrumentType.Banjo.display,
      'builder': InstrumentBuilder.Gibson.displayName,
      'model': 'Mastertone',
      'type': Type.Electric.displayName,
      'backWood': InstrumentWood.Maple.displayName,
    })
  ];

  // print(properties);

  final List<Instrument> test = [];

  for (var element in properties) {
    test.addAll(inventory2.search(element));
  }
  if (test.isEmpty) {
    print('Not Found for spec: $test');
  } else {
    print('You might like these instruments:');

    for (var i = 0; i < test.length; i++) {
      final element = test[i];
      final properties = element.getSpec.getProperties;

      String result =
          'We have a ${properties['instrumentType']} with the following properties:';

      properties.forEach((key, value) {
        if (value != null && key != 'instrumentType') {
          result += '\n  $key: $value';
        }
      });

      print('$result\n');
      print(
          'You have this ${properties['instrumentType']} for \$${element.getPrice}');
      print('----');
    }
  }
}

void initInventory(final Inventory2 inventory) {
  // Adding Guitars
  inventory.addInstrument(
    serialNumber: '11277',
    price: 3999.95,
    spec: InstrumentSpec({
      'instrumentType': InstrumentType.Guitar.display,
      'builder': InstrumentBuilder.Collings.displayName,
      'model': 'CJ',
      'type': Type.Acoustic.displayName,
      'backWood': InstrumentWood.IndianRosewood.displayName,
      'frontWood': InstrumentWood.Sitkam.displayName,
      'numStrings': 5
    }),
  );

  inventory.addInstrument(
    serialNumber: 'V95693',
    price: 1499.95,
    spec: InstrumentSpec({
      'instrumentType': InstrumentType.Guitar.display,
      'builder': InstrumentBuilder.Fender.displayName,
      'model': 'Stratocastor',
      'type': Type.Electric.displayName,
      'backWood': InstrumentWood.Alder.displayName,
      'frontWood': InstrumentWood.Alder.displayName,
    }),
  );

  inventory.addInstrument(
    serialNumber: 'G12345',
    price: 1999.99,
    spec: InstrumentSpec({
      'instrumentType': InstrumentType.Guitar.display,
      'builder': InstrumentBuilder.Martin.displayName,
      'model': 'D-28',
      'type': Type.Acoustic.displayName,
      'backWood': InstrumentWood.Mahogany.displayName,
      'frontWood': InstrumentWood.Sitkam.displayName,
    }),
  );

  inventory.addInstrument(
    serialNumber: 'T78901',
    price: 2500.00,
    spec: InstrumentSpec({
      'instrumentType': InstrumentType.Guitar.display,
      'builder': InstrumentBuilder.Collings.displayName,
      'model': '814ce',
      'type': Type.Acoustic.displayName,
      'backWood': InstrumentWood.Cedar.displayName,
      'frontWood': InstrumentWood.Sitkam.displayName,
    }),
  );

  inventory.addInstrument(
    serialNumber: 'G67890',
    price: 2999.00,
    spec: InstrumentSpec({
      'instrumentType': InstrumentType.Guitar.display,
      'builder': InstrumentBuilder.Gibson.displayName,
      'model': 'Les Paul Standard',
      'type': Type.Electric.displayName,
      'backWood': InstrumentWood.Maple.displayName,
      'frontWood': InstrumentWood.Maple.displayName,
    }),
  );

  // Adding Mandolins
  inventory.addInstrument(
    serialNumber: '9019920',
    price: 5495.99,
    spec: InstrumentSpec({
      'instrumentType': InstrumentType.Mandolin.display,
      'builder': InstrumentBuilder.Gibson.displayName,
      'model': 'F5-G',
      'type': Type.Mandolin.displayName,
      'backWood': InstrumentWood.Maple.displayName,
      'frontWood': InstrumentWood.Maple.displayName,
      'style': MandolinStyle.F.displayName,
    }),
  );

  inventory.addInstrument(
    serialNumber: '8900231',
    price: 2100.00,
    spec: InstrumentSpec({
      'instrumentType': InstrumentType.Mandolin.display,
      'builder': InstrumentBuilder.Gibson.displayName,
      'model': 'A-9',
      'type': Type.Mandolin.displayName,
      'backWood': InstrumentWood.Mahogany.displayName,
      'frontWood': InstrumentWood.Mahogany.displayName,
      'style': MandolinStyle.A.displayName,
    }),
  );

  // Adding Banjos
  inventory.addInstrument(
    serialNumber: 'B56789',
    price: 1200.00,
    spec: InstrumentSpec({
      'instrumentType': InstrumentType.Banjo.display,
      'builder': InstrumentBuilder.Martin.displayName,
      'model': 'Sierra',
      'type': Type.Mandolin.displayName,
      'backWood': InstrumentWood.Mahogany.displayName,
      'frontWood': InstrumentWood.Mahogany.displayName,
    }),
  );

  inventory.addInstrument(
    serialNumber: 'B23456',
    price: 800.00,
    spec: InstrumentSpec({
      'instrumentType': InstrumentType.Banjo.display,
      'builder': InstrumentBuilder.Gibson.displayName,
      'model': 'Mastertone',
      'type': Type.Electric.displayName,
      'backWood': InstrumentWood.Maple.displayName,
      // 'frontWood': InstrumentWood.Maple.displayName,
    }),
  );

  // Adding Violins
  inventory.addInstrument(
    serialNumber: 'V123456',
    price: 2500.00,
    spec: InstrumentSpec({
      'instrumentType': InstrumentType.Fiddle.display,
      'builder': InstrumentBuilder.Fender.displayName,
      'model': 'Guarneri',
      'type': Type.Acoustic.displayName,
      'backWood': InstrumentWood.Maple.displayName,
      'frontWood': InstrumentWood.Maple.displayName,
    }),
  );

  inventory.addInstrument(
    serialNumber: 'V98765',
    price: 1800.00,
    spec: InstrumentSpec({
      'instrumentType': InstrumentType.Bass.display,
      'builder': InstrumentBuilder.Martin.displayName,
      'model': 'Model 5',
      'type': Type.Mandolin.displayName,
      'backWood': InstrumentWood.Maple.displayName,
      'frontWood': InstrumentWood.BrazilianRosewood.displayName,
    }),
  );
}
