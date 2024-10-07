import "dart:io";
void main(){
  print("Number of rows =");
  int n=int.parse(stdin.readLineSync()!);
  int p=1;
  for(int i=1;i<=n;i++){
  
    for(int j=1;j<=n;j++){
      int temp=p*p;
      stdout.write("$temp ");
      p++;
    }
    print("");
  }
}