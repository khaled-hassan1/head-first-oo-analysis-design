import 'chapter_2/dog_door.dart';
import 'chapter_2/remote.dart';

void main(List<String> args) {
  DogDoor door= DogDoor();
  Remote remote = Remote(door: door);
  print('-Fido barks to go outside...');
  remote.pressButton();
  print('-Fido has gone outside...');
  // remote.pressButton();
  print('-Fido all done...');
  // remote.pressButton();
  print('-Fido\'s back inside...');
  // remote.pressButton();
}