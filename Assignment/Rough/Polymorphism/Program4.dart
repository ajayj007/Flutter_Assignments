class Demo{

}
class DemoChild extends Demo{

}
class Parent{
  void carrier(){
    print("Family Business");
  }
  Demo marry(){
    print("ABC");
    return Demo();
  }
}

class Child extends Parent{
  DemoChild marry(){
    print("XYZ");
    return DemoChild();
  }
}

void main(){
  Child obj=Child();
  obj.carrier();
  obj.marry();
}