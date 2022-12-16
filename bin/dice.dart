import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  List human = [];
  List comp = [];
  round(human, comp);
  round(human, comp);
  round(human, comp);
  round(human, comp);
  round(human, comp);
  round(human, comp);
  round(human, comp);
  round(human, comp);

  var sumHuman = human.reduce((a, b) => a + b);
  var sumComp = comp.reduce((a, b) => a + b);
  print("human = $human ($sumHuman); comp=$comp ($sumComp)");
  if (sumHuman > sumComp){
    print("Human win");
  }else if (sumHuman < sumComp){
    print("Comp win");
  } else{
    print("Draw");
  }
}
void checkVariable(int a){
  a = a+1;
}

void round(List human, List comp){
  print("Round ${human.length+1}");
  print("Press Enter to toss (Human) ");
  stdin.readLineSync();
  human.add(tossDice());
  print("${human.last}\n");

  print("Press Enter to toss (Comp) ");
  stdin.readLineSync();
  comp.add(tossDice());
  print("${comp.last}\n");
}

int tossDice(){
  return Random().nextInt(6)+1;
}
