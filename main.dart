import 'chapter_1/enum/builder.dart';
import 'chapter_1/enum/type.dart';
import 'chapter_1/enum/wood.dart';
import 'chapter_1/guitar.dart';
import 'chapter_1/guitar_spec.dart';
import 'chapter_1/inventory.dart';

void main() {
  final GuitarSpec spec = GuitarSpec(
    builder: GuitarBuilder.Fender.displayName,
    model: 'qmodel2',
    type: GuitarType.Electric.displayName,
    backWood: Wood.Alder.displayName,
    frontWood: Wood.Alder.displayName,
    numStrings: 11,
  );

  final Inventory inventory = Inventory();
  initInventory(inventory);
  final List<Guitar>? test = inventory.searchGuitar(spec);
  if (test != null && test.isNotEmpty) {
    print('It\'s here');
    test.forEach(print);
  } else {
    print('Not Found');
  }
}

void initInventory(Inventory inventory) {
  final GuitarSpec spec1 = GuitarSpec(
    builder: GuitarBuilder.Fender.displayName,
    model: 'model',
    type: GuitarType.Electric.displayName,
    backWood: Wood.Alder.displayName,
    frontWood: Wood.Alder.displayName,
    numStrings: 12,
  );

  final GuitarSpec spec2 = GuitarSpec(
      builder: GuitarBuilder.Fender.displayName,
      model: 'model2',
      type: GuitarType.Electric.displayName,
      backWood: Wood.Alder.displayName,
      frontWood: Wood.Alder.displayName,
      numStrings: 11);

  final GuitarSpec spec3 = GuitarSpec(
      builder: GuitarBuilder.Gibson.displayName,
      model: 'model3',
      type: GuitarType.Acoustic.displayName,
      backWood: Wood.BrazilianRosewood.displayName,
      frontWood: Wood.Maple.displayName,
      numStrings: 10);

  final List<Guitar> list = [
    Guitar(serialNumber: 'serialNumber1', spec: spec1, price: 1000.0),
    Guitar(serialNumber: 'serialNumber2', spec: spec2, price: 2000.0),
    Guitar(serialNumber: 'serialNumber3', spec: spec3, price: 3000.0)
  ];
  for (final Guitar guitar in list) {
    inventory.addGuiter(guitar);
  }
}
