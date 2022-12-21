import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  tast1();
  tast2();
  tast3();
  tast4();
}

class Base {}

class A {}

class B extends Base with A {}

void tast1() {
  print(
      "Сформировать из введенного числа обратное по порядку входящих в него цифр и вывести на экран. Например, если введено число 3486, то надо вывести число 6843.");
  String n = stdin.readLineSync()!;
  print(n.split('').reversed.join(''));
}

void tast2() {
  print(
      "================\nС клавиатуры вводится натуральное число. Найти его наибольшую цифру.");
  String n = stdin.readLineSync()!;
  print(n.split('').map(int.parse).toList().reduce(max));
}

void tast3() {
  print(
      "================\nНайти сумму n элементов следующего ряда чисел:\n 1 -0.5 0.25 -0.125 … \nКоличество элементов (n) вводится с клавиатуры.");
  double r = -2;
  int n = int.parse(stdin.readLineSync()!);
  double s = 0;
  for (int i = 0; i < n; i++) {
    r = (r / 2) * -1;
    print(r);
    s += r;
  }
  print(s);
}

void tast4() {
  print(
      "================\nВывести на экран столько элементов ряда Фибоначчи, сколько указал пользователь. Например, если на ввод поступило число 6, то вывод должен содержать шесть первых чисел ряда Фибоначчи: 1 2 3 5 8 13.");
  int prev = 1;
  int current = 1;
  int tmp = 0;
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; i++) {
    tmp = prev + current;
    print("$current");
    prev = current;
    current = tmp;
  }
}
