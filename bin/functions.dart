import 'dart:math';

import 'dart_application_1.dart';

void main(List<String> arguments) {
  int a = Random().nextInt(10);
  int b = Random().nextInt(10);
  int c = Random().nextInt(10);
  print("$a $b $c");
  print(LessonFunction().pow(a));
  print(LessonFunction().sum(a, b));
  print(LessonFunction().div(a, b, c));
  print(LessonFunction().minToSec(a));
  print(LessonFunction().firstElementList([1, 3, 4, 5, 6]));
  LessonFunction().boolFunction();
  print(LessonFunction().checkLessZero(a-5));
  // Lesson3hw().task2();
  // Lesson3hw().task3();
}

class LessonFunction extends Base{
    int pow(int n){
      this.printRunningTask(StackTrace.current.toString());
      return n * n;
    }

    int sum(int n, int a){
      this.printRunningTask(StackTrace.current.toString());
      return n + a;
    }

    double div(int a, int b, int c){
      this.printRunningTask(StackTrace.current.toString());
      return (a-b) / c;
    }

    int minToSec(int min){
      this.printRunningTask(StackTrace.current.toString());
      return min * 60;
    }

    int firstElementList(List a){
      this.printRunningTask(StackTrace.current.toString());
      return a.first;
    }
    void boolFunction(){
      this.printRunningTask(StackTrace.current.toString());
      bool b = [true, false][Random().nextInt(2)];
      if (b){
        print("Переменная имеет значение $b");
      } else {
        print("Переменная имеет значение $b");
      }
    }
    
    bool checkLessZero(int n){
      this.printRunningTask(StackTrace.current.toString());
      return n <= 0;
    }
  }