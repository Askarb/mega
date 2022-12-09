import 'dart:math';

import 'dart_application_1.dart';

void main(List<String> arguments) {
  LessonHW2().task1();
  LessonHW2().task2();
  LessonHW2().task3();
}

class LessonHW2 extends Base{
    void task1(){

      this.printRunningTask(StackTrace.current.toString());
      int chocolate = Random().nextInt(100);
      int coffee = Random().nextInt(100);
      int milk = Random().nextInt(100);
      int sum = chocolate + coffee+milk;
      print(sum);
    }
    void task2(){
      this.printRunningTask(StackTrace.current.toString());
      int chocolate = Random().nextInt(100);
      int coffee = chocolate + 3;
      int sum = chocolate + coffee;
      print(sum);
    }
  

    void task3(){
      this.printRunningTask(StackTrace.current.toString());
      int a = Random().nextInt(100);
      int b = a;
      int c = a;
      print(a+b+c);
      
    }
}