import "dart:io";
void main() {
  print("Number of rows =");
  int n=int.parse(stdin.readLineSync()!);
  for(int i=1;i<=n;i++){
    int p=i;
    for(int j=1;j<=n;j++){
      stdout.write(" $p ");
      p++;
    }
    print("");          //new line(nl)
  }
}

/* o/p:
Number of rows =
4
 1  2  3  4
 2  3  4  5
 3  4  5  6
 4  5  6  7
*/