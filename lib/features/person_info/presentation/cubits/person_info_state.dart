part of 'person_info_cubit.dart';

@immutable
abstract class PersonInfoState {}

class PersonInfoInitial extends PersonInfoState {}

class ChangeGenderState extends PersonInfoState {}

class ChangeHeightState extends PersonInfoState {}

class ChangeUnitsState extends PersonInfoState {}

