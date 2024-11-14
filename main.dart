import './chapter_2/dog_door.dart';
// import './chapter_2/remote.dart';
import './chapter_2/bark_recognizer.dart';
import './chapter_2/bark.dart';

void main(List<String> args) async {
  final DogDoor door = DogDoor();
  // final Remote remote = Remote(door: door);
  door.addAllowedBArk(Bark('rowlf'));
  door.addAllowedBArk(Bark('rooowlf'));
  door.addAllowedBArk(Bark('rawlf'));
  door.addAllowedBArk(Bark('woof'));
  final BarkRecognizer recognizer = BarkRecognizer(door: door);
  print('- Bruce start barking.');
  // remote.pressButton();
  recognizer.recognize(Bark('rawlf'));
  print('- Bruce has gone outside...');
  print('- Bruce all done...');
  await Future.delayed(const Duration(seconds: 3));
  print('...but he\'s stuck outside!');
  final Bark smallDogBark = Bark('yip');
  print('- A small dog starts barking...');
  recognizer.recognize(smallDogBark);
  print('- Bruce starts barking...');
  // print('...Gina grabs the remote contorl.');
  // remote.pressButton();
  recognizer.recognize(Bark('rooowlf'));
  print('-Fido\'s back inside...');
}
