import "dart:io";
void main(){
  print("Number of rows =");
  int n=int.parse(stdin.readLineSync()!);
  for(int i=1;i<=n;i++){
    int p=i;
    for(int j=1;j<=n;j++){
      stdout.write("$p ");
      if(j==n-2){
        p+=1;
      }
    }
    print("");
  }
}