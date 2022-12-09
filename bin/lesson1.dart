import 'dart_application_1.dart';

void main(List<String> arguments) {
  Lesson1().task1();
  Lesson1().task2();
  Lesson1().task3();

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