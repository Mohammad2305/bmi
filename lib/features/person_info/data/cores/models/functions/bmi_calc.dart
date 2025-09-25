import 'dart:math';

double calcBmi(double weight, double heightCm){
  double resultBmi = weight/pow(heightCm/100, 2);
  return resultBmi;
}