import 'package:crypto/crypto.dart';
import 'dart:convert';

//=========public class========
class Student{
  late String name;
  late int age;
}

//==========private class=======
class _Subject{
  late String title;
  late double duration;
}

//========== create class setter getter==========
class MyLogin{
  late String _pass;

  set password(String text){
    var bytes = utf8.encode(text);
    var digest = sha1.convert(bytes);
    _pass = digest.toString();
  }
  String get hashPassword{
    return _pass;
  }
}
//=============constructure=============
class Student2{
   late String name;
   late int age;
   // default constructor
   Student2(){
      name = "Sout Ruoshim";
      age = 30;
   }
}
class Student3{
   late String name;
   late int age;
    // parameterized constructor
   Student3(String name, int age){
      this.name = name;
      this.age = age;
   }
}
class Student4{
  late String name;
  late int age;
     // parameterized constructor with short
  Student4({this.name = "", this.age = 0});
}
//==========named constructor =====================
class Student5{
  late int id;
  late String name;
  Student5({this.id = 0, this.name = "unnamed"});
  Student5.fromMap(Map<String, dynamic> map){
    id = map['id'];
    name= map['name'];
  }
}

//===============inheritance================
class Vehicle {
  late String name;
  late String model;
  int year;
  Vehicle({this.name = "T1", this.model="Sport", this.year = 2010});
  get getString => print("$name, $model, $year");
}
class Car extends Vehicle{
  Car(String name, String model): super(name:name, model: model);
  get getName => name;
  
  @override
  get getString => print("$name, $model");
}
//================abstract class====================
// can create abstract mothod and simple method
abstract class Motorcycle{
  String motoName  = "Motorcycle";
  void showName();
  int numWheel() => 2;
}
class Honda extends Motorcycle{
  @override
  void showName() {
      print("${super.motoName}, ${super.numWheel()}");
  }
}
//===============interface===================
// all property and mothod need override in subclass
class SimpleClass{
   void show(text) => print("$text");
}
class AnotherClass implements SimpleClass{
  @override
  void show(text) => print(text);
}
//===============abstract to interface===================
abstract class Person{
  late String name;
  String getName();
}
class Student6 implements Person, AnotherClass{
  @override
  late String name;

  @override
  String getName() => name;

  @override
  void show(text) => print("$text");
}

void main(List<String> args) {
  // ----------Create Object
   Student student1;              // student1 is object value null
   Student();                     // create instance
   Student student2 = Student();  // create student2 object and instance Student()
  
  // ----------Setter And Getter
   student2.name = "Sout Ruoshim";
   student2.age = 29;
   print("${student2.name}, ${student2.age}");

   MyLogin login = MyLogin();
   login.password = "1234";
   print("Pass: ${login.hashPassword}");

  //------------constructor
  Student2 st2 = Student2();
  print("${st2.name}, ${st2.age}");

  Student3 st3 = Student3("Sout", 29);
  print("${st3.name}, ${st3.age}");

  Student4 st4 = Student4(name: "Sout Ruoshim", age: 20);
  print("${st4.name}, ${st4.age}");

  Student5 st5 = Student5.fromMap({"id": 1, "name":"Sout Ruoshim"});
  print("${st5.id}, ${st5.name}");

  //-------------inheritance
  Car car = Car("Toyota", "Sport");
  car.getString;
  //--------------abstract
  Motorcycle motorcycle = new Honda();
  motorcycle.showName();
  print(motorcycle.numWheel());

  //-------------interface
  SimpleClass simpleClass = SimpleClass();
  simpleClass.show("this interface");
  AnotherClass anotherClass = AnotherClass();
  anotherClass.show("This is sub class of interface");
  //-------------abstract to interface
  Student6 stu6 = Student6();
  stu6.name = "Sout Ruoshim interface";
  print(stu6.getName());
  stu6.show("Interface");

}