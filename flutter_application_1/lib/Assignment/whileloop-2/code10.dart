//Palindrome number check
void main() {
  int i=2332;
  int n=i;
  int rev=0;
  while(i>0){

    int l=i%10;
    rev=(rev*10)+l;
    i~/=10;
  }
  print(rev);
  if(n==rev){
    print("$n is palindrome number");
  }else{
    print("$n is not palindrome");
  }  
  
}