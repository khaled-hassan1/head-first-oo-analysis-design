class DogDoor {
  bool _open = false;

  bool get isOpen => _open;

  void open() {
    print('The dog door opends.');
    _open = true;
  }

  void close() {
    print('The dog door closes.');
    _open = false;
  }
}
