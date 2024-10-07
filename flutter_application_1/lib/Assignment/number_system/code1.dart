import "dart:io";

void main(){

  int num = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for(int i=1; i<num; i++){
     if(num%i==0){
      sum = sum + i;
     }
  }

  if(sum == num ){
    print("$num is perfect number");
  }else{
    print("$num is not perfect number");
  }
}