class Parent{
  void career(){
    print("Family Business");
  }
  dynamic marry(){
    print("ABC");
    return 10;
  }
}
class Child extends Parent{
  @override
  dynamic marry(){
    print("XYZ");
    return 10.5;
  }
}
void main(){
  Child obj=new Child();
  obj.career();
  obj.marry();
}

// dynamic can change the Datatype at run time