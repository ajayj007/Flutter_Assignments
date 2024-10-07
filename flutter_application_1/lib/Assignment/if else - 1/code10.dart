void main() {
  int unit=395 ;
  int bill;
  if(unit<0){
    print("Unit is unvalid");
  }else if(unit>=0 && unit<90){
    print("No charge");
  }else if(unit>=90 && unit<180){
    bill=unit*6;
    print(bill);
  }else if(unit>=180 && unit<250){
    bill=unit*10;
    print(bill);
  }else{
    bill=unit*15;
    print(bill);
    
  }
}