import "dart:io";
void main(){
  print("Number of rows =");
  int n=int.parse(stdin.readLineSync()!);
  int p=0;
  int q=1;
  for(int i=1;i<=n;i++){
    if(i%2==1){
      p=0;
      q=1;
    }else{
      p=1;
      q=0;
    }
    for(int j=1;j<=n;j++){
      if(j%2==1){
        stdout.write('$p ');
      }else if(j%2==0){
        stdout.write('$q ');
      }
    }
    print(' ');
  }
}