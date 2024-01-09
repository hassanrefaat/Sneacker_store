abstract class YourLegStates{}

class YourLegInitialState extends YourLegStates {}

class YourLegChangeBottomState extends YourLegStates {}

class YourLegChangeModeState extends YourLegStates {}

class SwitchPasswordVisibilityState extends  YourLegStates{}

class FavSuccessState extends YourLegStates{}
class FavErrorState extends YourLegStates{}
//...........................................................
abstract class CounterStates{}
class CounterInitialState extends CounterStates{}
class CounterPlusState extends CounterStates{
  final int counter;

  CounterPlusState(this.counter);
}
class CounterMinusState extends CounterStates{
  final int counter;

  CounterMinusState(this.counter);

}
class ClearValidationMessageState extends YourLegStates {}
