/*class Company{
  int empCount=1500;
  String cmpName="Amazon";

  void Company(){
    print("In Constructor");
  }
  void cmpInfo(){
    print("In cmpInfo");
  }
}
void main() {
  Company cmp=Company();
}
// Constructors can't have a return type.
*/

/*
class Company{
  int? empCount;
  String? cmpName;

  Company(){
    print("In Constructor");
    print(empCount);
    print(cmpName);
  }
}
void main() {
  Company cmp=Company();
}
O/P:
In Constructor
null
null
*/

/*class Company{
  int? empCount;
  String? cmpName;

  Company(int empCount,String cmpName){
    print("In Constructor");
    print(empCount);
    print(cmpName);
  }
}
void main() {
  Company cmp=Company(200,"Amazon");  
}
O/p:
In Constructor
200
Amazon
*/

/*class Company{
  int? empCount;
  String? cmpName;

  Company(int empCount,String cmpName){
    print("In Constructor");
    print(this.empCount);
    print(this.cmpName);
  }
}
void main() {
  Company cmp=Company(200,"Amazon");  
}
O/P:
In Constructor
null
null
*/

class Employee{
  int? empId;
  String? empName;
  double? empSal;

  Employee(){
    print("No-Arg Constructor");
  }

  Employee.para(int empId,String empName,double empSal){
    print("Parameterized");
    print(empId);
    print(empName);
    print(empSal);
  }
}
void main(){
  Employee obj1=new Employee();
  Employee obj2=new Employee.para(21, "Ashish", 1.5);
}