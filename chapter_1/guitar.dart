class Guitar {
  final String serialNumber, builder, model, type, backWood, frontWood;
  final double price;

  Guitar({
    required this.serialNumber,
    required this.builder,
    required this.model,
    required this.type,
    required this.backWood,
    required this.frontWood,
    required this.price,
  });

  String get getSerialNumber => serialNumber;
  String get getBuilder => builder;
  String get getModel => model;
  String get getType => type;
  String get getBackWood => backWood;
  String get getFrontWood => frontWood;
  double get getPrice => price;
}
