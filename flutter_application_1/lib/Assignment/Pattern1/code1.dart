import "dart:io";
void main() {
  print("Number of rows =");
  int n=int.parse(stdin.readLineSync()!);
  for(int i=1;i<=n;i++){
    for(int j=1;j<=n;j++){
      stdout.write("*#");
    }
    print("");          //new line(nl)
  }
}