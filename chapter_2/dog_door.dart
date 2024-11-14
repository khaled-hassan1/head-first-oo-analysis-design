import 'bark.dart';

class DogDoor {
  bool _isOpen = false;
  final List<Bark> _bark = [];

  bool get isOpen => _isOpen;

  void open() async {
    print('The dog door opends.');
    _isOpen = true;
    await Future.delayed(
      const Duration(seconds: 3),
      () {
        if (_isOpen) {
          close();
        }
      },
    );
  }

  void close() {
    print('The dog door closes.');
    _isOpen = false;
  }

  void addAllowedBArk(Bark bark) => _bark.add(bark);

  List<Bark> get getAllowedBark => _bark;
}
