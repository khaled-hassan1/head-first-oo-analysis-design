class Bark {
  final String _sound;

  const Bark(this._sound);

  String get getSound => _sound;

  bool equels(final Bark bark) {
    if (bark.getSound == _sound) {
      return true;
    } else {
      return false;
    }
  }
}
