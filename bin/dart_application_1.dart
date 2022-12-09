// import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

import 'dart:math';

void main(List<String> arguments) {
  Map a = {
    1: 1,
    true: 1
  };
  // List l = ['123123', 123123, 1];
  // print(l[0][0]);
  // Lesson1().task1();
  // Lesson1().task2();
  // Lesson1().task3();
}






class Base{

    String getMethodName(String stackTraceStr){
      return stackTraceStr.split(" ")[6].split(".").last;
    }

    void printRunningTask(stackTraceStr){
      print('\nRunning ${this.runtimeType} ${this.getMethodName(stackTraceStr)}');

    }

}