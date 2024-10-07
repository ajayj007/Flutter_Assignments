abstract class Parent{
  void fun();
}

class Child extends Parent{
  void fun(){
    print("In Fun");
  }
}
void main(){
  Child obj=Child();
  obj.fun();
}