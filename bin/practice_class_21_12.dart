import 'dart:io';

void main(List<String> args) {
  // task1();
  task2();
}

void task2() {
  List<Person> persons = [];
  stdout.write("Введите имя первого студента: ");
  Student student1 = Student(stdin.readLineSync().toString());
  stdout.write("\nВведите имя второго студента: ");
  Student student2 = Student(stdin.readLineSync().toString());
  stdout.write("\nВведите имя Учителя: ");
  Teacher teacher = Teacher(stdin.readLineSync().toString());

  persons.add(student1);
  persons.add(student2);
  persons.add(teacher);

  student1.study();
  teacher.explanation();
}

class Person {
  final String name;

  Person(this.name);
}

class Student extends Person {
  Student(super.Name);

  void study() {
    print("студент учится");
  }
}

class Teacher extends Person {
  Teacher(super.Name);

  void explanation() {
    print("учитель объясняет.");
  }
}

void task1() {
  Bus b = Bus(maxSpeed: 1, mileAge: 2);
  MiniBus b2 = MiniBus(maxSpeed: 1, mileAge: 2);
  print(b2.seatingCapacity);
  print(b2.color);
  print(b2.fare());
}

class Vehicle {
  final int maxSpeed, mileAge, seatingCapacity;
  String color;
  Vehicle(
      {required this.maxSpeed,
      required this.mileAge,
      required this.seatingCapacity,
      this.color = "White"});

  double fare() {
    return seatingCapacity * 100;
  }
}

class Scooter extends Vehicle {
  Scooter(
      {required super.maxSpeed,
      required super.mileAge,
      required super.seatingCapacity});
}

class Bus extends Vehicle {
  Bus({
    required super.maxSpeed,
    required super.mileAge,
  }) : super(seatingCapacity: 50);
}

class MiniBus extends Vehicle {
  MiniBus({
    required super.maxSpeed,
    required super.mileAge,
  }) : super(seatingCapacity: 20);

  @override
  double fare() {
    return super.fare() * 1.1;
  }
}
