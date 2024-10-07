// ignore_for_file: unused_local_variable

class Parent{
  void career(){
    print("Family Business");
  }
  void marry(){
    print("ABC");
  }
}
class Child extends Parent{
  @override
  void marry(){
    print("XYZ");
  }
}
void main(){
  Child obj=new Child();
  obj.career();
  obj.marry();
}