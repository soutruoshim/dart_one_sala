void main(List<String> arguments) {
  
  // ===============simple declare variable================
  int a = 10;
  var b = 20;
  double c = 1.5;
  num d = 10;
  bool e = false;
  String title = "Cambodia";
  dynamic subTitle = "Kingdom of Cambodia";
  print("$title, $subTitle");

  //================null safety===================
  int? a2;
  int? b2;
  // int total = a2 + b2; Error cus a2 and b2 is null
  print(a2);
  a2 ??= 10;
  print(a2);
  int c2 = b2 ?? 0;
  print(c2); // c = 0

  //===============late keyword=================
  late int total;
  // print(total); can't print before assign value
  int a3 = 10;
  int b3 = 20;

  total = a3 + b3;
  print(total);

  //================dynamic and var===============

  var a4 = 10;
  // a4 = 10.5; Error cus a4 initial with int
  dynamic b4 = 10;
  b4 = 10.9; // can change value and data type
  print(b4);
  //===============num & boolean==================
  num age = 28;
  num pi = 3.14;
  int year = 2000;
  double hafl = 0.5;

  bool isTrue = true;
  bool isFalse = false;

  // final & const for static value of variable
  // final can declare in class and top class
  // const can declare on top class only
  final double pi2 = 3.14;
  const double PI2 = 3.14;
  print('$pi2, $PI2');
}
