void main(List<String> args) {
    print(getName());
    print(getNameArr());
    print(sum(10, 10));
    print(sum1(1, 2));
    sum3(1, 2);

    //=========call optional operator type 1
    // put paramater match place in function
    showProfile("Sout Ruoshim");
    showProfile("Sout Ruoshim", 25);
    showProfile("Sout Ruoshim", 25, "male");

    //=========call optional operator type 2
    showProfile2("Sout Ruoshim");
    showProfile2("Sout Ruoshim", age: 25);
    showProfile2("Sout Ruoshim", age: 20, gender: "male");

   
    
}
getName(){
    print("Hi Sout Ruoshim");
}

int sum(a, b){
  return a + b;
}
//======== Arrow function
getNameArr() => "Hi Sout Ruoshim"; 
int sum1(a, b) => a + b;
void sum3(a, b) => print(a + b);

// ===========Optional Operator
// type 1 
showProfile(String name, [int age = 0, String gender = "male"]){
   print("$name, $age, $gender");
}
// type 2 namming optional parameter
showProfile2(String name, {int age = 0, String gender = "female"}){
   print("$name, $age, $gender");
}
