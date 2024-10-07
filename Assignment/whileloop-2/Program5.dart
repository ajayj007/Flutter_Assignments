import 'dart:io';
void main(){
  print("Enter number=");
  int i=int.parse(stdin.readLineSync()!);
  int fact=1;
  int num=i;
  while(i>=1){
    fact=fact*i;
    i--;
  }
  print("Factorial of $num is $fact");
}
