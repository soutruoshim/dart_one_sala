//==== dynamic return type=====
getName(name){
  return "Hello $name";
}

//===== arrow function=======
bool isPositiveNum(int a) => a >= 0;
void showSum(int a, int b) => print("a + b = ${a+b}");

//======positional optional parameter[...]============
showProfile(String name, [int age = 0, String gender = "male"]){
   print("Name: $name, Age: $age, Gender: $gender");
}

//======Naming optional parameter{...}=============
showProfile2(String name, {int age = 0, String gender = "male"}){
   print("Name: $name, Age: $age, Gender: $gender");
}
void main(List<String> args) {
   print(getName("Sout Ruoshim"));
   print(isPositiveNum(10));
   showSum(10, 10);

   //call positional optional parameter
   showProfile("Sout Ruoshim");
   showProfile("Sout Ruoshim", 29);
   showProfile("Sout Ruoshim", 20 , "Male");

   //call naming optional parameter
   showProfile2("Sout Ruoshim");
   showProfile2("Sout Ruoshim", age: 29);
   showProfile2("Sout Ruoshim", gender: "Male", age:  29);


}
