import "dart:io";
void main() {
  print("Number of rows =");
  int n=int.parse(stdin.readLineSync()!);
  for(int i=1;i<=n;i++){
    
    for(int j=1;j<=n;j++){
      if(i%2==0){
        stdout.write('1');
      }else{
        stdout.write('0');
      }
      
    }
    print("");          //new line(nl)
  }
}