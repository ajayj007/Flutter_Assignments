import "dart:io";
void main(){
  print("Number of rows =");
  int n=int.parse(stdin.readLineSync()!);
  int p=1;
  for(int i=1;i<=n;i++){
    int temp=p;
    for(int j=1;j<=n;j++){
      stdout.write("$temp");
      temp+=2;
    }
    p+=2;
    print("");
  }
}