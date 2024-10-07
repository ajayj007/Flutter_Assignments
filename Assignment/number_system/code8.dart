import "dart:io";

void main(){
   int num = int.parse(stdin.readLineSync()!);
   int temp1 = num;
  
   int count = 0;
    
   
   
   int last = 0;
   while(temp1 != 0){
     last = temp1%10;

     if(last == 0){
      count++;
     }
     temp1 ~/=10; 
   }


   if(count > 0){
     print("$num is Duck number");
   }else {
    print("$num is not Duck number");
   }

   
}