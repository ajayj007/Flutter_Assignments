void main(){
  int x=25 ;
  if(x%3==0 && x%5==0){
    print("$x is divisible by both 3 and 5");
  }else if(x%3==0){
    print("$x is divisible byonly 3");
  }else if(x%5==0){
    print("$x is divisible by 5");
  }else{
    print("$x is not divisible by either 3 or 5");
  }
}