import 'dart:io';
void main(){
  print("Enter days :");
  int day=int.parse(stdin.readLineSync()!);
  while(day>=0){
    if(day>=1){
      print("$day days remaining");
    }else {
      print("$day days Assignment is overdue");
    }
    day--;
  }
}