import './guitar.dart';
import './guitar_spec.dart';

class Inventory {
  final List<Guitar> guitars;

  Inventory({List<Guitar>? guitars}) : guitars = guitars ?? [];

  void addGuiter(Guitar addGuitar) {
    final GuitarSpec guitarSpec = GuitarSpec(
      builder: addGuitar.guitarSpec.builder,
      model: addGuitar.guitarSpec.model,
      type: addGuitar.guitarSpec.type,
      backWood: addGuitar.guitarSpec.backWood,
      frontWood: addGuitar.guitarSpec.frontWood,
      numStrings: addGuitar.spec.numStrings,
    );

    final Guitar guitar = Guitar(
      serialNumber: addGuitar.serialNumber,
      spec: guitarSpec,
      price: addGuitar.price,
    );
    guitars.add(guitar);
  }

  Guitar? getGuiter(String serialNumber) {
    for (Guitar guiter in guitars) {
      if (guiter.serialNumber == serialNumber) {
        return guiter;
      }
    }
    return null;
  }

  List<Guitar>? searchGuitar(GuitarSpec searchGuitar) {
    List<Guitar>? matchingGuitars = [];
    for (final Guitar guitar in guitars) {
      if (guitar.spec.matches(searchGuitar)) {
        matchingGuitars.add(guitar);
      }
    }
    return matchingGuitars;
  }
}
