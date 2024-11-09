void main(List<String> args) {
  Airplane airplane = Airplane();
  airplane.speed = 212;
  print(airplane.speed);

  Airplane airplane2 = Airplane();
  airplane2.setSpeed = 212;
  print(airplane2.getSpeed);
}

class Airplane {
  int? speed;

  get getSpeed => this.speed;

  set setSpeed(int? newSpeed) => this.speed = newSpeed! * 2;
}
// 1