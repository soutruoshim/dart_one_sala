void main(List<String> args) {
     var a = 10;
     var b = 20;
     var c = 30;
     //==========simple if condition
     if(a > b){
       print(a);
     }else if(a < b){
       print(b);
     }else if(a > 0 && b >= 0){
       print(b);
     }else if(a == 0 || c!= 0){
       print(b);
     }else{
       print("equal");
     }

     //============Ternary Operator
     bool bCondtion = (a > 0 ? true: false);
     print(bCondtion);
     String cConditon = (bCondtion? "Hello": "Hi");
     int d = a > 0 ? 1 : 2;
     print(d);

     //===========for loop
     String message = "Hello World";
     for(var i = 0; i < 5; i++){
       print("$i $message");
     }
     print("List object");
     List numbers = [1,2,3,4];
     for(var x in numbers){
       print(x);
     }

    // while and do while loop
    int order = 1;
    while(order < 10){
      print(order++);
    }
    do{
      print(order);
      order--;
    }while(order > 1);

    // break and continues
    order = 1;
    print("break statment");
    while(order < 10){
      if(order == 5) break; // stop loop
      print("${order++}");
    }
    // print("Continue statment");
    // order = 1;
    // while(order < 10 ){
    //   if(order == 3) continue; // skip the loop print 5
    //   print("${order++}");
    // }

    // switch case
    order = 1;
    switch(order){
      case 1: print(order); break;
      case 2: print(order); break;
      default: print("nothing");
    }

}