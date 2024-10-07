abstract class Parent{
  void fun(){
    print("In fun Parent");
  }
}
class Child extends Parent{
  void run(){
    print("In run Child");
  }
}
void main(){
  Child obj=Child();
  obj.fun();
  obj.run();
}