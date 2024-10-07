/*void main() {
  print("Start Code");
  void fun() {
    print("In Fun");
  }
  print("Mid of Code");
  fun();
  print("End Code");
}*/

/*void fun() {
  print("Start Fun");
  void run() {
    print("In Run");
  }
  run();
  print("End  Fun");
}
void main() {
  print("Start Code");
  fun();
  
  print("End Code");
}*/

/* Anonymous Function 
void main() {
  (){
    print("Hello");
    }
    ();
}*/

/*void main() {
  print("Start Code");
  int retval=(int a,int b){
    print("Hello Incubators");
    return a+b;
    }(10,30);
  print(retval);
  print("End Code");      
}*/

/*int fun(int x,int y) {
  print("In Fun");
  return x+y;
}
void main() {
  print(fun);
}*/

/*var add=(int x,int y){
  print("In Fun");
  return x+y;
};
void main(){
  int x=10;
  print(x.runtimeType);
  print(add.runtimeType);
}*/

/*var add=(int x,int y) {
  print("In Function");
  return x+y;
};
void main(){
  int x=10;
  print(x.runtimeType);
  print(add(10,20));
}*/

/*var a=(int x,int y)=>x*y;
void main() {
  int x= 10;
  print(x.runtimeType);
  print(a(10,20));
}*/

var add=(int x,int y){                         //Anonymous or Unnamed Function
  print("In Anonymous Function");
  return x+y;
};
int fun(int x,int y){                           //Normal Funtion
  print("In Normal Function");
  return x~/y; //Integer Divide
}
/*void main() {
  print(fun(10,20));

  print(add(50,30));

  print("Hashcode:${fun.hashCode}");
  print("Identity Hashcode:${identityHashCode(fun)}");
  
  print("Hashcode:${add.hashCode}");
  print("Identity Hashcode:${identityHashCode(add)}");

}*/

class Employee{
  int? empId;
  String? empName;
  double? empSal;

  void empInfo() {
    print("Emp Name: $empName");
    print("Emp ID: $empId");
    print("Emp Salary: $empSal");
  }
}
void main() {
  Employee obj=new Employee();
  obj.empInfo();

  obj.empId=18;
  obj.empName='Kanha';
  obj.empSal=2.5;

  obj.empInfo();
}


