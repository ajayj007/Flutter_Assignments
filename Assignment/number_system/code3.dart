import "dart:io";

void main(){

  dynamic num = int.parse(stdin.readLineSync()!);
  dynamic number = num;
  int m = 0;
  while(num!=0){
     int n = num%10;
     
     int prod =1;
     for(int j=1; j<=n; j++){
        
          prod = prod*j;
        
     }
     m = m + prod;
     num = num~/10;
  }
  print(m);
  if(m == number ){
    print("$number is strong number");
  }else{
    print("$number is not strong number..");
  }
}