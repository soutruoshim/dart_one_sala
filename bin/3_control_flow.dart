void main(List<String> args) {
     var a = 10;
     var b = 20;
     var c = 30;
     //==========simple if condition===========
     if(a > b){
       print(a);
     }else if(a < b){
       print(b);
     }else if(a > 0 && b >= 0){
       print(b);
     }else if(a == 0 && c!=0){
       print(b);
     }else {
       print("equal");
     }

     //============Ternary Operator==========
     bool bCondtion = (a > 0 ? true: false);
     print(bCondtion);
     String cConditon = (bCondtion? "Hello": "Hi");
     print(cConditon);
     int d = a > 0 ? 1 : 2;
     print(d);

     //===========for loop===================
    String message = "Hello Dart";
    for(var i = 0; i < 5; i++){
      print("$i $message");
    } 
    List numbers = [0,2,4,5];
    for(var num in numbers){
        print(num);
    }

    //============== while and do while loop==============
    int order = 1;
    while(order <= 5){
        print("order ${order++}");
    }
    do{
      print("order $order");
      order--;
    }while(order >= 1);

    // break and continues
    order = 1;
    while(order < 5){
      if(order == 3) break;
      print("${order++}");
    }
    order = 1;
    while(order < 5){
      if(order == 3) continue;
      print("order continue ${order++}");
    }


    // switch case
    order = 1;
    switch(order){
      case 1: print(order); break;
      case 2: print(order); break;
      default: print("nothing");
    }

}