import "dart:io";
void main(){
  print("Enter");
  int i=int.parse(stdin.readLineSync()!);
  while(i>=1){
    if(i%2==0){
      while(i>=1){
        print(i);
        i--;

      }
    }else{
      while(i>=1){
        print(i);
        i-=2;
      }
    }
    i--;
  }
}
