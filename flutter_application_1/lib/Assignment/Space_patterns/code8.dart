import "dart:io";

void main(){

  int row = int.parse(stdin.readLineSync()!);
  int count = 2;
  for(int i=1; i<= row; i++){
      
      for(int j = 1; j<=i-1; j++){
         stdout.write(" ");
         
      }

      for(int j=1; j<= row-i+1; j++){
        
        stdout.write(count);
        count= count+2;
        
      }
      print("");
   }
}