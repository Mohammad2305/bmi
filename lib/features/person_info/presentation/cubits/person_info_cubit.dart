import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'person_info_state.dart';

class PersonInfoCubit extends Cubit<PersonInfoState> {
  PersonInfoCubit() : super(PersonInfoInitial());

  // change gender
  bool isMale = true;
  int activeIndex = 0;
  void changeGender(int index){
    if(activeIndex!=index){
      isMale = !isMale;
    }
    activeIndex = index ;
    emit(ChangeGenderState());
  }

  // change height
  double height = 163;
  void changeHeight(double value){
    height = value;
    emit(ChangeHeightState());
  }

  // change weight and age
  double weight = 78.5;
  int age = 25;
  void minusUnit(int index){
    index==0 ? (weight>0 ? weight-=0.1 : null) : (age>0 ? age-- : null);
    emit(ChangeUnitsState());
  }
  void addUnits(int index){
    index==0 ? weight+=0.1 : age++;
    emit(ChangeUnitsState());
  }
}
