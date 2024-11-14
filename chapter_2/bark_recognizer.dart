import './dog_door.dart';
import 'bark.dart';

class BarkRecognizer {
  final DogDoor door;

  const BarkRecognizer({required this.door});

  void recognizer(final Bark bark) {
    print('\tBarkRecognizer: Heard a "${bark.getSound}"');
    final List<Bark> getAllowedBarks = door.getAllowedBark;
    for (Bark barks in getAllowedBarks) {
      if (barks.equels(bark)) {
        door.open();
        return;
      }
    }
    print('This dog is not allowed');
  }
}
