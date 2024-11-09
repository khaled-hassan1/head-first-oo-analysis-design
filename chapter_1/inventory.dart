import 'guitar.dart';

class Inventory {
  final List<Guitar> guitars;

  Inventory({required this.guitars});

  void addGuiter(String serialNumber, String builder, String model, String type,
      String backWood, String frontWood, double price) {
    final Guitar guitar = Guitar(
        serialNumber: serialNumber,
        builder: builder,
        model: model,
        type: type,
        backWood: backWood,
        frontWood: frontWood,
        price: price);
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

  Guitar? searchGuiter(Guitar searchGuiter) {
    return null;
  }
}
