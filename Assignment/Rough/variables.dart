/*class Demo{
  int x=10;
  static int y=20;

  int get getY => y;

  set setY(int data)=>y=data;
}
void main(){
  Demo obj=Demo();

  print(obj.x);
  print(obj.getY);

  obj.setY=50;

  print(obj.getY);
}*/

class Demo{
  static int x=10;

  int get getX=>x;

  set setX(int data)=>x=data;
}
void main(){
  Demo obj1=Demo();
  Demo obj2=Demo();

  print(obj1.getX);
  print(obj2.getX);

  obj1.setX=50;
  
  print(obj1.getX);
  print(obj2.getX);
}


