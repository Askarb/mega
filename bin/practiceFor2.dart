import 'dart:io';

import 'dart_application_1.dart';

void main(List<String> arguments) {
  PracticeFor2().task1();
  PracticeFor2().task2();
  PracticeFor2().task3();
  PracticeFor2().task4();
  PracticeFor2().task5();
  PracticeFor2().task6();
  PracticeFor2().task7();

}


class PracticeFor2 extends Base{
    
    void task1(){
      this.printRunningTask(StackTrace.current.toString());
        print([for(int i=10; i<=20; i++) i*i]);
    }

    void task2(){
      this.printRunningTask(StackTrace.current.toString());
      stdout.write('Сумма до n: ');
      int n = int.parse(stdin.readLineSync().toString());
      print(((1+n)/2*n).toInt());
    }

    void task3(){
      this.printRunningTask(StackTrace.current.toString());
      stdout.write('S: ');
      double s = double.parse(stdin.readLineSync().toString());
      stdout.write('N: ');
      int n = int.parse(stdin.readLineSync().toString());
      double sum = 0;
      for(int i=0;i<n;i++){
        s += s*.03;
      }
      print(s);
    }

    void task4(){
      this.printRunningTask(StackTrace.current.toString());
      stdout.write('Даны натуральные числа от 20 до 50...: \n');
      for(int i=20;i<=50;i++){
        if(i % 3 == 0 && i%5 != 0){
          stdout.write('$i, ');
        }
      }
    }

    void task5(){
      this.printRunningTask(StackTrace.current.toString());
      stdout.write('Даны натуральные числа от 1 до 50...: \n');
      for(int i=1;i<=50;i++){
        if(i % 5 == 0 || i%7 == 0){
          stdout.write('$i, ');
        }
      }
    }

    void task6(){
      this.printRunningTask(StackTrace.current.toString());
      stdout.write('Напечатать те из двузначных чисел которые делятся на 4, но не делятся на 6.: \n');
      for(int i=10;i<=99;i++){
        if(i % 4 == 0 && i%6 != 0){
          stdout.write('$i, ');
        }
      }
    }

    void task7(){
      this.printRunningTask(StackTrace.current.toString());
      stdout.write('Найти сумму чисел от 100 до 200 кратных 17.: \n');
      for(int i=100;i<=200;i++){
        if(i % 17 == 0){
          stdout.write('$i, ');
        }
      }
    }

    void task8(){
      this.printRunningTask(StackTrace.current.toString());
      stdout.write(' Составьте программу, которая вычисляет сумму квадратов чисел от 1 до введенного вами целого числа N: ');
      int n = int.parse(stdin.readLineSync().toString());
      int s = 0;
      for(int i=0;i<n;i++){
        s+=i*i;
      }
      print(s);

    }
}