void main() {
  Car fusca = new Car(drive: slowDrive);
  fusca.drive();

  fusca.drive = fastDrive;
  fusca.drive();
}

class Car {
  Car({required this.drive});

  Function drive;
}

void slowDrive() {
  print("driving slowly...\n");
}

void fastDrive() {
  print("driving super fast...\n");
}
