import 'dart:io';
import 'dart:math';

import 'dart_application_1.dart';

void main(List<String> arguments) {
  LessonFORhw().task1();
  LessonFORhw().task2();
  LessonFORhw().task3();
}

class LessonFORhw extends Base{
    void task1(){
      this.printRunningTask(StackTrace.current.toString());
      Set<int> d = {};
      List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
      List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13] ;
      for(int i=0; i< a.length; i++){
        if (b.contains(a[i])){
          d.add(a[i]);
        }
      }
      print(d);
    }
    void task2(){
      this.printRunningTask(StackTrace.current.toString());
      List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
      List<int> b = [];
      for(int i=0; i< a.length; i++){
        if (a[i]%2 == 0){
          b.add(a[i]);
        }
      }
      print(b);
    }
    void task3(){
      this.printRunningTask(StackTrace.current.toString());
      stdout.write("Enter a: ");
      String a = stdin.readLineSync().toString();
      stdout.write("Enter b: ");
      String b = stdin.readLineSync().toString();
      int count = 0;
      for(int i=0; i < b.length; i++){
        if(b[i] == a) {
          count++;
          }
      }
      print(count);

    }


  }