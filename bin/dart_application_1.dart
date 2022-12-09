// import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

import 'dart:math';

void main(List<String> arguments) {

  List l = ['123123', 123123, 1];
  print(l[0][0]);
  // Lesson1().task1();
  // Lesson1().task2();
  // Lesson1().task3();


  // Lesson2().task1();
  // Lesson2().task2();
  // Lesson2().task3();
  // Lesson2().task4();
  // Lesson2().task5();
  // Lesson2().task6();
  // Lesson2().task7();
  // Lesson2().task8();

}

class Lesson1 extends Base{
    void task1(){
      double b = 4.20;
      int a = 3;
      print(a+b);
    }
    void task2(){
      String text = "Name";
      text = "Flutter";
      print('I want to learn ${text}');
    }
    void task3(){
      double myNumber = 2.225;
      String myText;
      myText = myNumber.toString();
      print(myText);
    }

}




class Base{

    String getMethodName(String stackTraceStr){
      return stackTraceStr.split(" ")[6].split(".").last;
    }

    void printRunningTask(stackTraceStr){
      print('\nRunning ${this.runtimeType} ${this.getMethodName(stackTraceStr)}');

    }

}