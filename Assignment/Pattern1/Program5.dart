import "dart:io";
void main() {
  print("Number of rows =");
  int n=int.parse(stdin.readLineSync()!);
  int p=n;
  for(int i=1;i<=n;i++){
    for(int j=1;j<=n;j++){
      stdout.write(" $p ");
    }
    print("");          //new line(nl)
    p--;
  }
}

/* 
op:

Number of rows =
4
 4  4  4  4
 3  3  3  3
 2  2  2  2
 1  1  1  1

 */