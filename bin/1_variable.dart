void main(List<String> arguments) {
   int a = 10;
   var b = 7.0;
   double c = 1.5;
   bool d = false;
   String title = "Cambodia";
   String subTitle = 'Kingdom of Wonder';
   print("$title, $subTitle");

   //=============== late keyword 
   late int total2;
   int a2 = 10;
   int b2 = 20;
   total2 = a2 + b2;
   print('Total is $total2');

   late int total3;
   // print(total3); error cos total not yet have value

   //============= Null
   int? a1; // a can be null;
   int? b1;
   // int total = a + b; error cos a1 and b1 null

   //=========== ??= operator for assign initail to null variable
   a1 ??= 10;
   print(a1);
  //  a1 ??= 5;
  //  print(a1); still 10

   //=========== ??
   int? a4;
   a4 = 23;
   int b4 = a4 ?? 0; // if a is null assign 0 to b;
   print(b4);


  //===========var and dynamic keyword
  var a5 = 10;
  // a5 = 10.5; error cos a5 initialize is int
  dynamic a6 = 10;
  a6 = 10.5;
  print(a6);


  // number
  num age = 23;
  num pi = 3.14;
  int year = 2000;
  double hafl = 0.5;

  // Boolean
  bool isTrue = true;
  bool isFalse = false;

  // final & const for static value of variable
  // final can declare in class and top class
  // const can declare on top class only
   final double pi2 = 3.14;
   const double PI2 = 3.14;
   print('$pi2, $PI2');


}
