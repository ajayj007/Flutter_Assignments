class Demo{
  int x=30;
}
class Parent extends Demo{
  int x=10;
  Parent(){
    print("In Parent Constructor");
    print(x);
  }
}
class Child extends Parent{
  int x=20;
  Child(){
    print("In Child Constructor");
    print(x);
  }
}

void main(){
  // ignore: unused_local_variable
  Child obj=new Child();
}