class Parent{
  void fun(){
    print("In fun Parent");
  }
}
class Child extends Parent{
  void fun(){
    print("In fun Child");
  }
}
void main(){
  Parent obj=Parent();
  obj.fun();
}