import 'package:pokercat/chart/constarants/selection.dart';

class FourBetToAllin {
  TournaPosition opponentTournaPosition;
  TournaPosition myTournaPosition;
  TournaStack tournaStack;

  FourBetToAllin(
      {required this.tournaStack,
      required this.myTournaPosition,
      required this.opponentTournaPosition});

  String changeString() {
    if (tournaStack == TournaStack.sixty &&
        myTournaPosition == TournaPosition.SB &&
        opponentTournaPosition == TournaPosition.HJ) {
      return 'All-in';
    } else
      return '4Bet';
  }
}
