import 'dart:math';

import 'dart_application_1.dart';

void main(List<String> arguments) {
  Lesson3().task1();
  Lesson3().task2();
  Lesson3().task3();
  Lesson3().task4();
  Lesson3().task5();
  Lesson3().task6();
  Lesson3().task7();
  Lesson3().task8();
  // for (int i = 0; i < 256; i++)
  // print("$i --> ${String.fromCharCode(i)}");
}

class Lesson3 extends Base{
    void task1(){
      this.printRunningTask(StackTrace.current.toString());
      int Finger = Random().nextInt(4);
      print('${Finger+1} ➞ ${["Большой палец", "Указательный", "средний", "безымянный", "мизинец"][Finger]}');
    }

    void task2(){
      this.printRunningTask(StackTrace.current.toString());
      int min = Random().nextInt(59);
      print('min ${min} ➞ ${["1", "4", "3", "2"][min ~/ 15]}');
    }
    
    void task3(){
      this.printRunningTask(StackTrace.current.toString());
      String lang = ["ru", "en"][Random().nextInt(2)]; 
      if (lang == 'ru'){
        print('Пн Вт Ср Чт Пт Сб Вс');
      } else{
        print('Monday Tuesday Wednesday Thursday Friday Saturday Sanday');
      } 
    }
    
    void task4(){
      this.printRunningTask(StackTrace.current.toString());
      String s = 'abcde';
      if (s[0] == 'a'){
        print('Да');
      }else{
        print('Нет');
      }
    }
    
    void task5(){
      this.printRunningTask(StackTrace.current.toString());
      int s = Random().nextInt(4) + 1;
      String result;
      if (s == 1){
        result = 'Зима';
      }else if (s == 2){
        result = 'Лето';
      }else if (s == 3){
        result = 'Осень';
      }else{
        result = 'Весна';
      }
      print(result);
  }
    
    void task6(){
      this.printRunningTask(StackTrace.current.toString());
      int n = Random().nextInt(10) - 5;
      if (n < 0){
        print("Верно");
      }else{
        print("Неверно");
      }
    }
    String generatorString(){
      return String.fromCharCodes(List.generate(6, (index) => Random().nextInt(10) + 48));
    }
    int sumStr(String str){
      int s = 0;
      for(int i=0; i < 3; i++){
        s+= int.parse(str[i]);
      }
      return s;
    }
    void task7(){
      this.printRunningTask(StackTrace.current.toString());
      String s1 = generatorString();
      String s2 = generatorString();
      print("s1 = $s1 == ${sumStr(s1)}");
      print("s2 = $s2 == ${sumStr(s2)}");
      if (sumStr(s1) == sumStr(s2)){
        print('Да');
      } else{
        print('Нет');
      }
    }

    void task8(){
      this.printRunningTask(StackTrace.current.toString());
      String red = 'Красный';
      String green = 'Зеленный';
      String yellow = 'Желтый';
      String color = [red, green, yellow][Random().nextInt(3)];
      if (color == red){
        print("$color надо стоять");
      } else if(color == yellow){
        print("$color надо приготовиться");
      } else{
        print("$color можно идти");
      }
    }
  }