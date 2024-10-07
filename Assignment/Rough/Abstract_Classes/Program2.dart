// ignore_for_file: unused_local_variable

abstract class Coder{
  void devType();
}
class Employee extends Coder{
  void devType(){
    print("Flutter Dev");
  }
}
void main(){
  Employee obj=Employee();
  obj.devType();
}