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
    } else if (tournaStack == TournaStack.sixty &&
        myTournaPosition == TournaPosition.BB &&
        opponentTournaPosition == TournaPosition.HJ) {
      return 'All-in';
    } else if (tournaStack == TournaStack.fifty|| tournaStack == TournaStack.forty|| tournaStack == TournaStack.thirtyfive|| tournaStack == TournaStack.thirty || tournaStack == TournaStack.twentyfive){
      return 'All-in';
    }
      return '4Bet';
  }
}
