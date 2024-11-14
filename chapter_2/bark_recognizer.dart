import './dog_door.dart';
import 'bark.dart';

class BarkRecognizer {
  final DogDoor door;

  const BarkRecognizer({required this.door});

  void recognize(Bark bark) {
    print('\tBarkRecognizer: Heard a "${bark.getSound}"');
    final List<Bark> allowedBarks = door.getAllowedBark;
    for (Bark allowedBark in allowedBarks) {
      if (allowedBark.equals(bark)) {
        door.open();
        return;
      }
    }
    print('This dog is not allowed');
  }
}
