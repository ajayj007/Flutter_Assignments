import 'dart:io';
void main(){
  print("Number of rows =");
  int n=int.parse(stdin.readLineSync()!);
  int p=2;
  for(int i=1;i<=n;i++){
    for(int j=1;j<=n;j++){
      stdout.write("$p ");
      p+=2;
    }
    
    print(" ");
  }
}