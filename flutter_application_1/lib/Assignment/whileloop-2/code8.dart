void main() {
  int i=942111423;
  while(i>0){
    int l=i%10;        //Get the last digit of i
    if(l%2==0){        //Check if l is even,if yes then print sqaure of l
      print(l*l);
    }
    i~/=10;           //Remove last digit from i
  }

}