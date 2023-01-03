import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  task1();
  task2();
  task3();
  task4();
  task5();
}

void task5() {
  int n = Random().nextInt(10),
      sheep = 0,
      horse = 0,
      cow = 0,
      price = 0,
      meat = 0;
  List l = [];
  Animal item;
  for (int i = 0; i < n; i++) {
    item = [Sheep(), Horse(), Cow()][Random().nextInt(3)];
    if (item is Sheep) {
      sheep++;
    } else if (item is Horse) {
      horse++;
    } else {
      cow++;
    }
    meat += item.meat;
    price += item.price;
    l.add(item);
  }
  print("Общее количество: $n");
  print("Коров: $cow, Баранов: $sheep, Лошадей: $horse");
  print("Вес : $meat, Цена: $price");
}

class Animal {
  final int price, meat;

  Animal(this.price, this.meat);
}

class Sheep extends Animal {
  Sheep() : super(15000, 20);
}

class Horse extends Animal {
  Horse() : super(100000, 100);
}

class Cow extends Animal {
  Cow() : super(150000, 150);
}

void task1() {
  List<int> numbers = [-10, 54, 21, 98, -2, 15, -23, 100, -91, 5];
  int tmp;
  for (int i = 0; i < numbers.length - 1; i++) {
    for (int j = i + 1; j < numbers.length; j++) {
      if (numbers[j] < numbers[i]) {
        tmp = numbers[i];
        numbers[i] = numbers[j];
        numbers[j] = tmp;
      }
    }
  }
  print(numbers);
}

void task2() {
  String a = 'data 48 call 9231dadsad read13 blank0a', b = '';
  for (String s in a.split(' ')) {
    if (s.length > b.length) {
      b = s;
    }
  }
  print(b);
}

void task3() {
  stdout.write("Вопрос: ");
  String s = stdin.readLineSync()!;
  List answers = [
    'Да',
    'Нет',
    'Скорее всего да',
    'Скорее всего нет',
    'Возможно',
    'Имеются перспективы',
    'Вопрос задан неверно'
  ];
  print(answers[Random().nextInt(answers.length)]);
}

void task4() {
  List s = [], soldaty = [], praporshiki = [], ofisery = [];
  for (int i = 0; i < 100; i++) {
    s.add([
      Rydovoi(),
      Efreitor(),
      Praporshik(),
      StPraporshik(),
      Kapitan(),
      General()
    ][Random().nextInt(6)]);
  }

  for (var element in s) {
    if (element is Rydovoi || element is Efreitor) {
      soldaty.add(element);
    } else if (element is Praporshik || element is StPraporshik) {
      praporshiki.add(element);
    } else {
      ofisery.add(element);
    }
  }
  print(soldaty);
  print(praporshiki);
  print(ofisery);
}

class Rydovoi {
  String rank = "Рядовой";
}

class Efreitor {
  String rank = "Ефрейтор";
}

class Praporshik {
  String rank = "Прапорщик";
}

class StPraporshik {
  String rank = "СТарший Прапорщик";
}

class Kapitan {
  String rank = "Капитан";
}

class General {
  String rank = "Генерал";
}
