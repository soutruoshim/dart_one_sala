import 'dart:convert';

void main(List<String> args) {
  List myList = [true]; // have one item true
  myList.add(12);
  myList.add("Hi");

  print(myList.isEmpty);
  print(myList.length);
  print(myList);
  print(myList.contains("Hi"));

  //set data type to list
  List<String> myList2 = [];
  // myList2.add(1); Error cus can add string only

  // Read List
  print("Print element");
  myList.forEach((element) => print(element));

  //functions
  myList.remove("Hi");
  myList.insert(1, "New");
  myList.removeAt(0);
  print(myList);

  //=======sort======
  List<int> numbers = [3, 2, 8, 7, 28, 90];
  print(numbers);
  numbers.sort(((a, b) => a.compareTo(b)));
  print(numbers);

  List<int> numbers2 = numbers.where((element) => element > 10).toList();
  print(numbers2);

  //========convert list=====
  List<int> numInts = [5, 3, 5, 6, 7, 9];
  print(numInts);
  List<double> numDoubles = numInts.map((e) => e.toDouble()).toList();
  print(numDoubles);

  List<String> numString = List.from(numInts.map((e) => "num $e"));
  print(numString);

  //===========map==========
  var myMap = new Map();
  myMap[1] = "10";
  myMap["name"] = "RUPP";
  myMap["isbool"] = true;
  print(myMap);

  Map<String, String> words = {};
  words["apple"] = "ផ្លែប៉ោម";
  words["ball"] = "បាល់";
  print(words);

  Map<String, dynamic> jsonData = {
    "id": 1,
    "product": "Macbook Pro",
    "price": 230
  };
  jsonData["qty"] = 20; // add qty 20 to map
  jsonData["date"] = DateTime.now().toString(); // add date time to map
  print(jsonData);

  jsonData.addAll({"qty": 10}); // add qty to map
  jsonData.putIfAbsent("sold", () => 4);
  jsonData.putIfAbsent("sold", () => 5);
  print(jsonData);

  print(jsonData.keys);
  print(jsonData.values);
}
