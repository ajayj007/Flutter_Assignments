import "dart:io";
void main() {
  print("Number of rows =");
  int n=int.parse(stdin.readLineSync()!);
  int p=1;
  for(int i=1;i<=n;i++){
    for(int j=1;j<=n;j++){
      stdout.write(" $p ");
      p+=2;
    }
    print("");          //new line(nl)
  }
}

/* o/p:

Number of rows =
4
 1  3  5  7 
 9  11  13  15
 17  19  21  23
 25  27  29  31
 
*/