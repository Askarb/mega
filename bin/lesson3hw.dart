import 'dart:math';

import 'dart_application_1.dart';

void main(List<String> arguments) {
  Lesson3hw().task1();
  Lesson3hw().task2();
  Lesson3hw().task3();
}

class Lesson3hw extends Base{
    void task1(){
      this.printRunningTask(StackTrace.current.toString());
      int hour = Random().nextInt(25);
      print(hour);
      if (hour >= 19 || hour< 6 ){
        print('темно на улице');
      }else{
        print('светло на улице');
      }
    }

    void task2(){
      this.printRunningTask(StackTrace.current.toString());
      int n = Random().nextInt(490001) + 10000; 
      int tax = 10;
      if (n <= 100000){
        tax = 5;
      } else if (n < 200000){
        tax = 7;
      } 
      print("$n tax(${tax}) --> ${n/100*tax}");
    }
    
    void task3(){
      this.printRunningTask(StackTrace.current.toString());
      int month = Random().nextInt(12);
      List m = ['январь', 'февраль', 'март', 'апрель', 'май', 'июнь', 'июль', 'август', 'сентябрь', 'октябрь', 'ноябрь', 'декабрь'];
      print("${month+1} -- > ${m[month]}, ${['Зима', 'Весна', 'Лето', 'Осень'][((month + 1)~/3)%4]}");
    }
    
  }