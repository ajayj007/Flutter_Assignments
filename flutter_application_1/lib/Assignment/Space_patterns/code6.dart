import "dart:io";

void main(){

  int row = int.parse(stdin.readLineSync()!);

  for(int i=1; i<= row; i++){
    
      for(int j = 1; j<= row-i; j++){
         stdout.write(" ");
         
      }

      for(int j=1; j<= i; j++){
        int count = row-i+1;
        stdout.write(count);
        
      }
      print("");
   }
}