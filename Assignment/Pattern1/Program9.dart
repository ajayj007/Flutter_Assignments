import "dart:io";
void main() {
  print("Number of rows =");
  int n=int.parse(stdin.readLineSync()!);
  int p=1;
  for(int i=1;i<=n;i++){
    for(int j=1;j<=n;j++){
      stdout.write(" $p ");
      p++;
    }
    print("");
    p--;          //new line(nl)
  }
}

/*
op:
Number of rows =
4
 1  2  3  4
 4  5  6  7
 7  8  9  10
 10  11  12  13
 */