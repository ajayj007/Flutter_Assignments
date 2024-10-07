// An Abstract class can't be instantiated
abstract class Parent{
  void fun();
}

class Child extends Parent{
  void fun(){
    print("In Fun");
  }
}
void main(){
  Parent obj=Parent();
  obj.fun();
}

/*
Error: The class 'Parent' is abstract and can't be instantiated.
  Parent obj=Parent();
             ^^^^^^
*/