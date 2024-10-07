import 'dart:io';
void main() {
  print("Enter number =");
  int i=int.parse(stdin.readLineSync()!);
  int n=0;
  while(i!=0){
    i~/=10;
    n++;
  }
  print("Count of Digits = $n ");
}