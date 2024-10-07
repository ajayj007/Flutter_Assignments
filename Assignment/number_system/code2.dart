import "dart:io";

void main(){

  int num = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for(int i=1; i<num; i++){
     if(num%i==0){
      sum++;
      if(sum>2){
        break;
      }
     }
  }
    
    if(sum<2){
      print("$num is prime number");
    }else{
     print("$num is not prime number");
    }
}