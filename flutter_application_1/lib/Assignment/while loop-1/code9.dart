void main(){
  int numDays=7;
  while(numDays>=0){
    if(numDays>0){
      print("$numDays days remaining");
    }else{
      print("$numDays days, Assignment is Overdue");
    }
    numDays--;
  }
}