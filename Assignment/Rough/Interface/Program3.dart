abstract class Parent1{
  void fun(){
    print("In fun Parent1");
  }
}
abstract class Parent2{
  void run(){
    print("In run Parent2");
  }
}

class Child implements Parent1,Parent2{
  void fun(){
    print("In fun");
  }
  void run(){
    print("In Run");
  }
}
void main(){
  Child obj=Child();
  obj.fun();
  obj.run();
}