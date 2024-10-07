import "dart:io";

void main(){
   int num = int.parse(stdin.readLineSync()!);
   
   int temp2 = num;
   

   
   int sum =0;
   while(temp2 != 0){
     int fact = temp2%10;
     sum = sum*10 + fact;
     temp2 ~/= 10;
   }

   if(sum == num){
     print("$num is palindrome number");
   }else{
    print("$num is not palindrome number");
   }

   
}