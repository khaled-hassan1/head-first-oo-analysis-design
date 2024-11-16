enum MandolinStyle { A, F }

extension MandolinStyleExtention on MandolinStyle {
  String get displayName {
    switch (this) {
      case MandolinStyle.A:
        return 'A';
      case MandolinStyle.F:
        return 'F';
    }
  }
}
