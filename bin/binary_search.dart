import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  Stage1().run();
  // Stage2().run();
  // Stage3().run();
  // Stage4().run();
}

class Stage4 extends Stage3 {
  @override
  void run() {
    stdout.write("\nВведите количество раундов: ");
    String round_str = stdin.readLineSync().toString();
    stdout.write("\nВведите уровень сложности (easy, hard): ");
    String level = stdin.readLineSync().toString();

    int round = int.tryParse(round_str) ?? 1;
    stdout.write("\nКоличество раундов: $round\n");
    int human_score = 0;
    int computer_score = 0;

    for (int i = 1; i <= round; i++) {
      print("Round $i\r\n");
      human_score += 1;
      //human();
      computer_score += computer(level);
      print('=========================================');
    }

    print("human_score=$human_score, computer_score=$computer_score");
  }

  int human() {
    stdout.write("Human starting search\r\n\n");
    return humanSearch();
  }

  int computer(String level) {
    stdout.write("Computer starting search\r\n\n");
    if (level == 'hard')
      return binarySearch(1, 100, 1);
    else
      return linearSearch(0, 100);
  }

  int linearSearch(int i, int b) {
    print("Введите yes если компьютер угадал: ");
    String command = '-1';

    do {
      i++;
      print("Is it $i");
      command = stdin.readByteSync().toString();
    } while (command != 'yes');
    return i;
  }
}

class Stage3 extends Stage1 {
  @override
  void run() {
    stdout.write("Game mode:");
    stdout.write("Enter 1 to human searh, Enter 2 to computer searh: ");
    String command = stdin.readLineSync().toString();
    if (command == '1') humanSearch();
    if (command == '2') Stage1().run();
  }

  int humanSearch() {
    int step = 0;
    int n = Random().nextInt(100) + 1;
    int user_number = 0;
    do {
      step++;
      stdout.write("Enter number 1-100: ");
      user_number = int.parse(stdin.readLineSync()!);
      if (user_number < n) {
        print("greater");
      } else if (user_number > n) {
        print("less");
      }
    } while (user_number != n);
    print("Yes, Number is $n");
    return step;
  }
}

class Stage2 {
  void run() {
    List<int> l100 = [for (int i = 1; i <= 100; i++) i];
    List<int> l5000 = [for (int i = 1; i <= 5000; i++) i];
    print('Starting to test');
    averageStepBinary(l100);
    averageStepLinear(l100);
    print('======================');
    averageStepBinary(l5000);
    averageStepLinear(l5000);

    print(
        "\n\n\n\nConclusion: Linear search is faster for small data. For big data Binary search is better.");
  }

  void averageStepBinary(List<int> l) {
    print("Using Algorith: Binary search");
    int step_sum = 0;
    DateTime date1 = DateTime.now();
    for (int n = 1; n <= l.length; n++) {
      Map<String, int> result = binarySearch(l, n, 1, l.length, 0);
      step_sum += result["step"]!;
      // print("Got ${n} in ${result["step"]} steps");
    }
    DateTime date2 = DateTime.now();

    print(
        'Binary results for ${l.length} item, Average step is ${step_sum / 100}; average time is ${date2.difference(date1).inMicroseconds}/${l.length} Microseconds');
  }

  void averageStepLinear(List<int> l) {
    print("Using Algorith: Linear search");

    int step_sum = 0;
    DateTime date1 = DateTime.now();
    for (int n = 1; n <= l.length; n++) {
      Map<String, int> result = linearSearch(l, n);
      step_sum += result["step"]!;
      // print("Got ${n} in ${result["step"]} steps");
    }
    DateTime date2 = DateTime.now();

    print(
        'Linear results for ${l.length} item, Average step is ${step_sum / 100}; average time is ${date2.difference(date1).inMicroseconds}/${l.length} Microseconds');
  }

  Map<String, int> binarySearch(
      List<int> l, int search_number, int a, int b, int step) {
    {
      step++;
      int res = ((a + b) / 2).floor();
      if (search_number == l[res]) {
        return {"step": step, "index": res};
      } else if (search_number > l[res]) {
        return binarySearch(l, search_number, res + 1, b, step);
      } else {
        return binarySearch(l, search_number, a, res - 1, step);
      }
    }
  }

  Map<String, int> linearSearch(List<int> l, int search_number) {
    for (int i = 0; i < l.length; i++) {
      if (search_number == l[i]) {
        return {"step": i + 1, "index": i};
      }
    }
    return {"step": 0, "index": 0};
  }
}

class Stage1 {
  void run() {
    print('Step ${binarySearch(1, 100, 1)}');
  }

  int binarySearch(int a, int b, int step) {
    if (step > 200) {
      print("Ups, some thing went wrong");
      return -99;
    }
    if (a == b) {
      print('Your number is $a');
      return step;
    }

    int res = ((a + b) / 2).floor();
    print("Is it $res");
    String command = stdin.readLineSync().toString();
    switch (command) {
      case 'less':
        {
          step++;
          return binarySearch(a, res - 1, step);
        }
      case 'greater':
        {
          step++;
          return binarySearch(res + 1, b, step);
        }
      case '':
        {
          return step;
        }
      default:
        {
          return binarySearch(a, b, step);
        }
    }
    return step;
  }
}
