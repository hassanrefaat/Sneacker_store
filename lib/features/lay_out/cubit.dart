import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../views/Home_body_screen.dart';
import '../../views/Notification.dart';
import '../../views/favourite.dart';
import '../../views/profile_body_screen.dart';
import 'lay_out_states.dart';

class YourLegCubit extends Cubit<YourLegStates> {
  YourLegCubit() : super(YourLegInitialState());

  static YourLegCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> BottomScreens = [
    HomeScreen(),
    FavoritesScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  void changeBottomScreen(int index) {
    currentIndex = index;
    emit(YourLegChangeBottomState());
  }

  bool showPassword = true;
  //bool showPassword = false;
  String validationMessage = ''; // Assume you have a validation message in your state

  void clearValidationMessage() {
    // Clear the validation message and emit the state
    validationMessage = '';
    emit(ClearValidationMessageState());
  }

  void switchPasswordVisibility() {
    showPassword = !showPassword;
    emit(SwitchPasswordVisibilityState());
  }

  void toggleFavorite() {
    emit(FavSuccessState());
  }


}
class CounterCubit extends Cubit<CounterStates>{
  CounterCubit(): super(CounterInitialState());
  static CounterCubit get(context)=>BlocProvider.of(context);// 3l4an a3ml object we 2kdr ast5dmh f ay makan
  int counter =1;

  void minus(){
    counter--;
    emit(CounterMinusState(counter));
  }
  void plus(){
    counter++;
    emit(CounterPlusState(counter));
  }

}