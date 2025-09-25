String determineBmiState(double bmiValue){
  if(bmiValue>=18.5 && bmiValue<=25){
    return "Normal";
  }
  else if(bmiValue>=5 && bmiValue<=18.5){
    return "Underweight" ;
  }
  else{
    return "Overweight";
  }
}