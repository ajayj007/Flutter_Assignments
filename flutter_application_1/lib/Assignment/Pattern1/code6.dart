import "dart:io";
void main() {
  print("Number of rows =");
  int n=int.parse(stdin.readLineSync()!);
  int p=14;
  for(int i=1;i<=n;i++){
    for(int j=1;j<=n;j++){
      stdout.write(" $p ");
    }
    print("");          //new line(nl)
    p++;
  }
}

/* o/p:
Number of rows =
5
 14  14  14  14  14
 15  15  15  15  15
 16  16  16  16  16 
 17  17  17  17  17
 18  18  18  18  18
 */