//======public class========
import 'dart:convert';

import 'package:crypto/crypto.dart';

class Student {
  late String name;
  late int age;
}

//========private class==========
class _Subject {
  late String title;
  late double score;
}

//========Create class setter and getter======
class MyLogin {
  late String _pass;
  set password(String text) {
    var bytes = utf8.encode(text);
    var digest = sha1.convert(bytes);
    _pass = digest.toString();
  }

  String get hashPassword {
    return _pass;
  }
}

//=============constructor=========

//-------default contstructor---------
class Student2 {
  late String name;
  late int age;
  Student2() {
    name = "Sout Ruoshim";
    age = 20;
  }
}

//-------parameter contstrutor--------
class Student3 {
  late String name;
  late int age;
  Student3(String name, int age) {
    this.name = name;
    this.age = age;
  }
}

//--------short contstructor---------
class Student4 {
  late String name;
  late int age;
  Student4({this.name = "", this.age = 0});
}

//---------naming constructor--------
class Student5 {
  late String name;
  late int age;
  Student5({this.name = "", this.age = 0});
  Student5.fromMap(Map<String, dynamic> map) {
    name = map['name'];
    age = map['age'];
  }
}

//----------inheritance---------------
class Vehicle {
  late String name;
  late String model;
  int year;
  Vehicle({this.name = "", this.model = "", this.year = 0});
  get getString => print("$name, $model, $year");
}

class Car extends Vehicle {
  late String made_in;
  Car(String name, String model, {this.made_in = ""})
      : super(name: name, model: model);
  get getName => name;
  @override
  get getString => print("$name, $model, $made_in");
}

//-----------abstract class -----------
// can create abstract method and simple method
abstract class Motorcycle {
  String name = "Motocycle";
  void showName();
  int numWheel() => 2;
}

class Honda extends Motorcycle {
  @override
  void showName() {
    print("${super.name}, ${super.numWheel()}");
  }
}

//==============interface=========
class SimpleClass {
  void show(text) => print("$text");
}

class AnotherClass implements SimpleClass {
  @override
  void show(text) => print(text);
}

//==============abstract class to interface======
abstract class Person {
  late String name;
  String getName();
}

class Student6 implements Person, Honda {
  @override
  String getName() => name;

  @override
  late String name;

  @override
  int numWheel() {
    // TODO: implement numWheel
    throw UnimplementedError();
  }

  @override
  void showName() {
    // TODO: implement showName
  }
}

//============mixin=========
mixin Fly {
  void fly() => print("Can fly");
}
mixin Swim {
  void swim() => print("Can swim");
}

class Duck with Fly, Swim {
  Duck() {
    fly();
    swim();
  }
}

class Ducks {
  void quack() => print("Duck quacks");
}

mixin Flys on Ducks {
  void say() {
    quack();
  }
}
mixin Swims on Ducks {
  void swim() => print("Can Swim");
}

class Kpaduck extends Ducks with Swims, Flys {
  Kpaduck() {
    say();
    swim();
  }
}

void main(List<String> args) {
  //--------create object-------
  Student student1; // student1 is object value null
  Student(); // create instance
  Student student2 = Student(); // create object and instance
  //---------setter and getter-----
  student2.name = "Sout Ruoshim";
  student2.age = 20;
  print("Student is ${student2.name} and age: ${student2.age}");

  MyLogin myLogin = MyLogin();
  myLogin.password = "1234";
  print("Password: ${myLogin.hashPassword}");

  //---------constructor-----------
  Student2 st2 = Student2();
  print("default constructor: ${st2.name}");

  Student3 st3 = Student3("Sout Ruoshim", 29);
  print("param constructor: ${st3.name}");

  Student4 st4 = Student4(name: "Sout Ruoshim", age: 30);
  print("short constructor: ${st4.name}");

  Student5 st5 = Student5.fromMap({"name": "sout ruoshim", "age": 30});
  print("naming constructor: ${st5.name}");

  //------------inheritance--------------
  Vehicle vehicle = Vehicle(name: "Toyota", model: "GT", year: 2020);
  vehicle.getString;

  Car car = Car("Lexus", "350", made_in: "Japan");
  car.getString;

  //------------abstract class----------
  Motorcycle honda = Honda();
  honda.showName();
  print(honda.numWheel());

  //===========interface==========
  SimpleClass simpleClass = SimpleClass();
  simpleClass.show("Simple Class");
  AnotherClass anotherClass = AnotherClass();
  anotherClass.show("Another Class");

  Student6 student6 = Student6();
  student6.name = "Sout Ruoshim";
  print(student6.getName());

  //===========mixin=============
  Duck duck = Duck();
  Kpaduck kpaduck = Kpaduck();
}
