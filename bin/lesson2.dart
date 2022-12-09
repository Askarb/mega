import 'dart_application_1.dart';

void main(List<String> arguments) {
  Lesson2().task1();
  Lesson2().task2();
  Lesson2().task3();
  Lesson2().task4();
  Lesson2().task5();
  Lesson2().task6();
  Lesson2().task7();
  Lesson2().task8();

}


class Lesson2 extends Base{
    void task1(){
      this.printRunningTask(StackTrace.current.toString());
      List<int> l = [1, 7, 12, 3, 56, 2, 87, 34, 54];
      print(l.first);
      print(l[4]);
      print(l.last);
    }
    
    void task2(){
      this.printRunningTask(StackTrace.current.toString());

      List<int> l1 = [3, 12, 43, 1, 25, 6, 5, 7];
      List<int> l2 = [55, 11, 23, 56, 78, 1, 9];
      l1.addAll(l2);
      print(l1);
    }
    
    void task3(){
      this.printRunningTask(StackTrace.current.toString());

      List<String> l1 = ['a','d','F','l','u','t','t','e','R','y','3','b','h','j'];
      l1.removeRange(0,2);
      l1.removeRange(7,12);
      print(l1);
    }
    
    void task4(){
      this.printRunningTask(StackTrace.current.toString());

      List<int> l1 = [1, 2, 3, 4, 5, 6, 7];
      print(l1.contains(3));
      print(l1.first);
      print(l1.last);
      print(l1.length);
    }
    
    void task5(){
      this.printRunningTask(StackTrace.current.toString());

      var l1 = [601, 123, 2, "dart", 45, 95, "dart24", 1];
      print('1 – ${l1.contains("dart")}');
      print('2 – ${l1.contains("951")}');
    }
    
    void task6(){
      this.printRunningTask(StackTrace.current.toString());

      var l1 =  ['post', 1, 0, 'flutter'];
      String myDart = 'Flutter';
      print('${l1.contains(myDart) || l1.contains(myDart.toLowerCase())}');
    }
    
    void task7(){
      this.printRunningTask(StackTrace.current.toString());

      var l1 =  ["I", "Started", "Learn", "Flutter", "Since", "April"];
      String myFlutter = '';
      myFlutter = l1.join('*');
      print(myFlutter);
    }
    
    void task8(){
      this.printRunningTask(StackTrace.current.toString());

      var l1 = [1, 9, 3, 195, 202, 2, 5, 7, 9, 10, 3, 15, 0, 11];
      l1.sort();
      print(l1);
    }
}