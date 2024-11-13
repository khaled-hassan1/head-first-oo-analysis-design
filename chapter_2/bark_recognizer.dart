import './dog_door.dart';

class BarkRecognizer {
  final DogDoor door;

  const BarkRecognizer({required this.door});

  void recognizer(final String bark) {
    print('\tBarkRecognizer: Heard a "$bark"');
    door.open();
  }
}
