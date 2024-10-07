import 'dart:io';
void main(){
  print("Number of rows =");
  int n=int.parse(stdin.readLineSync()!);
  int p=1;
  for(int i=1;i<=n;i++){
    for(int j=1;j<=n;j++){
      if(i%2==0){
        stdout.write("a ");
      }else{
        stdout.write("$p ");
      }
    }
    p++;
    print(" "); 
  }
}