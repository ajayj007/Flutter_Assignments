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
   if(sum == (num-1)){
     print("$num is Deficient number");
   }else{
    print("$num is not Deficient number");
   }

   
}