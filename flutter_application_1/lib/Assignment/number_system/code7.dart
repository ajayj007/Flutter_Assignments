import "dart:io";

void main(){
   int num = int.parse(stdin.readLineSync()!);
   int sum = 0;
   
   for(int i =1; i<num; i++){
      if(num%i==0){
         sum = sum + i;
         print(sum);
      }
   }
   if(sum > num){
     print("$num is Abundant number");
   }else{
    print("$num is not Abundant number");
   }

   
}