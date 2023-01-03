import 'dart:ffi';
import 'dart:io';
import 'dart:math';

import 'package:test/test.dart';

void main(List<String> args) {
  task1();
  task2();
  task3();
  task4();
}

void task4() {
  print("Алгоритм Луна");
  String s = stdin.readLineSync().toString(), clean = '';
  for (var e in s.split('')) {
    if (int.tryParse(e) != null) {
      clean += e;
    }
  }
  print(clean);
  int sum = 0, tmp;
  for (int i = 0; i < clean.length; i++) {
    tmp = int.parse(clean[i]);
    if (i.isEven) {
      tmp *= 2;
      if (tmp > 9) {
        tmp -= 9;
      }
    }
    sum += tmp;
  }
  print(sum);

  if (sum % 10 == 0) {
    print("Этот номер действителен!");
  } else {
    print("Этот номер НЕ действителен!");
  }
}

void task3() {
  print("Треугольник");
  int a, b, c;
  stdout.write("Введите a: ");
  a = int.parse(stdin.readLineSync().toString());
  stdout.write("Введите b: ");
  b = int.parse(stdin.readLineSync().toString());
  stdout.write("Введите c: ");
  c = int.parse(stdin.readLineSync().toString());

  if (a == b && b == c) {
    print("Треугольник является равносторонним");
  } else if (a == b || b == c || a == c) {
    print("Треугольник является равнобедренным");
  } else {
    print("Треугольник является разносторонним");
  }
}

void task2() {
  String s = stdin.readLineSync().toString(), res = "";
  s = s.toUpperCase().replaceAll('-', ' ');

  for (var e in s.split(' ')) {
    print(e);
    if (e.isNotEmpty) {
      res += e[0];
    }
  }
  print("$s - $res");
}

void task1() {
  print("Дартс");
  double x, y, result;
  stdout.write("Введите X: ");
  x = double.parse(stdin.readLineSync().toString());
  stdout.write("Введите Y: ");
  y = double.parse(stdin.readLineSync().toString());

  int point = 0;
  result = dartsHelper(x, y);
  if (result <= 1) {
    point = 10;
  } else if (result <= 5) {
    point = 5;
  } else if (result <= 10) {
    point = 1;
  }

  print("Point: $point");
}

double dartsHelper(double x, double y) {
  return sqrt(x * x + y * y);
}
