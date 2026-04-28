//-----------------------------------------------------------------------------------------------------
// 1 задание
import 'dart:io';
class Krujka{
  void pit(){
    print("пьет");
  }
}

class Chel extends Krujka{
  String name;
  Chel(this.name);
  @override
  void pit(){
    print("$name пьет");
  }
}
//-----------------------------------------------------------------------------------------------------
// 2 задание
class Shkaf{
  String maika;
  String noski;
  String anton;
  Shkaf(this.maika,this.noski,this.anton);
}
mixin poloshit{
  void p(){
    print("положил");
  }
}
mixin vzyat{
  void v(){
    print("взял");
  }
}
class User extends Shkaf with poloshit,vzyat{
  User(super.maika,super.noski,super.anton);
  @override
  void v(){
    print("взял $maika, $anton, $noski ");
  }
  
  @override
  void p(){
    print("положил $maika, $anton, $noski ");
  }
}
//-----------------------------------------------------------------------------------------------------
// 3 задание
class Blini{
  @override
  String toString() => 'Блин';
}

class Grif{
  final int maxblin = 3; // максимум блинов на стороне
  final List<Blini> leftblin = [];
  final List<Blini> rightblin = [];
  
  bool canAddLeft() {
    return leftblin.length < maxblin;
  }
  
  bool canAddRight() {
    return rightblin.length < maxblin;
  }
  
  void addLeft() {
    if (canAddLeft()) {
      leftblin.add(Blini());
      print('Блин надет слева');
    } else {
      print('Достигнут максимум грифа');
    }
  }
  
  void addRight() {
    if (canAddRight()) {
      rightblin.add(Blini());
      print('Блин надет справа');
    } else {
      print('Достигнут максимум грифа');
    }
  }
  
  void showStatus() {
    print('сколько блинов на грифе');
    print('Слева: ${leftblin.length}/3 блинов');
    print('Справа: ${rightblin.length}/3 блинов');
  }
  
  bool isFull() {
    return leftblin.length >= maxblin && 
           rightblin.length >= maxblin;
  }
}
//-----------------------------------------------------------------------------------------------------
// 4 задание
class Conv{
  void inputt(){
    print('Введи количествво');
    String kolvo = stdin.readLineSync()!;
    int kolvoint = int.parse(kolvo);
    printt();
    String vib = stdin.readLineSync()!;
    int vint = int.parse(vib);
    print(conv(vint, kolvoint));
  }
  double conv(vib, kolvo){
    
    double rtou = 0.014;
    double utoru = 76;
    double etou = 1.1;
    double etoru = 90;

    switch(vib){
      case 1: return kolvo*rtou;
      case 2: return kolvo*utoru;
      case 3: return kolvo*etou;
      case 4: return kolvo*etoru;
    }
    return 0;
  }
  void printt(){
    print('Выбери');
    print("1. Рубль к доллару");
    print('2. Доллар к рублю');
    print('3. Евро к доллару');
    print('4. Евро к рублю');
  }
}
//-----------------------------------------------------------------------------------------------------
// 5 задание
class Garag<Anton, Olen, Vilka, Karaci> {
  Anton anton;
  Olen olen;
  Vilka vilka;
  Karaci karaci;
  
  Garag(this.anton, this.olen, this.vilka, this.karaci);
  
  void veshi() => print("В гараже антон, олень, вилка и караси");
}
//-----------------------------------------------------------------------------------------------------
// 8 задание
class Geom{
  int ploshad;
  int perimetr;
  Geom(this.perimetr,this.ploshad);
}
class Treugolnik extends Geom{
  int bissekt;
  int visota;
  int mediana;
  Treugolnik(super.ploshad,super.perimetr,this.bissekt,this.visota,this.mediana);
}
class Ork extends Geom{
  int radius;
  Ork(super.ploshad,super.perimetr,this.radius);
}

class Pryamoug extends Geom{
  int diagonal;
  Pryamoug(super.perimetr,super.ploshad,this.diagonal);
}
//-----------------------------------------------------------------------------------------------------
// 9 задание
class NumberConverter {
  void start() {
    print("Введите число, которое будет конвертироваться: ");
    int number = int.parse(stdin.readLineSync()!);
    print("Выберите в какую систему счисления конверитровать: ");
    int choice = int.parse(stdin.readLineSync()!);
    String result=convert(number, choice);
    print(result);
  }

  String convert(int number, int choice) {
    if (choice == 10) return number.toRadixString(10);
    if (choice == 16) return number.toRadixString(16);
    if (choice == 8) return number.toRadixString(8);
    return "Надо 10 или 16 или 8";
  } 
}
//-----------------------------------------------------------------------------------------------------
// 7 задание
enum MotionState {
  stop,
  drive,
  povorot;
  
  @override
  String toString() {
    switch (this) {
      case MotionState.stop:
        return 'стоп';
      case MotionState.drive:
        return 'едем';
      case MotionState.povorot:
        return 'поворачивает';
    }
  }
}
class Car {
  MotionState state = MotionState.stop;
   void stop() {
    if (state == MotionState.stop) {
      print('Машина уже стоит');
    } else {
      state = MotionState.stop;
      print('Машина стоит');
    }
  }
  
  void drive() {
    if (state == MotionState.drive) {
      print('Машина уже едет');
    } else {
      state = MotionState.drive;
      print('Машина поехала');
    }
  }
  
  void povorot() {
    if (state == MotionState.stop) {
      print('Машина стоит, сначала нужно поехать');
    } else if (state == MotionState.povorot) {
      print('Машина уже поворачивает');
    } else {
      state = MotionState.povorot;
      print('Машина поворачивает');
    }
  }
  void showStatus() {
    print('Машина: $state');
  }
}

//-----------------------------------------------------------------------------------------------------
void main(){
  Chel c = Chel("Антон");
  print("1 ЗАДАНИЕ ----------------------------------------------------------------------------");
  c.pit();
  
//----------------------------------------------------------------------------------------------------
print("2 ЗАДАНИЕ ----------------------------------------------------------------------------");
  User u = User("Майку","Носки","Антона");
  print("Выберите что хотите сделать со шкафом:");
  print("1.взять всё");
  print("2.положить всё");
  print("3.выйти");
  var k = stdin.readLineSync();
  switch(k){
    case '1':
    u.v();
    case '2':
    u.p();
    case '3':
    break;
  }
//---------------------------------------------------------------------------------------------------------  
  print("4 ЗАДАНИЕ ----------------------------------------------------------------------------");
  Conv x = new Conv();
  x.inputt();
  
//--------------------------------------------------------------------------------------------------------
  Grif l = new Grif();
  print("3 ЗАДАНИЕ ----------------------------------------------------------------------------");
  while (true){
    l.showStatus();
    print("Куда вы хотите надеть блин ?");
    if (l.canAddLeft()) {
      print('1. Налево (сейчас: ${l.leftblin.length}/3)');
    } else {
      print('1. Налево (уже 3 блина, нельзя)');
    }
    
    if (l.canAddRight()) {
      print('2. Направо (сейчас: ${l.rightblin.length}/3)');
    } else {
      print('2. Направо (уже 3 блина, нельзя)');
    }
    print('0. Выход');

    String input = stdin.readLineSync()!;
    int choice = int.parse(input); 
    if (choice == 0) {
      print('Программа завершена.');
      break;
    }
    switch (choice) {
      case 1:
        if (l.canAddLeft()) {
          l.addLeft();
        } else {
          print('На левой стороне максимум блинов. Попробуйте другую сторону.');
        }
        break;
        
      case 2:
        if (l.canAddRight()) {
          l.addRight();
        } else {
          print('На правой стороне максимум блинов. Попробуйте другую сторону.');
        }
        break;
    }
  }
  print('Итоговое состояние грифа :');
  l.showStatus();
//--------------------------------------------------------------------------------------------------------
  print("7 ЗАДАНИЕ ----------------------------------------------------------------------------");
  Car e = new Car();
  while (true) {
    e.showStatus();
    print('Выберите действие:');
    print('1. Стоп (остановить)');
    print('2. Ехать (начать движение)');
    print('3. Повернуть');
    print('0. Выход');
    String input = stdin.readLineSync()!;
    int choice = int.parse(input); 
    if (choice == 0) {
      print('Программа завершена.');
      break;
    }
    switch (choice) {
      case 1:
        e.stop();
        break;
        
      case 2:
        e.drive();
        break;
        
      case 3:
        e.povorot();
        break;
    }
  }
//--------------------------------------------------------------------------------------------------------
  print("5 ЗАДАНИЕ ----------------------------------------------------------------------------");
  var ww = Garag("Антон", "олень", "вилка", "караси");
  print(ww.anton);  
  print(ww.olen); 
  print(ww.vilka); 
  print(ww.karaci);  
  ww.veshi();
  
}
