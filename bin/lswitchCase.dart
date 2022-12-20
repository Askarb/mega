import 'dart:io';
import 'dart:math';

import 'dart_application_1.dart';

void main(List<String> arguments) {
  // LessonSwitch().task1();
  // LessonSwitch().task2();
  // LessonSwitch().task3();
  // LessonSwitch().task4();
  // LessonSwitch().task5();
  // LessonSwitch().task6();

  // BoldLesson().task1();
  // BoldLesson().task2();
  BoldLesson().task3();
}

class LessonSwitch extends Base {
  void task1() {
    this.printRunningTask(StackTrace.current.toString());
    stdout.write('day = ');
    int day = int.parse(stdin.readLineSync().toString());
    print([1, 2, 3, 3][(day - 1) ~/ 10]);
  }

  void task2() {
    this.printRunningTask(StackTrace.current.toString());
    stdout.write('month = ');
    int month = int.parse(stdin.readLineSync().toString());
    print("${['Зима', 'Весна', 'Лето', 'Осень'][((month + 1) ~/ 3) % 4]}");
  }

  void task3() {
    this.printRunningTask(StackTrace.current.toString());
    String str = "abbcde";
    switch (str[0]) {
      case 'a':
        {
          print("Да");
          break;
        }
      default:
        {
          print("Нет");
        }
    }
  }

  void task4() {
    this.printRunningTask(StackTrace.current.toString());
    String str = "12345";
    switch (str[0]) {
      case '1':
        {
          print("Да");
          break;
        }
      case '2':
        {
          print("Да");
          break;
        }
      case '3':
        {
          print("Да");
          break;
        }
      default:
        {
          print("Нет");
        }
    }
  }

  void task5() {
    this.printRunningTask(StackTrace.current.toString());
    print(
        "Дана строка из 3-х цифр. Найдите сумму этих цифр. То есть сложите как числа первый символ строки, второй и третий.");
    String str = stdin.readLineSync().toString();
    print(sumStr(0, 2, str));
  }

  void task6() {
    this.printRunningTask(StackTrace.current.toString());
    print(
        "Дана строка из 6-ти цифр. Проверьте, что сумма первых трех цифр равняется сумме вторых трех цифр. Если это так - выведите 'да', в противном случае выведите 'нет'.");

    String str = stdin.readLineSync().toString();
    if (sumStr(3, 5, str) == sumStr(0, 2, str)) {
      print("Да");
    } else {
      print("Нет");
    }
  }

  int sumStr(int a, int b, String str) {
    int s = 0;
    for (int i = a; i <= b; i++) {
      s += int.parse(str[i]);
    }
    return s;
  }
}

class BoldLesson extends Base {
  Map<String, String> users = {};

  void task1() {
    this.printRunningTask(StackTrace.current.toString());
    print("1) Необходимо написать программу, которая ");
    print("    a) Регистрация по логину и паролю");
    print("    a) проверяет правильность введения пароля");
    print("При введении правильного пароля необходимо вывести “Верный пароль”");
    print(
        "При введении неверного пароля необходимо вывести “Повторите ввод ” и запрашивать ввод пароля");
    String command = '';
    do {
      print("\r\nEnter 'Register' to register");
      print("Enter 'Login' to login");
      print("Enter 'Exit' to Exit");
      command = stdin.readLineSync()!.toLowerCase();
      switch (command) {
        case 'login':
          {
            login();
            break;
          }
        case 'register':
          {
            register();
            break;
          }
        case 'exit':
          {
            break;
          }
        default:
          {
            print("Команда не найдена");
          }
      }
    } while (command.toLowerCase() != "exit");
  }

  void login() {
    stdout.write("Enter username: ");
    String username = stdin.readLineSync()!.toLowerCase();
    stdout.write("Enter password: ");
    String password = stdin.readLineSync()!.toLowerCase();
    if (users.containsKey(username) && users[username] == password) {
      print("Верный пароль");
    } else {
      print("Повторите ввод");
    }
  }

  void register() {
    stdout.write("Enter username: ");
    String username = stdin.readLineSync()!.toLowerCase();
    if (users.containsKey(username)) {
      print("User already Exists");
      return;
    }
    stdout.write("Enter password: ");
    String password = stdin.readLineSync()!.toLowerCase();
    users[username] = password;
  }

  void task2() {
    print(
        "Организовать беспрерывный ввод чисел с клавиатуры, пока пользователь не введёт 0. После ввода нуля, показать на экран количество чисел, которые были введены, их общую сумму и среднее арифметическое. Подсказка: необходимо объявить переменную-счетчик, которая будет считать количество введенных чисел, и переменную, которая будет накапливать общую сумму чисел.");
    int n = 0;
    int count = 0;
    int sum = 0;
    do {
      stdout.write("Введите n: ");
      n = int.parse(stdin.readLineSync()!);
      count++;
      sum += n;
    } while (n != 0);
    count--;
    print("Количество: $count, sum=$sum; srednee=${sum / count}");
  }

  void task3() {
    print(
        "Необходимо суммировать все нечётные целые числа в диапазоне, который введёт пользователь с клавиатуры.");
    stdout.write("Введите диапазон От: ");
    int a = int.parse(stdin.readLineSync()!);
    stdout.write("Введите диапазон ДО: ");
    int n = int.parse(stdin.readLineSync()!);
    int sum = 0;
    for (int i = a; i <= n; i++) {
      if (i.isOdd) {
        sum += i;
      }
    }
    print(sum);
  }
}
