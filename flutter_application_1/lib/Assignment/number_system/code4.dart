import "dart:io";

void main(){
   int num = int.parse(stdin.readLineSync()!);
   int temp1 = num;
   int temp2 = num;
   int count = 0;

   

   while(temp1 != 0){
     count++;
     temp1 ~/= 10;
   }

   int product(int fact){
     int produc = 1;
     for(int i=1; i<= count; i++){
         produc = produc * fact;
     }
     return produc;
   }

   int sum =0;
   while(temp2 != 0){
     int fact = temp2%10;
     sum = sum + product(fact);
     temp2 ~/= 10;
   }

   if(sum == num){
     print("$num is armstrong number");
   }else{
    print("$num is not armstrong number");
   }

   
}