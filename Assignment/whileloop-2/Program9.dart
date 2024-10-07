//Reversing the number
import 'dart:io';
void main() {
  print("Enter number =");
  int i=int.parse(stdin.readLineSync()!);
  int rev=0;
  while(i>0){
    int l=i%10;
    rev=(rev*10)+l;
    i~/=10;
  }
  print(rev);
}