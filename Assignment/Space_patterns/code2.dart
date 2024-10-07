import "dart:io";

void main(){

  int row = int.parse(stdin.readLineSync()!);

  for(int i=1; i<= row; i++){
      int count = 1;
      for(int j = 1; j<= row-i; j++){
         stdout.write(" ");
         count++;
      }

      for(int j=1; j<= i; j++){
        stdout.write("$count");
        count++;
      }
      print("");
   }
}