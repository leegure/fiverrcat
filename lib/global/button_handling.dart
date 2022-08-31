import 'package:flutter/foundation.dart';

class ButtonHandling extends ChangeNotifier{

  bool isFourbetEnabled = true;

  void deActivateFourBetButton(bool buttonState){
    isFourbetEnabled = false;
    print('isEnabled=$isFourbetEnabled');
    notifyListeners();
  }
  // void deactivateButton(bool buttonState){
  //   isEnabled = isEnabled!;
  //   print('isEnabledddddd=$isEnabled');
  //   notifyListeners();
  // }
  // void activateButton(bool buttonState){
  //   isEnabled = true ;
  //   notifyListeners();
  // }

}


class ButtonState {

  bool isEnabled;

  ButtonState({ this.isEnabled = true});
  void toggleButton() {
    isEnabled = !isEnabled;
  }

}
