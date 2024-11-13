import './chapter_2/dog_door.dart';
// import './chapter_2/remote.dart';
import './chapter_2/bark_recognizer.dart';

void main(List<String> args) async {
  final DogDoor door = DogDoor();
  // final Remote remote = Remote(door: door);
  final BarkRecognizer recognizer = BarkRecognizer(door: door);
  print('-Fido barks to go outside...');
  // remote.pressButton();
  recognizer.recognizer('Woof');
  print('-Fido has gone outside...');
  print('-Fido all done...');
  await Future.delayed(const Duration(seconds: 3));
  print('...but he\'s stuck outside!');
  print('\nFido starts barking...');
  // print('...Gina grabs the remote contorl.');
  // remote.pressButton();
  recognizer.recognizer('Woof');
  print('-Fido\'s back inside...');
}
