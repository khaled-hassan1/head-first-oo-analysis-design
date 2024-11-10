import 'dart:async';

import 'dog_door.dart';

class Remote {
  DogDoor door;

  Remote({required this.door});

  void pressButton() {
    print('Pressing the remote control.');
    if (door.isOpen) {
      door.close();
    } else {
      door.open();
      Future.delayed(Duration(seconds: 3), door.close);
    }
  }
}
