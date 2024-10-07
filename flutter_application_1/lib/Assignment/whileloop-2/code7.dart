void main() {
  int i=942111423;
  int n=0;
  while(i>0){
    int l=i%10;   //Getting the last digit of i
    if(l%2==1){   //Check if l is odd,if yes then increment n by 1
      n++;
    }
    i~/=10;      //Remove the last digit from i
  }
  print("Count of ood Digits = $n");
}
