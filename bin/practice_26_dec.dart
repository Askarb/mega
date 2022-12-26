import 'dart:io';

void main(List<String> args) {
  task1();
  task2();
  task3();
  task4();
  task5();
  task6();
}

void task6() {
  List<String> lineOne = ['  ', '  ', '  '];
  List<String> lineTwo = ['  ', '  ', '  '];
  List<String> lineThree = ['  ', '  ', '  '];
  bool checkGame(String symbol) {
    return (lineOne[0] == symbol &&
            lineOne[1] == symbol &&
            lineOne[2] == symbol) ||
        (lineTwo[0] == symbol &&
            lineTwo[1] == symbol &&
            lineTwo[2] == symbol) ||
        (lineThree[0] == symbol &&
            lineThree[1] == symbol &&
            lineThree[2] == symbol) ||
        (lineOne[0] == symbol &&
            lineTwo[0] == symbol &&
            lineThree[0] == symbol) ||
        (lineOne[1] == symbol &&
            lineTwo[1] == symbol &&
            lineThree[1] == symbol) ||
        (lineOne[2] == symbol &&
            lineTwo[2] == symbol &&
            lineThree[2] == symbol) ||
        (lineOne[0] == symbol &&
            lineTwo[1] == symbol &&
            lineThree[2] == symbol) ||
        (lineOne[2] == symbol &&
            lineTwo[1] == symbol &&
            lineThree[0] == symbol);
  }

  String current, playerX = 'x', playerO = 'o';
  int step = 0, x, y;
  bool result;
  do {
    step += 1;
    current = step.isOdd ? playerX : playerO;
    print("\n\nИграет $current");
    stdout.write("Введите номер строки: ");
    x = int.parse(stdin.readLineSync()!);
    stdout.write("Введите номер столбца: ");
    y = int.parse(stdin.readLineSync()!);
    if ([playerX, playerO]
        .contains([lineOne, lineTwo, lineThree][y - 1][x - 1])) {
      print("Это позиция занята!!!");
      step--;
    } else {
      [lineOne, lineTwo, lineThree][y - 1][x - 1] = current;
    }

    result = checkGame(current);
    print(lineOne);
    print(lineTwo);
    print(lineThree);
  } while (!result && step < 9);
  print("${result ? 'Победил $current' : 'ничья'}");
}

void task5() {
  List barselona = [
        Player('БарсВратарь'),
        Player('БарсЗащитник1'),
        Player('БарсЗащитник2'),
        Player('БарсЗащитник3'),
        Player('БарсЗащитник4'),
        Player('БарсПолузащитника1'),
        Player('БарсПолузащитника2'),
        Player('БарсПолузащитника3'),
        Player('БарсПолузащитника4'),
        Player('БарсНападаюший1'),
        Player('БарсНападаюший2'),
      ],
      realm = [
        Player('РеалВратарь'),
        Player('РеалЗащитник1'),
        Player('РеалЗащитник2'),
        Player('РеалЗащитник3'),
        Player('РеалЗащитник4'),
        Player('РеалПолузащитника1'),
        Player('РеалПолузащитника2'),
        Player('РеалПолузащитника3'),
        Player('РеалПолузащитника4'),
        Player('РеалНападаюший1'),
        Player('РеалНападаюший2'),
      ];
  print(barselona);
  print(realm);
}

class Player {
  final String name;

  Player(this.name);

  @override
  String toString() {
    return name;
  }
}

void task4() {
  int s = 0, n = int.parse(stdin.readLineSync()!);
  for (int i = 1; i < n; i++) {
    if (n % i == 0) {
      s += i;
    }
  }
  print("Число  ${n == s ? 'совершенно' : ' не совершенно'}");
}

void task3() {
  int n = int.parse(stdin.readLineSync()!);
  List even = [], odd = [];
  for (int i = 1; i <= n; i++) {
    if (i.isEven) {
      even.add(i);
    } else {
      odd.add(i);
    }
  }
  print("Even $even");
  print("Odd $odd");
}

void task1() {
  print(
      "С клавиатуры вводится год. Программа должна определять високосный это год или нет. Вывести на экран соответствующую надпись, а также количество дней в году.\n\nВ високосном годе 366 дней, тогда как в обычном 365. Високосными годами являются все года делящиеся нацело на 4 за исключением столетий, которые не делятся нацело на 400.");
  int n = int.parse(stdin.readLineSync()!);

  if (n % 4 == 0 && !(n % 100 == 0 && n != 400)) {
    print("Количество дней 366");
  } else
    print("Количество дней 365");
}

void task2() {
  print(
      "Возьмем любое натуральное число. Если оно четное - разделим его пополам, если нечетное - умножим на 3, прибавим 1 и разделим пополам. Повторим эти действия с вновь полученным числом. Гипотеза гласит, что независимо от выбора первого числа рано или поздно мы получим 1.");
  int step = 0;
  double s = double.parse(stdin.readLineSync()!);
  while (s != 1 && step <= 1000) {
    step++;
    if (s % 2 == 0) {
      s /= 2;
    } else
      s = (s * 3 + 1) / 2;
  }
  print("Гиппотеза ${s == 1 ? 'верна' : 'неверна'}");
}
