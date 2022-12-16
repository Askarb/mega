import 'dart_application_1.dart';

void main(List<String> arguments) {
  PracticeFor().task1();
  PracticeFor().task2();
  PracticeFor().task3();
  PracticeFor().task4(6);

}


class PracticeFor extends Base{
    
    void task1(){
      this.printRunningTask(StackTrace.current.toString());
        print([for(int i=1; i<=5; i++) i]);
    }
    void task2(){
      this.printRunningTask(StackTrace.current.toString());
      for(int i=5; i>0; i--){
        print(i);
      }
    }

    void task3(){
      this.printRunningTask(StackTrace.current.toString());
      for(int i=1; i<=10; i++){
        print("3 x $i = ${3*i}");
      }
    }

    void task4(int n){
      this.printRunningTask(StackTrace.current.toString());
      print((1+n)/2*n);
    }
    
}