void main(){
  int i=1;
  int sum=0;
  int x=1;
  while(i<=10){
    if(i%2==0){
      sum=sum+i;

    }else if(i%2==1){
      x=x*i;

    }
    i++;
  }
  print("Sum of Even No. bet 1-10=$sum");
  print("Product of Odd No. bet 1-10=$x");
}