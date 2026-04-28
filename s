//-----------------------------------------------------------------------------------------------------
// 1 задание
import 'dart:io';
import 'dart:math';
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
// 6 задание
class Overload {
  final num value;
  Overload(this.value);
  Overload operator +(Overload other) => Overload(value + other.value);
  Overload operator -(Overload other) => Overload(value - other.value);
  Overload operator *(Overload other) => Overload(value * other.value);
  Overload operator /(Overload other) => Overload(value / other.value);
  
  @override
  String toString() => '$value';
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
class Convent {
  void start() {
    print("Введите число, которое будет конвертироваться: ");
    int number = int.parse(stdin.readLineSync()!);
    print("Выберите в какую систему счисления конвертировать:");
    print("1 - Десятичная (10)"); 
    print("2 - Шестнадцатеричная (16)");
    print("3 - Восьмеричная (8)");
    int choice = int.parse(stdin.readLineSync()!);
    int t;
    if (choice == 1) t = 10;
    else if (choice == 2) t = 16;
    else if (choice == 3) t = 8;
    else {
      print("Ошибка: надо выбрать 1, 2 или 3");
      return;
    }
    String result = convert(number, t);
    print("Результат: $number в ${t}-чной системе = $result");
  }
  String convert(int number, int t) {
    if (t == 10) return number.toRadixString(10);
    if (t == 16) return number.toRadixString(16);
    if (t == 8) return number.toRadixString(8);
    return "надо 8, 10 или 16";
  } 
}
//-----------------------------------------------------------------------------------------------------
// 10 задание
abstract class GeometricShape {
  double area();
}

class ShapeCollection {
  List<GeometricShape> shapes = [];

  void add(GeometricShape shape) {
    shapes.add(shape);
  }

  GeometricShape? findMaxArea() {
    if (shapes.isEmpty) {
      return null;
    }

    GeometricShape maxShape = shapes[0];
    double maxAreaValue = maxShape.area();

    for (int i = 1; i < shapes.length; i++) {
      double currentAreaValue = shapes[i].area();
      if (currentAreaValue > maxAreaValue) {
        maxAreaValue = currentAreaValue;
        maxShape = shapes[i];
      }
    }
    return maxShape;
  }
}

class Triangle extends GeometricShape {
  double baseLength;
  double heightLength;

  Triangle(this.baseLength, this.heightLength);

  @override
  double area() {
    return 0.5 * baseLength * heightLength;
  }

  @override
  String toString() {
    return 'Треугольник (основание $baseLength, высота $heightLength)';
  }
}

class Rectangle extends GeometricShape {
  double widthValue;
  double heightValue;

  Rectangle(this.widthValue, this.heightValue);

  @override
  double area() {
    return widthValue * heightValue;
  }

  @override
  String toString() {
    return 'Прямоугольник ($widthValue × $heightValue)';
  }
}

class Rhombus extends GeometricShape {
  double diagonal1;
  double diagonal2;

  Rhombus(this.diagonal1, this.diagonal2);

  @override
  double area() {
    return (diagonal1 * diagonal2) / 2;
  }

  @override
  String toString() {
    return 'Ромб (диагональ1 = $diagonal1, диагональ2 = $diagonal2)';
  }
}
//-----------------------------------------------------------------------------------------------------
// 11 задание
abstract class StolovyPribor {
  String getName();
}

class Lozhka extends StolovyPribor {
  @override
  String getName() {
    return 'Ложка';
  }
}

class Vilka extends StolovyPribor {
  @override
  String getName() {
    return 'Вилка';
  }
}

class Nozh extends StolovyPribor {
  @override
  String getName() {
    return 'Нож';
  }
}

class Stol {
  List<StolovyPribor> pribori = [];
  
  void polozhit(StolovyPribor pribor) {
    pribori.add(pribor);
    print('${pribor.getName()} положен(а) на стол');
  }
  
  void vziat(StolovyPribor pribor) {
    if (pribori.contains(pribor)) {
      pribori.remove(pribor);
      print('${pribor.getName()} взят(а) со стола');
    } else {
      print('Ошибка: ${pribor.getName()} нет на столе');
    }
  }
  
  void vziatPosledniy() {
    if (pribori.isNotEmpty) {
      StolovyPribor pribor = pribori.removeLast();
      print('${pribor.getName()} взят(а) со стола');
    } else {
      print('На столе ничего нет');
    }
  }
  
  void pokazatStol() {
    print('сейчас на столе');
    if (pribori.isEmpty) {
      print('Стол пуст');
    } else {
      for (int i = 0; i < pribori.length; i++) {
        print('${i + 1}. ${pribori[i].getName()}');
      }
    }
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
    print('3. Выход');

    String input = stdin.readLineSync()!;
    int choice = int.parse(input); 
    if (choice == 3) {
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
    print('4. Выход');
    String input = stdin.readLineSync()!;
    int choice = int.parse(input); 
    if (choice == 4) {
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
  print("6 ЗАДАНИЕ ----------------------------------------------------------------------------");
  Overload a = Overload(42);
  Overload b = Overload(2);
  print('$a + $b = ${a + b}');
  print('$a - $b = ${a - b}');
  print('$a * $b = ${a * b}');
  print('$a / $b = ${a / b}');
  print("9 ЗАДАНИЕ ----------------------------------------------------------------------------");
  Convent converter = Convent();
  converter.start();
  print("10 ЗАДАНИЕ ----------------------------------------------------------------------------");
  ShapeCollection y = ShapeCollection();

  Rectangle myRectangle = Rectangle(5, 8);
  Triangle myTriangle = Triangle(6, 4);
  Rhombus myRhombus = Rhombus(6, 8);

  y.add(myRectangle);
  y.add(myTriangle);
  y.add(myRhombus);

  GeometricShape? maxShape = y.findMaxArea();

  if (maxShape != null) {
    print('Фигура с максимальной площадью: $maxShape');
    print('Её площадь: ${maxShape.area()}');
  } else {
    print('Нет фигур в списке');
  }

  print('\nВсе фигуры:');
  for (var shape in y.shapes) {
    print('$shape → площадь = ${shape.area()}');
  }
  print("11 ЗАДАНИЕ ----------------------------------------------------------------------------");
  Stol stol = Stol();
  Lozhka lozhka = Lozhka();
  Vilka vilka = Vilka();
  Nozh nozh = Nozh();
  
  while (true) {
    stol.pokazatStol();
    
    print('Выберите действие:');
    print('1. Положить ложку');
    print('2. Положить вилку');
    print('3. Положить нож');
    print('4. Взять последний прибор');
    print('5. Выход');
    
    String? input = stdin.readLineSync();
    int choice = int.tryParse(input ?? '') ?? -1;
    
    
    
    
    switch (choice) {
      case 1:
        stol.polozhit(lozhka);
        break;
        
      case 2:
        stol.polozhit(vilka);
        break;
        
      case 3:
        stol.polozhit(nozh);
        break;
        
      case 4:
        stol.vziatPosledniy();
        break;
      case 5:
    }
    if (choice == 5) {
      print('Программа завершена.');
      break;
    }
  }
}



