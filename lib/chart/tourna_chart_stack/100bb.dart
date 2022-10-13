import '../common/progress_info_model.dart';
import '../constarants/selection.dart';

Map<String, ProgressInfo> hundredStack(Selection tournaSelection) {
  //스택, 내 포지션,상대 포지션,상대 액션 선택됨
  if (tournaSelection.opponentAction != OpponentAction.none &&
      tournaSelection.myTournaPosition != TournaPosition.none &&
      tournaSelection.opponentTournaPosition != TournaPosition.none) {
    //raise pot
    if (tournaSelection.opponentAction == OpponentAction.raise) {
      if(tournaSelection.myTournaPosition == TournaPosition.SB && tournaSelection.opponentTournaPosition == TournaPosition.BB){
        return {
          'AA' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.0 , alreadyProgress: 0.30),
          'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.0 , alreadyProgress: 0.23),
          'QQ' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00, alreadyProgress: 0.25),
          'JJ' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00, alreadyProgress: 0.29),
          'TT' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00, alreadyProgress: 0.31),
          '99' :ProgressInfo(raiseProgress: 0.30, callProgress: 0.70, alreadyProgress: 0.26),
          '88' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.18),
          '77' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.0),
          '66' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.0),
          '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 , alreadyProgress: 0.0),
          '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 , alreadyProgress: 0.0),
          '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 , alreadyProgress: 0.0),
          '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 , alreadyProgress: 0.0),


          'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.0 , alreadyProgress: 0.48),
          'AQs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00, alreadyProgress: 0.24),
          'AJs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00, alreadyProgress: 0.60),
          'ATs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00, alreadyProgress: 0.65),
          'A9s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85, alreadyProgress: 0.47),
          'A8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.46),
          'A7s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.31),
          'A6s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.00),
          'A5s':ProgressInfo(raiseProgress: 0.32, callProgress: 0.68, alreadyProgress: 0.35),
          'A4s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.86, alreadyProgress: 0.14),
          'A3s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.0),
          'A2s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.0),


          'AKo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00, alreadyProgress: 0.19),
          'KQs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00, alreadyProgress: 0.62),
          'KJs':ProgressInfo(raiseProgress: 0.73, callProgress: 0.27, alreadyProgress: 0.59),
          'KTs':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70, alreadyProgress: 0.48),
          'K9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.22),
          'K8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.17),
          'K7s':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90, alreadyProgress: 0.0),
          'K6s':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80, alreadyProgress: 0.0),
          'K5s':ProgressInfo(raiseProgress: 0.22, callProgress: 0.78, alreadyProgress: 0.0),
          'K4s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.0),
          'K3s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.0),
          'K2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.0),


          'AQo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00, alreadyProgress: 0.30),
          'KQo':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75, alreadyProgress: 0.15),
          'QJs':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65, alreadyProgress: 0.58),
          'QTs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.50),
          'Q9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.0),
          'Q8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.0),
          'Q7s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.0),
          'Q6s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.0),
          'Q5s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85, alreadyProgress: 0.0),
          'Q4s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.90, alreadyProgress: 0.10),
          'Q3s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.90, alreadyProgress: 0.10),
          'Q2s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.0),


          'AJo':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60, alreadyProgress: 0.16),
          'KJo':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80, alreadyProgress: 0.0),
          'QJo':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.0),
          'JTs':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70, alreadyProgress: 0.52),
          'J9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.18),
          'J8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.0),
          'J7s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.0),
          'J6s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.19),
          'J5s':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80, alreadyProgress: 0.13),
          'J4s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.21),
          'J3s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.14),
          'J2s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.14),


          'ATo':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85, alreadyProgress: 0.15),
          'KTo':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75, alreadyProgress: 0.15),
          'QTo':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85, alreadyProgress: 0.0),
          'JTo':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85, alreadyProgress: 0.0),
          'T9s':ProgressInfo(raiseProgress: 0.50, callProgress: 0.50, alreadyProgress: 0.28),
          'T8s':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60, alreadyProgress: 0.0),
          'T7s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.0),
          'T6s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85, alreadyProgress: 0.18),
          'T5s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.21),
          'T4s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.22),
          'T3s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.17),
          'T2s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.0),


          'A9o':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75, alreadyProgress: 0.20),
          'K9o':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80, alreadyProgress: 0.20),
          'Q9o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.16),
          'J9o':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80, alreadyProgress: 0.15),
          'T9o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.11),
          '98s':ProgressInfo(raiseProgress: 0.50, callProgress: 0.50, alreadyProgress: 0.0),
          '97s':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80, alreadyProgress: 0.0),
          '96s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.0),
          '95s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.26),
          '94s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.20),
          '93s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.30, alreadyProgress: 0.0),
          '92s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.0),

          'A8o':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75, alreadyProgress: 0.20),
          'K8o':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85, alreadyProgress: 0.20),
          'Q8o':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85, alreadyProgress: 0.19),
          'J8o':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85, alreadyProgress: 0.23),
          'T8o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.19),
          '98o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.17),
          '87s':ProgressInfo(raiseProgress: 0.70, callProgress: 0.30, alreadyProgress: 0.15),
          '86s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.18),
          '85s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.16),
          '84s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.24),
          '83s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          '82s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),

          'A7o':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80, alreadyProgress: 0.20),
          'K7o':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80, alreadyProgress: 0.20),
          'Q7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          'J7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          'T7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.20, alreadyProgress: 0.18),
          '97o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.30, alreadyProgress: 0.16),
          '87o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.70, alreadyProgress: 0.00),
          '76s':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60, alreadyProgress: 0.20),
          '75s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.10),
          '74s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.20),
          '73s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          '72s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),

          'A6o':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85, alreadyProgress: 0.20),
          'K6o':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75, alreadyProgress: 0.20),
          'Q6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          'J6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          'T6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          '96o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          '86o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          '76o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.35, alreadyProgress: 0.00),
          '65s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85, alreadyProgress: 0.23),
          '64s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.25),
          '63s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.21),
          '62s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),

          'A5o':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80, alreadyProgress: 0.20),
          'K5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.45, alreadyProgress: 0.20),
          'Q5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          'J5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          'T5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          '95o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          '85o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          '75o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          '65o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.26),
          '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.25),
          '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.23),

          'A4o':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80, alreadyProgress: 0.15),
          'K4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          'Q4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          'J4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          'T4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          '94o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          '84o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          '74o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          '64o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          '54o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          '43s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.15),
          '42s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.30, alreadyProgress: 0.00),

          'A3o':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90, alreadyProgress: 0.15),
          'K3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          'Q3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          'J3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          'T3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          '93o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          '83o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          '73o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          '63o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          '53o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          '43o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          '32s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),

          'A2o':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85, alreadyProgress: 0.15),
          'K2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          'Q2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          'J2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          'T2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          '92o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          '82o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          '72o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          '62o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          '52o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          '42o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
          '32o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),



        };
      }
    }
    //3bet pot
    else if (tournaSelection.opponentAction == OpponentAction.threeBet) {
      if (tournaSelection.myTournaPosition == TournaPosition.UTG) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.UTG1:
            return {
              'AA' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'QQ' :ProgressInfo(raiseProgress: 0.27, callProgress: 0.73),
              'JJ' :ProgressInfo(raiseProgress: 0.34, callProgress: 0.66),
              'TT' :ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
              '99' :ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),
              '88' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.88),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.74),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.57),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.64),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.51),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.56),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.42, callProgress: 0.58),
              'AJs':ProgressInfo(raiseProgress: 0.52, callProgress: 0.48),
              'ATs':ProgressInfo(raiseProgress: 0.27, callProgress: 0.73),
              'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.29),
              'A8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.20),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.28, callProgress: 0.72),
              'A4s':ProgressInfo(raiseProgress: 0.17, callProgress: 0.59),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.38),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.60, callProgress: 0.41),
              'KQs':ProgressInfo(raiseProgress: 0.17, callProgress: 0.83),
              'KJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KTs':ProgressInfo(raiseProgress: 0.13, callProgress: 0.83),


              'AQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.20),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.58),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.19),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.07, callProgress: 0.54),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.49),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.32),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.24),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.2 ),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.11),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.LJ:
            return {
              'AA' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'QQ' :ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
              'JJ' :ProgressInfo(raiseProgress: 0.33, callProgress: 0.67),
              'TT' :ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
              '99' :ProgressInfo(raiseProgress: 0.12, callProgress: 0.88),
              '88' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.87),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.65),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.64),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.51),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.56),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.29, callProgress: 0.71),
              'AJs':ProgressInfo(raiseProgress: 0.48, callProgress: 0.52),
              'ATs':ProgressInfo(raiseProgress: 0.27, callProgress: 0.73),
              'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.55),
              'A8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.24),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.32, callProgress: 0.68),
              'A4s':ProgressInfo(raiseProgress: 0.19, callProgress: 0.81),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.36),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.60, callProgress: 0.40),
              'KQs':ProgressInfo(raiseProgress: 0.19, callProgress: 0.81),
              'KJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KTs':ProgressInfo(raiseProgress: 0.17, callProgress: 0.83),


              'AQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.38),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.65),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.36),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.71),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.54),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.32),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.24),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.2 ),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.HJ:
            return {
              'AA' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'QQ' :ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
              'JJ' :ProgressInfo(raiseProgress: 0.29, callProgress: 0.71),
              'TT' :ProgressInfo(raiseProgress: 0.21, callProgress: 0.79),
              '99' :ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
              '88' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.92),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.76),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.64),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.51),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.56),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),
              'AJs':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60),
              'ATs':ProgressInfo(raiseProgress: 0.32, callProgress: 0.68),
              'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.83),
              'A8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.46),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.33, callProgress: 0.67),
              'A4s':ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.32),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.55, callProgress: 0.45),
              'KQs':ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),
              'KJs':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),
              'KTs':ProgressInfo(raiseProgress: 0.17, callProgress: 0.83),


              'AQo':ProgressInfo(raiseProgress: 0.13, callProgress: 0.41),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.78),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.62),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.11, callProgress: 0.89),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.17, callProgress: 0.64),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.54),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.32),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.24),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.2 ),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.CO:
            return {
              'AA' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'QQ' :ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
              'JJ' :ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
              'TT' :ProgressInfo(raiseProgress: 0.22, callProgress: 0.78),
              '99' :ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
              '88' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.93),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.74),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.64),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.51),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.56),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.43, callProgress: 0.57),
              'AJs':ProgressInfo(raiseProgress: 0.28, callProgress: 0.72),
              'ATs':ProgressInfo(raiseProgress: 0.43, callProgress: 0.57),
              'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.93),
              'A8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.46),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.29),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),
              'A4s':ProgressInfo(raiseProgress: 0.21, callProgress: 0.79),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.41),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.46, callProgress: 0.54),
              'KQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KJs':ProgressInfo(raiseProgress: 0.28, callProgress: 0.72),
              'KTs':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),


              'AQo':ProgressInfo(raiseProgress: 0.13, callProgress: 0.54),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.84),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.74),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.17, callProgress: 0.72),
              'T8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.19),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.54),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.32),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.24),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.2 ),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.BTN:
            return {
              'AA' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'KK' :ProgressInfo(raiseProgress: 0.89, callProgress: 0.11),
              'QQ' :ProgressInfo(raiseProgress: 0.22, callProgress: 0.78),
              'JJ' :ProgressInfo(raiseProgress: 0.22, callProgress: 0.78),
              'TT' :ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),
              '99' :ProgressInfo(raiseProgress: 0.17, callProgress: 0.83),
              '88' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.78),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.64),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.51),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.56),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),
              'AJs':ProgressInfo(raiseProgress: 0.12, callProgress: 0.88),
              'ATs':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),
              'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.90),
              'A8s':ProgressInfo(raiseProgress: 0.10, callProgress: 0.67),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.32),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.38, callProgress: 0.62),
              'A4s':ProgressInfo(raiseProgress: 0.28, callProgress: 0.72),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.41),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),
              'KQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KJs':ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
              'KTs':ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),


              'AQo':ProgressInfo(raiseProgress: 0.18, callProgress: 0.63),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.79),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.17, callProgress: 0.83),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
              'T8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.54),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.32),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.24),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.2 ),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.SB:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.31, callProgress: 0.69),
              'KK' :ProgressInfo(raiseProgress: 0.34, callProgress: 0.66),
              'QQ' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'JJ' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'TT' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '99' :ProgressInfo(raiseProgress: 0.00, callProgress: 0.70),
              '88' :ProgressInfo(raiseProgress: 0.00, callProgress: 0.66),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.63),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.60),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.38),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.45),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.47),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.56),


              'AKs':ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
              'AQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'AJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'ATs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.90),
              'A8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.33),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.28),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A4s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.64),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),
              'KQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KJs':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
              'KTs':ProgressInfo(raiseProgress: 0.13, callProgress: 0.38),


              'AQo':ProgressInfo(raiseProgress: 0.00, callProgress: 0.35),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.00, callProgress: 0.68),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.56),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.00, callProgress: 0.80),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.39),
              'T8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.35),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.32),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.24),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.2 ),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.BB:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.51, callProgress: 0.49),
              'KK' :ProgressInfo(raiseProgress: 0.29, callProgress: 0.71),
              'QQ' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'JJ' :ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
              'TT' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '99' :ProgressInfo(raiseProgress: 0.00, callProgress: 0.57),
              '88' :ProgressInfo(raiseProgress: 0.00, callProgress: 0.54),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.56),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.58),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.30),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.22),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.25),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.19),


              'AKs':ProgressInfo(raiseProgress: 0.42, callProgress: 0.58),
              'AQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'AJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'ATs':ProgressInfo(raiseProgress: 0.16, callProgress: 0.84),
              'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.43),
              'A8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.60),
              'A7s':ProgressInfo(raiseProgress: 0.12, callProgress: 0.18),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.11, callProgress: 0.89),
              'A4s':ProgressInfo(raiseProgress: 0.13, callProgress: 0.43),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
              'KQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KJs':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
              'KTs':ProgressInfo(raiseProgress: 0.00, callProgress: 0.24),


              'AQo':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.00, callProgress: 0.65),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.62),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.00, callProgress: 0.51),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.41),
              'T8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.17),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.32),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.24),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.2 ),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.UTG1) {
        switch (tournaSelection.opponentTournaPosition) {

          case TournaPosition.LJ:
            return {
              'AA' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'QQ' :ProgressInfo(raiseProgress: 0.28, callProgress: 0.72),
              'JJ' :ProgressInfo(raiseProgress: 0.32, callProgress: 0.68),
              'TT' :ProgressInfo(raiseProgress: 0.21, callProgress: 0.79),
              '99' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '88' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.81),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.84),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.71),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.73),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),
              'AJs':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60),
              'ATs':ProgressInfo(raiseProgress: 0.32, callProgress: 0.68),
              'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              'A8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.62),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.29, callProgress: 0.71),
              'A4s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.39),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.65, callProgress: 0.35),
              'KQs':ProgressInfo(raiseProgress: 0.16, callProgress: 0.84),
              'KJs':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
              'KTs':ProgressInfo(raiseProgress: 0.17, callProgress: 0.83),


              'AQo':ProgressInfo(raiseProgress: 0.17, callProgress: 0.52),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.70),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.16, callProgress: 0.84),
              'J9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.21),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
              'T8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.20),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.69),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.50),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.34),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.34),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.HJ:
            return {
              'AA' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'QQ' :ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),
              'JJ' :ProgressInfo(raiseProgress: 0.28, callProgress: 0.72),
              'TT' :ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
              '99' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '88' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.71),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.73),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60),
              'AJs':ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
              'ATs':ProgressInfo(raiseProgress: 0.43, callProgress: 0.57),
              'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              'A8s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.30),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
              'A4s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.26),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.59, callProgress: 0.41),
              'KQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KJs':ProgressInfo(raiseProgress: 0.36, callProgress: 0.64),
              'KTs':ProgressInfo(raiseProgress: 0.17, callProgress: 0.83),


              'AQo':ProgressInfo(raiseProgress: 0.22, callProgress: 0.78),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
              'J9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.24),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
              'T8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.34),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.76),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.52),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.34),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.34),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.CO:
            return {
              'AA' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'QQ' :ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),
              'JJ' :ProgressInfo(raiseProgress: 0.21, callProgress: 0.79),
              'TT' :ProgressInfo(raiseProgress: 0.21, callProgress: 0.79),
              '99' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '88' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.71),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.73),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.44, callProgress: 0.56),
              'AJs':ProgressInfo(raiseProgress: 0.17, callProgress: 0.83),
              'ATs':ProgressInfo(raiseProgress: 0.43, callProgress: 0.57),
              'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              'A8s':ProgressInfo(raiseProgress: 0.17, callProgress: 0.83),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.58),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.17),
              'A5s':ProgressInfo(raiseProgress: 0.31, callProgress: 0.69),
              'A4s':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.44),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.56, callProgress: 0.44),
              'KQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KJs':ProgressInfo(raiseProgress: 0.39, callProgress: 0.61),
              'KTs':ProgressInfo(raiseProgress: 0.17, callProgress: 0.83),


              'AQo':ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
              'J9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.35),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.21, callProgress: 0.79),
              'T8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.45),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.87),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.54),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.34),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.34),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.BTN:
            return {
              'AA' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'QQ' :ProgressInfo(raiseProgress: 0.27, callProgress: 0.73),
              'JJ' :ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
              'TT' :ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
              '99' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '88' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.71),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.73),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.46, callProgress: 0.54),
              'AJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'ATs':ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),
              'A9s':ProgressInfo(raiseProgress: 0.17, callProgress: 0.83),
              'A8s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.49),
              'A5s':ProgressInfo(raiseProgress: 0.27, callProgress: 0.73),
              'A4s':ProgressInfo(raiseProgress: 0.17, callProgress: 0.83),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.79),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.56, callProgress: 0.44),
              'KQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KJs':ProgressInfo(raiseProgress: 0.26, callProgress: 0.74),
              'KTs':ProgressInfo(raiseProgress: 0.26, callProgress: 0.74),
              'K9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.44),


              'AQo':ProgressInfo(raiseProgress: 0.26, callProgress: 0.74),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
              'J9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.32),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
              'T8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.18),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.54),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.34),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.34),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.SB:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.36, callProgress: 0.64),
              'KK' :ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),
              'QQ' :ProgressInfo(raiseProgress: 0.27, callProgress: 0.73),
              'JJ' :ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
              'TT' :ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
              '99' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '88' :ProgressInfo(raiseProgress: 0.00, callProgress: 0.80),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.74),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.70),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.43),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.52),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.56),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.59),


              'AKs':ProgressInfo(raiseProgress: 0.27, callProgress: 0.73),
              'AQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'AJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'ATs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.51),
              'A8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.41),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.18),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.49),
              'A5s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A4s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.85),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.17),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.47, callProgress: 0.53),
              'KQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KTs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'K9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),


              'AQo':ProgressInfo(raiseProgress: 0.00, callProgress: 0.73),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.80),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'J9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.32),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.54),
              'T8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.41),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.54),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.34),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.34),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.BB:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),
              'KK' :ProgressInfo(raiseProgress: 0.36, callProgress: 0.64),
              'QQ' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'JJ' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'TT' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '99' :ProgressInfo(raiseProgress: 0.00, callProgress: 0.78),
              '88' :ProgressInfo(raiseProgress: 0.00, callProgress: 0.72),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.76),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.63),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.35),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.37),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.28),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.20),


              'AKs':ProgressInfo(raiseProgress: 0.36, callProgress: 0.64),
              'AQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'AJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'ATs':ProgressInfo(raiseProgress: 0.12, callProgress: 0.88),
              'A9s':ProgressInfo(raiseProgress: 0.12, callProgress: 0.88),
              'A8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.73),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.39),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.49),
              'A5s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A4s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.80),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.32, callProgress: 0.68),
              'KQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KJs':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
              'KTs':ProgressInfo(raiseProgress: 0.12, callProgress: 0.75),
              'K9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),


              'AQo':ProgressInfo(raiseProgress: 0.00, callProgress: 0.23),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.77),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.00, callProgress: 0.80),
              'J9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.32),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.35),
              'T8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.20),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.45),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.34),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.27),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.LJ) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.HJ:
            return {
              'AA' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'QQ' :ProgressInfo(raiseProgress: 0.51, callProgress: 0.49),
              'JJ' :ProgressInfo(raiseProgress: 0.38, callProgress: 0.62),
              'TT' :ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),
              '99' :ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
              '88' :ProgressInfo(raiseProgress: 0.16, callProgress: 0.84),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.84),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.68),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.72),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.74),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.70),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60),
              'AJs':ProgressInfo(raiseProgress: 0.12, callProgress: 0.88),
              'ATs':ProgressInfo(raiseProgress: 0.59, callProgress: 0.41),
              'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              'A8s':ProgressInfo(raiseProgress: 0.20, callProgress: 0.60),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
              'A4s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.67),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.63, callProgress: 0.37),
              'KQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KJs':ProgressInfo(raiseProgress: 0.72, callProgress: 0.28),
              'KTs':ProgressInfo(raiseProgress: 0.41, callProgress: 0.59),
              'K9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.26),
              'K6s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.23),


              'AQo':ProgressInfo(raiseProgress: 0.56, callProgress: 0.44),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.12, callProgress: 0.88),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.17, callProgress: 0.83),
              'J9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.18),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.21, callProgress: 0.79),
              'T8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.17),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.46),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.61),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.43),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.35),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.CO:
            return {
              'AA' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'QQ' :ProgressInfo(raiseProgress: 0.55, callProgress: 0.45),
              'JJ' :ProgressInfo(raiseProgress: 0.37, callProgress: 0.63),
              'TT' :ProgressInfo(raiseProgress: 0.39, callProgress: 0.61),
              '99' :ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
              '88' :ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.89),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.64),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.83),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.74),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.70),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'AJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'ATs':ProgressInfo(raiseProgress: 0.52, callProgress: 0.48),
              'A9s':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),
              'A8s':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.24),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.28, callProgress: 0.72),
              'A4s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.87),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.67),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.80, callProgress: 0.20),
              'KQs':ProgressInfo(raiseProgress: 0.12, callProgress: 0.88),
              'KJs':ProgressInfo(raiseProgress: 0.47, callProgress: 0.53),
              'KTs':ProgressInfo(raiseProgress: 0.49, callProgress: 0.51),
              'K9s':ProgressInfo(raiseProgress: 0.11, callProgress: 0.52),
              'K6s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.38),


              'AQo':ProgressInfo(raiseProgress: 0.58, callProgress: 0.42),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.26, callProgress: 0.74),
              'J9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.22),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
              'T8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.17),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.61),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.61),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.43),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.35),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.BTN:
            return {
              'AA' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'QQ' :ProgressInfo(raiseProgress: 0.52, callProgress: 0.48),
              'JJ' :ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),
              'TT' :ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),
              '99' :ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
              '88' :ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.89),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.70),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.83),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.74),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.70),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'AJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'ATs':ProgressInfo(raiseProgress: 0.36, callProgress: 0.64),
              'A9s':ProgressInfo(raiseProgress: 0.29, callProgress: 0.71),
              'A8s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
              'A7s':ProgressInfo(raiseProgress: 0.14, callProgress: 0.48),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.28),
              'A5s':ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
              'A4s':ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.61),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.85, callProgress: 0.15),
              'KQs':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),
              'KJs':ProgressInfo(raiseProgress: 0.27, callProgress: 0.73),
              'KTs':ProgressInfo(raiseProgress: 0.52, callProgress: 0.48),
              'K9s':ProgressInfo(raiseProgress: 0.29, callProgress: 0.59),
              'K8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.17),
              'K6s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.39),


              'AQo':ProgressInfo(raiseProgress: 0.62, callProgress: 0.38),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.27),
              'QJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


              'AJo':ProgressInfo(raiseProgress: 0.11, callProgress: 0.10),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),
              'J9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.30),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.17, callProgress: 0.83),
              'T8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.63),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.61),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.43),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.35),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.SB:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.75, callProgress: 0.25),
              'KK' :ProgressInfo(raiseProgress: 0.53, callProgress: 0.47),
              'QQ' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'JJ' :ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),
              'TT' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '99' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '88' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.81),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.66),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.39),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.39),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.41),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.48),


              'AKs':ProgressInfo(raiseProgress: 0.57, callProgress: 0.43),
              'AQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'AJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'ATs':ProgressInfo(raiseProgress: 0.21, callProgress: 0.79),
              'A9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.58),
              'A8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.48),
              'A7s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.31),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.28),
              'A5s':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),
              'A4s':ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.26),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.34, callProgress: 0.66),
              'KQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KTs':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),
              'K9s':ProgressInfo(raiseProgress: 0.13, callProgress: 0.00),
              'K8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
              'K6s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.38),


              'AQo':ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0),
              'QJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


              'AJo':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'J9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.17),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.86),
              'T8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.51),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.52),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.43),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.35),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.BB:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.50, callProgress: 0.50),
              'KK' :ProgressInfo(raiseProgress: 0.50, callProgress: 0.50),
              'QQ' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'JJ' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'TT' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '99' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '88' :ProgressInfo(raiseProgress: 0.00, callProgress: 0.88),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.81),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.71),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.40),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.36),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.23),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.09),


              'AKs':ProgressInfo(raiseProgress: 0.34, callProgress: 0.66),
              'AQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'AJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'ATs':ProgressInfo(raiseProgress: 0.11, callProgress: 0.89),
              'A9s':ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),
              'A8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.86),
              'A7s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.54),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.28),
              'A5s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A4s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.34),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.50, callProgress: 0.50),
              'KQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KTs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'K9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.30),
              'K8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
              'K6s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),


              'AQo':ProgressInfo(raiseProgress: 0.11, callProgress: 0.40),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0),
              'QJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


              'AJo':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'J9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.12),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.46),
              'T8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.18),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.60),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.41),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.21),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
        }
      }
      else if (tournaSelection.myTournaPosition == TournaPosition.HJ) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.CO:
            return {
              'AA' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'QQ' :ProgressInfo(raiseProgress: 0.80, callProgress: 0.20),
              'JJ' :ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),
              'TT' :ProgressInfo(raiseProgress: 0.49, callProgress: 0.51),
              '99' :ProgressInfo(raiseProgress: 0.21, callProgress: 0.79),
              '88' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'AJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'ATs':ProgressInfo(raiseProgress: 0.38, callProgress: 0.62),
              'A9s':ProgressInfo(raiseProgress: 0.34, callProgress: 0.66),
              'A8s':ProgressInfo(raiseProgress: 0.34, callProgress: 0.66),
              'A7s':ProgressInfo(raiseProgress: 0.31, callProgress: 0.69),
              'A6s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.31),
              'A5s':ProgressInfo(raiseProgress: 0.36, callProgress: 0.64),
              'A4s':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.55),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.80, callProgress: 0.20),
              'KQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KJs':ProgressInfo(raiseProgress: 0.39, callProgress: 0.61),
              'KTs':ProgressInfo(raiseProgress: 0.68, callProgress: 0.32),
              'K9s':ProgressInfo(raiseProgress: 0.41, callProgress: 0.59),
              'K6s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.45),


              'AQo':ProgressInfo(raiseProgress: 0.61, callProgress: 0.39),
              'KQo':ProgressInfo(raiseProgress: 0.14, callProgress: 0.38),
              'QJs':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


              'AJo':ProgressInfo(raiseProgress: 0.23, callProgress: 0.18),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.32, callProgress: 0.68),
              'J9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.64),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
              'T8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.38),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.72),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.82),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.77),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.51),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.BTN:
            return {
              'AA' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'QQ' :ProgressInfo(raiseProgress: 0.80, callProgress: 0.20),
              'JJ' :ProgressInfo(raiseProgress: 0.41, callProgress: 0.59),
              'TT' :ProgressInfo(raiseProgress: 0.42, callProgress: 0.58),
              '99' :ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
              '88' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'AJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'ATs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A9s':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),
              'A8s':ProgressInfo(raiseProgress: 0.55, callProgress: 0.45),
              'A7s':ProgressInfo(raiseProgress: 0.37, callProgress: 0.63),
              'A6s':ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
              'A5s':ProgressInfo(raiseProgress: 0.31, callProgress: 0.69),
              'A4s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.26),

              'AKo':ProgressInfo(raiseProgress: 0.85, callProgress: 0.15),
              'KQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KTs':ProgressInfo(raiseProgress: 0.55, callProgress: 0.45),
              'K9s':ProgressInfo(raiseProgress: 0.61, callProgress: 0.39),
              'K8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.71),
              'K7s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.38),
              'K6s':ProgressInfo(raiseProgress: 0.14, callProgress: 0.43),


              'AQo':ProgressInfo(raiseProgress: 0.64, callProgress: 0.36),
              'KQo':ProgressInfo(raiseProgress: 0.20, callProgress: 0.60),
              'QJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


              'AJo':ProgressInfo(raiseProgress: 0.28, callProgress: 0.33),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.32, callProgress: 0.68),
              'J9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.56),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.27, callProgress: 0.73),
              'T8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.52),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.83),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.51),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.SB:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.86, callProgress: 0.14),
              'KK' :ProgressInfo(raiseProgress: 0.51, callProgress: 0.49),
              'QQ' :ProgressInfo(raiseProgress: 0.12, callProgress: 0.88),
              'JJ' :ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
              'TT' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '99' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '88' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.43),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.47),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.30),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.23),


              'AKs':ProgressInfo(raiseProgress: 0.67, callProgress: 0.33),
              'AQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'AJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'ATs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A9s':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),
              'A8s':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
              'A7s':ProgressInfo(raiseProgress: 0.10, callProgress: 0.50),
              'A6s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
              'A5s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A4s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A3s':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),

              'AKo':ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
              'KQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KTs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'K9s':ProgressInfo(raiseProgress: 0.26, callProgress: 0.51),
              'K8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
              'K7s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
              'K6s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.66),


              'AQo':ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
              'KQo':ProgressInfo(raiseProgress: 0.14, callProgress: 0.46),
              'QJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


              'AJo':ProgressInfo(raiseProgress: 0.18, callProgress: 0.20),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'J9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'T8s':ProgressInfo(raiseProgress: 0.14, callProgress: 0.30),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.51),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.65),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.70),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.61),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.51),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.BB:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.68, callProgress: 0.32),
              'KK' :ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),
              'QQ' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'JJ' :ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),
              'TT' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '99' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '88' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.83),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.39),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.39),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'AKs':ProgressInfo(raiseProgress: 0.31, callProgress: 0.69),
              'AQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'AJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'ATs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A7s':ProgressInfo(raiseProgress: 0.21, callProgress: 0.79),
              'A6s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.33),
              'A5s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A4s':ProgressInfo(raiseProgress: 0.13, callProgress: 0.79),
              'A3s':ProgressInfo(raiseProgress: 0.21, callProgress: 0.64),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),

              'AKo':ProgressInfo(raiseProgress: 0.50, callProgress: 0.50),
              'KQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KTs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'K9s':ProgressInfo(raiseProgress: 0.16, callProgress: 0.61),
              'K8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
              'K7s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
              'K6s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.67),


              'AQo':ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
              'KQo':ProgressInfo(raiseProgress: 0.00, callProgress: 0.32),
              'QJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              'Q9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.13),


              'AJo':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'J9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'T8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.15),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.79),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.59),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.35),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.47),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.CO) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.BTN:
            return {
              'AA' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'QQ' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'JJ' :ProgressInfo(raiseProgress: 0.75, callProgress: 0.25),
              'TT' :ProgressInfo(raiseProgress: 0.38, callProgress: 0.62),
              '99' :ProgressInfo(raiseProgress: 0.34, callProgress: 0.66),
              '88' :ProgressInfo(raiseProgress: 0.21, callProgress: 0.79),
              '77' :ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'AJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'ATs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A9s':ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
              'A8s':ProgressInfo(raiseProgress: 0.50, callProgress: 0.50),
              'A7s':ProgressInfo(raiseProgress: 0.36, callProgress: 0.64),
              'A6s':ProgressInfo(raiseProgress: 0.32, callProgress: 0.68),
              'A5s':ProgressInfo(raiseProgress: 0.39, callProgress: 0.61),
              'A4s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),

              'AKo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'KQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KJs':ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
              'KTs':ProgressInfo(raiseProgress: 0.33, callProgress: 0.67),
              'K9s':ProgressInfo(raiseProgress: 0.82, callProgress: 0.18),
              'K8s':ProgressInfo(raiseProgress: 0.27, callProgress: 0.73),
              'K7s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'K6s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'K5s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.52),


              'AQo':ProgressInfo(raiseProgress: 0.78, callProgress: 0.22),
              'KQo':ProgressInfo(raiseProgress: 0.28, callProgress: 0.72),
              'QJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              'Q9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


              'AJo':ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.49),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.41, callProgress: 0.59),
              'J9s':ProgressInfo(raiseProgress: 0.28, callProgress: 0.72),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.37),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.33, callProgress: 0.67),
              'T8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '97s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.40),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '86s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.42),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.SB:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.81, callProgress: 0.19),
              'KK' :ProgressInfo(raiseProgress: 0.66, callProgress: 0.34),
              'QQ' :ProgressInfo(raiseProgress: 0.12, callProgress: 0.88),
              'JJ' :ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
              'TT' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '99' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '88' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.82),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.53),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.38),


              'AKs':ProgressInfo(raiseProgress: 0.82, callProgress: 0.18),
              'AQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'AJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'ATs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A9s':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
              'A8s':ProgressInfo(raiseProgress: 0.0, callProgress: 1.00),
              'A7s':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
              'A6s':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),
              'A5s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A4s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A3s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A2s':ProgressInfo(raiseProgress: 0.18, callProgress: 0.71),

              'AKo':ProgressInfo(raiseProgress: 0.32, callProgress: 0.68),
              'KQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KTs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'K9s':ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
              'K8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.50),
              'K7s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.48),
              'K6s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'K5s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.40),


              'AQo':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
              'KQo':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'QJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              'Q9s':ProgressInfo(raiseProgress: 0.11, callProgress: 0.89),
              'Q8s':ProgressInfo(raiseProgress: 0.20, callProgress: 0.00),


              'AJo':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.47),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'J9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'J8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.60),


              'ATo':ProgressInfo(raiseProgress: 0.32, callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'T8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '97s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.74),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '86s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.26),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.BB:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.63, callProgress: 0.37),
              'KK' :ProgressInfo(raiseProgress: 0.61, callProgress: 0.39),
              'QQ' :ProgressInfo(raiseProgress: 0.12, callProgress: 0.88),
              'JJ' :ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),
              'TT' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '99' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '88' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.64),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.46),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.12),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'AKs':ProgressInfo(raiseProgress: 0.57, callProgress: 0.43),
              'AQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'AJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'ATs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A7s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A6s':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),
              'A5s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A4s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A3s':ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),
              'A2s':ProgressInfo(raiseProgress: 0.25, callProgress: 0.39),

              'AKo':ProgressInfo(raiseProgress: 0.60, callProgress: 0.40),
              'KQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KTs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'K9s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
              'K8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.40),
              'K7s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.4),
              'K6s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'K5s':ProgressInfo(raiseProgress: 0.18, callProgress: 0.13),


              'AQo':ProgressInfo(raiseProgress: 0.19, callProgress: 0.81),
              'KQo':ProgressInfo(raiseProgress: 0.10, callProgress: 1.90),
              'QJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              'Q9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'Q8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),


              'AJo':ProgressInfo(raiseProgress: 0.17, callProgress: 0.49),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.29),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'J9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'J8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.30),


              'ATo':ProgressInfo(raiseProgress: 0.00, callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'T8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.75),
              '97s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.81),
              '86s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.94),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.68),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.85),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.BTN) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.SB:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.82, callProgress: 0.18),
              'KK' :ProgressInfo(raiseProgress: 0.89, callProgress: 0.11),
              'QQ' :ProgressInfo(raiseProgress: 0.52, callProgress: 0.48),
              'JJ' :ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),
              'TT' :ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
              '99' :ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),
              '88' :ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.0),
              'AQs':ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
              'AJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'ATs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A7s':ProgressInfo(raiseProgress: 0.10, callProgress: 1.00),
              'A6s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A5s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A4s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A3s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A2s':ProgressInfo(raiseProgress: 0.11, callProgress: 0.89),

              'AKo':ProgressInfo(raiseProgress: 0.80, callProgress: 0.20),
              'KQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KTs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'K9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'K8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'K7s':ProgressInfo(raiseProgress: 0.12, callProgress: 0.88),
              'K6s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'K5s':ProgressInfo(raiseProgress: 0.17, callProgress: 0.83),
              'K4s':ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),


              'AQo':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KQo':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'QJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              'Q9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'Q8s':ProgressInfo(raiseProgress: 0.32, callProgress: 0.68),
              'Q6s':ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),


              'AJo':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KJo':ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),
              'QJo':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60),
              'JTs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'J9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'J8s':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),


              'ATo':ProgressInfo(raiseProgress: 0.22, callProgress: 0.78),
              'KTo':ProgressInfo(raiseProgress: 0.14, callProgress: 0.37),
              'QTo':ProgressInfo(raiseProgress: 0.14, callProgress: 0.23),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.20),
              'T9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'T8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'T7s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),


              'A9o':ProgressInfo(raiseProgress: 0.31, callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '97s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '96s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.50),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '86s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '75s':ProgressInfo(raiseProgress: 0.22, callProgress: 0.78),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '64s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.24),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.68),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.BB:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.67, callProgress: 0.33),
              'KK' :ProgressInfo(raiseProgress: 0.77, callProgress: 0.23),
              'QQ' :ProgressInfo(raiseProgress: 0.40, callProgress: 0.60),
              'JJ' :ProgressInfo(raiseProgress: 0.28, callProgress: 0.72),
              'TT' :ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
              '99' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '88' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.34),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.0),
              'AQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'AJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'ATs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A7s':ProgressInfo(raiseProgress: 0.10, callProgress: 1.00),
              'A6s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A5s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A4s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A3s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'A2s':ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),

              'AKo':ProgressInfo(raiseProgress: 0.90, callProgress: 0.10),
              'KQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KTs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'K9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'K8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'K7s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'K6s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'K5s':ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),
              'K4s':ProgressInfo(raiseProgress: 0.19, callProgress: 0.81),
              'K3s':ProgressInfo(raiseProgress: 0.19, callProgress: 0.00),


              'AQo':ProgressInfo(raiseProgress: 0.12, callProgress: 0.88),
              'KQo':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'QJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              'Q9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'Q8s':ProgressInfo(raiseProgress: 0.16, callProgress: 0.84),
              'Q7s':ProgressInfo(raiseProgress: 0.13, callProgress: 0.33),
              'Q6s':ProgressInfo(raiseProgress: 0.13, callProgress: 0.48),
              'Q5s':ProgressInfo(raiseProgress: 0.20, callProgress: 0.00),


              'AJo':ProgressInfo(raiseProgress: 0.16, callProgress: 0.84),
              'KJo':ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),
              'QJo':ProgressInfo(raiseProgress: 0.17, callProgress: 0.47),
              'JTs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'J9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'J8s':ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),


              'ATo':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),
              'KTo':ProgressInfo(raiseProgress: 0.09, callProgress: 0.51),
              'QTo':ProgressInfo(raiseProgress: 0.13, callProgress: 0.27),
              'JTo':ProgressInfo(raiseProgress: 0.12, callProgress: 0.49),
              'T9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'T8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'T7s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),


              'A9o':ProgressInfo(raiseProgress: 0.14, callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '97s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),



              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '86s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '75s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.22),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '64s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.20),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.SB) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.BB:
            return {
              'AA' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.0 , alreadyProgress: 0.7),
              'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.0 , alreadyProgress: 0.77),
              'QQ' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.0 , alreadyProgress: 0.75),
              'JJ' :ProgressInfo(raiseProgress: 0.50, callProgress: 0.50, alreadyProgress: 0.71),
              'TT' :ProgressInfo(raiseProgress: 0.40, callProgress: 0.60, alreadyProgress: 0.69),
              '99' :ProgressInfo(raiseProgress: 0.15, callProgress: 0.85, alreadyProgress: 0.74),
              '88' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.83),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00, alreadyProgress: 0.00),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00, alreadyProgress: 0.52),
              'AQs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.0 , alreadyProgress: 0.76),
              'AJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.40),
              'ATs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.35),
              'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.53),
              'A8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.54),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.69),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
              'A5s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85, alreadyProgress: 0.65),
              'A4s':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70, alreadyProgress: 0.86),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.0 ,alreadyProgress: 0.81),
              'KQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00,alreadyProgress: 0.38),
              'KJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00,alreadyProgress: 0.41),
              'KTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00,alreadyProgress: 0.52),
              'K9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00,alreadyProgress: 0.78),
              'K8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00,alreadyProgress: 0.83),
              'K7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00,alreadyProgress: 0.00),
              'K6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ,alreadyProgress: 0.00),
              'K5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ,alreadyProgress: 0.00),
              'K4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ,alreadyProgress: 0.00),
              'K3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ,alreadyProgress: 0.00),
              'K2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ,alreadyProgress: 0.00),

              'AQo':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60, alreadyProgress: 0.70),
              'KQo':ProgressInfo(raiseProgress: 0.60, callProgress: 0.40, alreadyProgress: 0.85),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.42),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.50),
              'Q9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
              'Q8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
              'Q7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
              'Q6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
              'Q5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
              'Q4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
              'Q3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
              'Q2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),

              'AJo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00, alreadyProgress: 0.84),
              'KJo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00, alreadyProgress: 0.80),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
              'JTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.48),
              'J9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.82),
              'J8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
              'J7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
              'J6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
              'J5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
              'J4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
              'J3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
              'J2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),

              'ATo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.0 , alreadyProgress: 0.85),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.72),
              'T8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A9o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.0 , alreadyProgress: 0.00),
              'K9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'Q9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'J9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '97s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '96s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '95s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '94s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '93s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '92s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'K8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'Q8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'J8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.85),
              '86s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.82),
              '85s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '84s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '83s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '82s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'K7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'Q7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'J7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '97o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.80),
              '75s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '74s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '73s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '72s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'K6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'Q6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'J6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '96o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '86o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.77),
              '64s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '63s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '62s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'K5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'Q5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'J5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '95o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '85o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '75o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.74),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'K4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'Q4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'J4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '94o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '84o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '74o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '64o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '43s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '42s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'K3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'Q3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'J3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '93o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '83o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '73o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '63o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '53o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '43o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '32s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'K2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'Q2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'J2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '92o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '82o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '72o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '62o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '42o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '32o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            };
        }
      }
    }
    //4bet pot
    else if (tournaSelection.opponentAction == OpponentAction.fourBet) {
      if (tournaSelection.myTournaPosition == TournaPosition.UTG1) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.UTG:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.19, callProgress: 0.81),
              'KK' :ProgressInfo(raiseProgress: 0.30, callProgress: 0.70, alreadyProgress: 0.25),
              'QQ' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.48),
              'JJ' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.48),
              'TT' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.50),
              '99' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.65),
              '88' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.67),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.69),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.75),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'AKs':ProgressInfo(raiseProgress: 0.90, callProgress: 0.10),
              'AQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.70),
              'AJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.47),
              'ATs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.37),
              'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.55),
              'A4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.74),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.52),
              'KQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.66),
              'KJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.20, alreadyProgress: 0.34),


              'AQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.27, alreadyProgress: 0.44),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 , alreadyProgress: 0.00),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.40, alreadyProgress: 0.66),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.76),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00, alreadyProgress: 0.00),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.80),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.89),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.LJ) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.UTG:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
              'KK' :ProgressInfo(raiseProgress: 0.30, callProgress: 0.70, alreadyProgress: 0.14),
              'QQ' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.50),
              'JJ' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.50),
              'TT' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.50),
              '99' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.65),
              '88' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.69),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.72),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.75),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.90),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'AKs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.62),
              'AJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.56),
              'ATs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.32),
              'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.56),
              'A4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.71),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.50),
              'KQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.67),
              'KJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.50, alreadyProgress: 0.45),


              'AQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.40, alreadyProgress: 0.49),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.25, alreadyProgress: 0.67),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.70),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.60, alreadyProgress: 0.76),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.90),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.90),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.80),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.90),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.UTG1:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.22, callProgress: 0.78),
              'KK' :ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),
              'QQ' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.49),
              'JJ' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.47),
              'TT' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.49),
              '99' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.61),
              '88' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.64),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.66),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.73),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.84),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'AKs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.58),
              'AJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.58),
              'ATs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.33),
              'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.48),
              'A4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.69),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.45),
              'KQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.75),
              'KJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.44),
              'KTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.20, alreadyProgress: 0.40),


              'AQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.60, alreadyProgress: 0.41),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.54),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.74),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.92),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.79),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.HJ) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.UTG:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.20, callProgress: 0.80, alreadyProgress: 0.00),
              'KK' :ProgressInfo(raiseProgress: 0.30, callProgress: 0.70, alreadyProgress: 0.15),
              'QQ' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.55),
              'JJ' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.55),
              'TT' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.55),
              '99' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.67),
              '88' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.74),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.77),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.81),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00, alreadyProgress: 0.00),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00, alreadyProgress: 0.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.06),
              'AQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.59),
              'AJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.58),
              'ATs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.33),
              'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.56),
              'A4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.70),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.59),
              'KQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.80),
              'KJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.60),
              'KTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.20, alreadyProgress: 0.50),


              'AQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.50, alreadyProgress: 0.64),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.15, alreadyProgress: 0.60),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.30, alreadyProgress: 0.70),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.73),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.80),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.87),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.88),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.73),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.91),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.UTG1:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.20, callProgress: 0.82, alreadyProgress: 0.00),
              'KK' :ProgressInfo(raiseProgress: 0.35, callProgress: 0.65, alreadyProgress: 0.00),
              'QQ' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.58),
              'JJ' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.52),
              'TT' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.54),
              '99' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.61),
              '88' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.69),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.72),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.78),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.84),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00, alreadyProgress: 0.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.50),
              'AJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.62),
              'ATs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.32),
              'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.20, alreadyProgress: 0.56),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.56),
              'A4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.50),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.54),
              'KQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.85),
              'KJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.58),
              'KTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.65, alreadyProgress: 0.51),


              'AQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.70, alreadyProgress: 0.53),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.40, alreadyProgress: 0.52),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.57),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.76),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.94),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.84),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.92),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.74),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.95),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.LJ:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KK' :ProgressInfo(raiseProgress: 0.80, callProgress: 0.20),
              'QQ' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.45),
              'JJ' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.52),
              'TT' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.56),
              '99' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.67),
              '88' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.69),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.73),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.75),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.77),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.79),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.37),
              'AJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.68),
              'ATs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.51),
              'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'A8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.55, alreadyProgress: 0.57),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.46),
              'A4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.59),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.67),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60, alreadyProgress: 0.42),
              'KQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.76),
              'KJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.48),
              'KTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.49),
              'K9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.20, alreadyProgress: 0.32),
              'K6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'AQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.48),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.58),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.40, alreadyProgress: 0.59),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.56),
              'J9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.50, alreadyProgress: 0.53),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.66),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.88),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.88),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.91),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.71),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.91),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.CO) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.UTG:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.15, callProgress: 0.83, alreadyProgress: 0.00),
              'KK' :ProgressInfo(raiseProgress: 0.33, callProgress: 0.58, alreadyProgress: 0.00),
              'QQ' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.58),
              'JJ' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.55),
              'TT' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.56),
              '99' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.67),
              '88' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.76),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.80),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.84),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'AKs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.43),
              'AJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.59),
              'ATs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.39),
              'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.57),
              'A4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.76),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00, alreadyProgress: 0.00),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.64),
              'KQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.88),
              'KJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.55),


              'AQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.75, alreadyProgress: 0.77),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.20, alreadyProgress: 0.70),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.50, alreadyProgress: 0.84),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.60),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.80),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.93),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.78),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.84),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.68),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.86),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.UTG1:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.11, callProgress: 0.89, alreadyProgress: 0.00),
              'KK' :ProgressInfo(raiseProgress: 0.40, callProgress: 0.60, alreadyProgress: 0.00),
              'QQ' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.59),
              'JJ' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.53),
              'TT' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.54),
              '99' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.61),
              '88' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.71),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.77),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.84),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00, alreadyProgress: 0.00),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.24),
              'AJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.74),
              'ATs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.40),
              'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.25, alreadyProgress: 0.51),
              'A8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.80, alreadyProgress: 0.66),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.52),
              'A4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.78),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.57),
              'KQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'KJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.51),
              'KTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.64),


              'AQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.70),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.75, alreadyProgress: 0.64),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.53),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.79),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.87),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.76),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.81),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.66),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0, alreadyProgress: 0.84),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.LJ:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KK' :ProgressInfo(raiseProgress: 0.75, callProgress: 0.25, alreadyProgress: 0.00),
              'QQ' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.41),
              'JJ' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.52),
              'TT' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.60),
              '99' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.68),
              '88' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.72),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.76),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.80),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00, alreadyProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.32),
              'AJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.67),
              'ATs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.64),
              'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.75, alreadyProgress: 0.51),
              'A8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.68),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.53),
              'A4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.64),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.67),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.93),

              'AKo':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60, alreadyProgress: 0.00),
              'KQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.80),
              'KJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.44),
              'KTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.51),
              'K9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.15, alreadyProgress: 0.42),
              'K6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.78),


              'AQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.55),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.72),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.76),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.60),
              'J9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.63),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.70),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.89),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.70),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.80),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.57),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.77),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.HJ:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KK' :ProgressInfo(raiseProgress: 0.85, callProgress: 0.16),
              'QQ' :ProgressInfo(raiseProgress: 0.30, callProgress: 0.70, alreadyProgress: 0.35),
              'JJ' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.56),
              'TT' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.62),
              '99' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.75),
              '88' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.74),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.82),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.83),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'AKs':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),
              'AQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.90, alreadyProgress: 0.10),
              'AJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.88),
              'ATs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.91),
              'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.59),
              'A8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.64),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.40, alreadyProgress: 0.55),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.54),
              'A4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.66),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.71),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),

              'AKo':ProgressInfo(raiseProgress: 0.85, callProgress: 0.15, alreadyProgress: 0.00),
              'KQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.74),
              'KJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.61),
              'KTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.70),
              'K9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.40, alreadyProgress: 0.46),
              'K6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.80, alreadyProgress: 0.71),


              'AQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.69),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.78),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.77),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.56),
              'J9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.60, alreadyProgress: 0.50),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.55),
              'T8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.40, alreadyProgress: 0.55),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.87),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.72),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.69),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.59),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.72),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.BTN) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.UTG:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.15, callProgress: 1.00),
              'KK' :ProgressInfo(raiseProgress: 0.35, callProgress: 0.65, alreadyProgress: 0.07),
              'QQ' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.62),
              'JJ' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.57),
              'TT' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.57),
              '99' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.68),
              '88' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.76),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.85),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.91),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'AKs':ProgressInfo(raiseProgress: 0.85, callProgress: 0.15),
              'AQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.47),
              'AJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.69),
              'ATs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.29),
              'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.83),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.56),
              'A4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.79),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.63),
              'KQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'KJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.53),
              'KTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'AQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.88),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.75, alreadyProgress: 0.62),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.56),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.84),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.92),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.76),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.76),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.69),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.77),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.UTG1:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
              'KK' :ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),
              'QQ' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.63),
              'JJ' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.58),
              'TT' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.54),
              '99' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.65),
              '88' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.72),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.76),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.90),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.33),
              'AJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.76),
              'ATs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.44),
              'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.55, alreadyProgress: 0.57),
              'A8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.69),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.46),
              'A4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.81),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.58),
              'KQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00, alreadyProgress: 0.00),
              'KJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.54),
              'KTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.59),


              'AQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.77),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.75, alreadyProgress: 0.73),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.35, alreadyProgress: 0.75),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.38),
              'J9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.78),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.87),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.80),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.77),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.65),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.81),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.LJ:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KK' :ProgressInfo(raiseProgress: 0.75, callProgress: 0.25),
              'QQ' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.36),
              'JJ' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.53),
              'TT' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.59),
              '99' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.69),
              '88' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.76),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.81),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.87),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.94),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.22),
              'AJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.77),
              'ATs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.65),
              'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.59),
              'A8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.69),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.75, alreadyProgress: 0.75),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.52),
              'A4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.65),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.77),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60),
              'KQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.81),
              'KJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.51),
              'KTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.48),
              'K9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.60, alreadyProgress: 0.60),
              'K6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.64),


              'AQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.61),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.69),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.82),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.41),
              'J9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.74),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.71),
              'T8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.85),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.88),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.70),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.62),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.53),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.70),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.HJ:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KK' :ProgressInfo(raiseProgress: 0.80, callProgress: 0.20),
              'QQ' :ProgressInfo(raiseProgress: 0.25, callProgress: 1.00, alreadyProgress: 0.17),
              'JJ' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.60),
              'TT' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.64),
              '99' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.73),
              '88' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.74),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.82),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.87),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'AKs':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
              'AQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              'AJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.82),
              'ATs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.86),
              'A8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.60),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.63),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.77),
              'A5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.55),
              'A4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.64),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.78),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.80, callProgress: 0.20),
              'KQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.67),
              'KJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.72),
              'KTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.59),
              'K9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.65),
              'K6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.71),


              'AQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.73),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.89),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.71),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.44),
              'J9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.58),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.64),
              'T8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.67),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.85),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.69),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.59),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.56),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.64),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.CO:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KK' :ProgressInfo(raiseProgress: 0.60, callProgress: 0.40),
              'QQ' :ProgressInfo(raiseProgress: 0.60, callProgress: 0.40, alreadyProgress: 0.10),
              'JJ' :ProgressInfo(raiseProgress: 0.50, callProgress: 0.50, alreadyProgress: 0.32),
              'TT' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.52),
              '99' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.69),
              '88' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.74),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.76),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.78),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.90),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'AKs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'AQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              'AJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.71),
              'ATs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'A8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.81),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.63),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.67),
              'A5s':ProgressInfo(raiseProgress: 0.45, callProgress: 0.55, alreadyProgress: 0.45),
              'A4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.51),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.61),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.82),

              'AKo':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.00),
              'KQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.62),
              'KJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.46),
              'KTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.63),
              'K9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.63),
              'K8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.30, alreadyProgress: 0.56),
              'K7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.50, alreadyProgress: 0.62),
              'K6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.63),
              'K5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.74),


              'AQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.61),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.64),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.85),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.69),
              'Q9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.64),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.55),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.40),
              'J9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.62),
              'J8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.76),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.54),
              'T8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.58),
              'T7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.74),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.67),
              '97s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.84),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.63),
              '86s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.55),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.48),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.52),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.SB) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.UTG:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.80, callProgress: 0.20),
              'KK' :ProgressInfo(raiseProgress: 0.60, callProgress: 0.40),
              'QQ' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.18),
              'JJ' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.44),
              'TT' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.69),
              '99' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.87),
              '88' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.89),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              'AJs':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
              'ATs':ProgressInfo(raiseProgress: 0.15, callProgress: 0.65, alreadyProgress: 0.20),
              'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.40, callProgress: 0.45, alreadyProgress: 0.63),
              'A4s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80, alreadyProgress: 0.35),
              'KQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.12),
              'KJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.25, alreadyProgress: 0.20),
              'KTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'AQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.66),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.81),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.69),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.78),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.65),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.84),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.UTG1:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.70, callProgress: 0.30),
              'KK' :ProgressInfo(raiseProgress: 0.70, callProgress: 0.30),
              'QQ' :ProgressInfo(raiseProgress: 0.00, callProgress: 0.95),
              'JJ' :ProgressInfo(raiseProgress: 0.15, callProgress: 1.00, alreadyProgress: 0.41),
              'TT' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.56),
              '99' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.75),
              '88' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.89),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.09),
              'AJs':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70, alreadyProgress: 0.10),
              'ATs':ProgressInfo(raiseProgress: 0.11, callProgress: 0.80, alreadyProgress: 0.00),
              'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.20, callProgress: 0.70, alreadyProgress: 0.46),
              'A4s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75, alreadyProgress: 0.32),
              'KQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.30, alreadyProgress: 0.06),
              'KJs':ProgressInfo(raiseProgress: 0.00, callProgress: 0.80),
              'KTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'AQo':ProgressInfo(raiseProgress: 0.00, callProgress: 0.20, alreadyProgress: 0.65),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.63),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.62),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.72),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.69),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.72),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.70),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.86),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.LJ:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.85, callProgress: 0.15),
              'KK' :ProgressInfo(raiseProgress: 0.75, callProgress: 0.25),
              'QQ' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'JJ' :ProgressInfo(raiseProgress: 0.22, callProgress: 0.78, alreadyProgress: 0.30),
              'TT' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.41),
              '99' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.67),
              '88' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.84),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              'AJs':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80, alreadyProgress: 0.19),
              'ATs':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70, alreadyProgress: 0.00),
              'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80, alreadyProgress: 0.49),
              'A4s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.90),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'AKo':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65, alreadyProgress: 0.00),
              'KQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.50, alreadyProgress: 0.14),
              'KJs':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85, alreadyProgress: 0.00),
              'KTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.60),


              'AQo':ProgressInfo(raiseProgress: 0.00, callProgress: 0.50, alreadyProgress: 0.53),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.38),
              'J9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.55, alreadyProgress: 0.65),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.59),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.76),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.57),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.78),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.66),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.78),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.HJ:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.65, callProgress: 0.35),
              'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'QQ' :ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),
              'JJ' :ProgressInfo(raiseProgress: 0.60, callProgress: 0.40, alreadyProgress: 0.20),
              'TT' :ProgressInfo(raiseProgress: 0.20, callProgress: 0.80, alreadyProgress: 0.35),
              '99' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.55),
              '88' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.75),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.91),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              'AJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.16),
              'ATs':ProgressInfo(raiseProgress: 0.50, callProgress: 0.50, alreadyProgress: 0.30),
              'A9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.40, alreadyProgress: 0.67),
              'A8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.40, alreadyProgress: 0.56),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90, alreadyProgress: 0.43),
              'A4s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.74),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.85, callProgress: 0.15, alreadyProgress: 0.11),
              'KQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.14),
              'KJs':ProgressInfo(raiseProgress: 0.15, callProgress: 0.33, alreadyProgress: 0.00),
              'KTs':ProgressInfo(raiseProgress: 0.10, callProgress: 0.65, alreadyProgress: 0.17),


              'AQo':ProgressInfo(raiseProgress: 0.10, callProgress: 0.20, alreadyProgress: 0.39),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.30),
              'J9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.39),
              'T8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.30, alreadyProgress: 0.77),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.68),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.55),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.56),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.54),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.81),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.CO:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.65, callProgress: 0.35),
              'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'QQ' :ProgressInfo(raiseProgress: 0.50, callProgress: 0.50),
              'JJ' :ProgressInfo(raiseProgress: 0.45, callProgress: 0.55, alreadyProgress: 0.09),
              'TT' :ProgressInfo(raiseProgress: 0.50, callProgress: 0.50, alreadyProgress: 0.35),
              '99' :ProgressInfo(raiseProgress: 0.10, callProgress: 0.90, alreadyProgress: 0.41),
              '88' :ProgressInfo(raiseProgress: 0.16, callProgress: 0.84, alreadyProgress: 0.45),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.70),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.85),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              'AJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.00),
              'ATs':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75, alreadyProgress: 0.00),
              'A9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.20, alreadyProgress: 0.29),
              'A8s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85, alreadyProgress: 0.46),
              'A7s':ProgressInfo(raiseProgress: 0.25, callProgress: 0.40, alreadyProgress: 0.67),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70, alreadyProgress: 0.32),
              'A4s':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60, alreadyProgress: 0.61),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00, alreadyProgress: 0.08),
              'KQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.11),
              'KJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KTs':ProgressInfo(raiseProgress: 0.15, callProgress: 0.40),
              'K9s':ProgressInfo(raiseProgress: 0.25, callProgress: 0.00, alreadyProgress: 0.68),


              'AQo':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85, alreadyProgress: 0.47),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.30, alreadyProgress: 0.00),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.56, alreadyProgress: 0.00),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.73, alreadyProgress: 0.00),
              'J9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.22),
              'T8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.30, alreadyProgress: 0.48),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.54),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.48),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.47),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.51),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.74),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.BTN:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),
              'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'QQ' :ProgressInfo(raiseProgress: 0.70, callProgress: 0.30),
              'JJ' :ProgressInfo(raiseProgress: 0.60, callProgress: 0.40),
              'TT' :ProgressInfo(raiseProgress: 0.30, callProgress: 0.70, alreadyProgress: 0.20),
              '99' :ProgressInfo(raiseProgress: 0.35, callProgress: 0.65, alreadyProgress: 0.53),
              '88' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.42),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.35),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.70),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              'AJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'ATs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.30),
              'A9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.12),
              'A8s':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75, alreadyProgress: 0.00),
              'A7s':ProgressInfo(raiseProgress: 0.70, callProgress: 0.30, alreadyProgress: 0.30),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.70),
              'A5s':ProgressInfo(raiseProgress: 0.70, callProgress: 0.30, alreadyProgress: 0.00),
              'A4s':ProgressInfo(raiseProgress: 0.50, callProgress: 0.50, alreadyProgress: 0.08),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.55),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.89),

              'AKo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'KQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.19),
              'KJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.18),
              'KTs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.06),
              'K9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
              'K8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.50, alreadyProgress: 0.78),
              'K7s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.66),
              'K6s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.23),
              'K5s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.35, alreadyProgress: 0.55),


              'AQo':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.58),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.50, alreadyProgress: 0.08),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.11),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.08),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.26),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.07),
              'J9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.40, alreadyProgress: 0.00),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              'T8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.70, alreadyProgress: 0.39),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.30),
              '97s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.35, alreadyProgress: 0.56),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.17),
              '86s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.61),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.28),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.32),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.54),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.BB) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.UTG:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.82, callProgress: 0.18),
              'KK' :ProgressInfo(raiseProgress: 0.65, callProgress: 0.35),
              'QQ' :ProgressInfo(raiseProgress: 0.10, callProgress: 0.90, alreadyProgress: 0.28),
              'JJ' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.78),
              'TT' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.95),



              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.81),
              'AJs':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60, alreadyProgress: 0.80),
              'ATs':ProgressInfo(raiseProgress: 0.32, callProgress: 0.68, alreadyProgress: 0.59),
              'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A8s':ProgressInfo(raiseProgress: 0.20, callProgress: 0.71, alreadyProgress: 0.79),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.40, callProgress: 0.35, alreadyProgress: 0.55),
              'A4s':ProgressInfo(raiseProgress: 0.16, callProgress: 0.10, alreadyProgress: 0.50),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75, alreadyProgress: 0.54),
              'KQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'KJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'KTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'AQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.30, alreadyProgress: 0.49),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.80),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.67),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.50, alreadyProgress: 0.71),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.80, alreadyProgress: 0.46),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.75, alreadyProgress: 0.59),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.90, alreadyProgress: 0.55),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.40, alreadyProgress: 0.62),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.UTG1:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.85, callProgress: 0.15),
              'KK' :ProgressInfo(raiseProgress: 0.60, callProgress: 0.40),
              'QQ' :ProgressInfo(raiseProgress: 0.15, callProgress: 0.85, alreadyProgress: 0.13),
              'JJ' :ProgressInfo(raiseProgress: 0.15, callProgress: 0.85, alreadyProgress: 0.73),
              'TT' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.91),
              '99' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '88' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.66),
              'AJs':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
              'ATs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.68),
              'A9s':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60, alreadyProgress: 0.87),
              'A8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.80, alreadyProgress: 0.65),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60, alreadyProgress: 0.57),
              'A4s':ProgressInfo(raiseProgress: 0.20, callProgress: 0.00, alreadyProgress: 0.69),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70, alreadyProgress: 0.46),
              'KQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'KJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.68),
              'KTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'AQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.25, alreadyProgress: 0.44),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.72),
              'J9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.60),


              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.60, alreadyProgress: 0.74),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.62),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.80, alreadyProgress: 0.65),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.90, alreadyProgress: 0.52),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.30, alreadyProgress: 0.62),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.LJ:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.75, callProgress: 0.25),
              'KK' :ProgressInfo(raiseProgress: 0.70, callProgress: 0.31),
              'QQ' :ProgressInfo(raiseProgress: 0.0, callProgress: 1.00),
              'JJ' :ProgressInfo(raiseProgress: 0.25, callProgress: 0.75, alreadyProgress: 0.52),
              'TT' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.88),
              '99' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.94),
              '88' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.55),
              'AJs':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
              'ATs':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
              'A9s':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90, alreadyProgress: 0.61),
              'A8s':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75, alreadyProgress: 0.74),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65, alreadyProgress: 0.64),
              'A4s':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60, alreadyProgress: 0.83),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70, alreadyProgress: 0.26),
              'KQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.87),
              'KJs':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85, alreadyProgress: 0.57),



              'AQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.84),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'AJo':ProgressInfo(raiseProgress: 0.40, callProgress: 0.0 , alreadyProgress: 0.89),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.54),
              'J9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.40, alreadyProgress: 0.53),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.42),
              'T8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.45, alreadyProgress: 0.66),



              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.20, alreadyProgress: 0.70),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.59),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.67),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.50),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.25, alreadyProgress: 0.55),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.HJ:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.80, callProgress: 0.20),
              'KK' :ProgressInfo(raiseProgress: 0.88, callProgress: 0.12),
              'QQ' :ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
              'JJ' :ProgressInfo(raiseProgress: 0.60, callProgress: 0.40, alreadyProgress: 0.14),
              'TT' :ProgressInfo(raiseProgress: 0.35, callProgress: 0.65, alreadyProgress: 0.63),
              '99' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '88' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'AKs':ProgressInfo(raiseProgress: 0.86, callProgress: 0.14),
              'AQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              'AJs':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
              'ATs':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
              'A9s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00, alreadyProgress: 0.88),
              'A8s':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60, alreadyProgress: 0.46),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.84),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80, alreadyProgress: 0.76),
              'A4s':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80, alreadyProgress: 0.73),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.71, callProgress: 0.29),
              'KQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'KJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.67),
              'KTs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00, alreadyProgress: 0.79),


              'AQo':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.85, alreadyProgress: 0.19),
              'J9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.80, alreadyProgress: 0.23),
              'T8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),



              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.71),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.47),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.50, alreadyProgress: 0.45),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.75, alreadyProgress: 0.39),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.40, alreadyProgress: 0.54),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.CO:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.69, callProgress: 0.31),
              'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'QQ' :ProgressInfo(raiseProgress: 0.43, callProgress: 0.57),
              'JJ' :ProgressInfo(raiseProgress: 0.46, callProgress: 0.54),
              'TT' :ProgressInfo(raiseProgress: 0.50, callProgress: 0.50, alreadyProgress: 0.30),
              '99' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.79),
              '88' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.91),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'AKs':ProgressInfo(raiseProgress: 0.75, callProgress: 0.25),
              'AQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              'AJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'ATs':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
              'A9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
              'A8s':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70, alreadyProgress: 0.74),
              'A7s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00, alreadyProgress: 0.83),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.65, callProgress: 0.35, alreadyProgress: 0.60),
              'A4s':ProgressInfo(raiseProgress: 0.70, callProgress: 0.30, alreadyProgress: 0.67),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.78),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 0.89, callProgress: 0.11),
              'KQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.44),
              'KJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.91),
              'KTs':ProgressInfo(raiseProgress: 0.75, callProgress: 0.25, alreadyProgress: 0.87),
              'K9s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00, alreadyProgress: 0.84),


              'AQo':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80, alreadyProgress: 0.50),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.08),
              'J9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.90, alreadyProgress: 0.00),
              'T8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.50, alreadyProgress: 0.33),



              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.45),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.39),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.35),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.37),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.55),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.BTN:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.50, callProgress: 0.50),
              'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'QQ' :ProgressInfo(raiseProgress: 0.60, callProgress: 0.40),
              'JJ' :ProgressInfo(raiseProgress: 0.41, callProgress: 0.59),
              'TT' :ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
              '99' :ProgressInfo(raiseProgress: 0.40, callProgress: 0.60, alreadyProgress: 0.38),
              '88' :ProgressInfo(raiseProgress: 0.40, callProgress: 0.60, alreadyProgress: 0.66),
              '77' :ProgressInfo(raiseProgress: 0.20, callProgress: 0.80, alreadyProgress: 0.85),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'AQs':ProgressInfo(raiseProgress: 0.08, callProgress: 0.92),
              'AJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'ATs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.35),
              'A9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
              'A8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'A4s':ProgressInfo(raiseProgress: 0.70, callProgress: 0.30, alreadyProgress: 0.64),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.67),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'KQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              'KJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KTs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.65),
              'K9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
              'K6s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.76),


              'AQo':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.65, alreadyProgress: 0.55),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.73),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.62),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.56),
              'J9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.82),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              'T8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.35),



              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '97s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.70, alreadyProgress: 0.28),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
              '86s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.60, alreadyProgress: 0.18),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.00),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.17),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.29),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.90),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };
          case TournaPosition.SB:
            return {
              'AA' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'KK' :ProgressInfo(raiseProgress: 0.50, callProgress: 0.50),
              'QQ' :ProgressInfo(raiseProgress: 0.80, callProgress: 0.20),
              'JJ' :ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),
              'TT' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.66),
              '99' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '88' :ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
              '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'AKs':ProgressInfo(raiseProgress: 0.66, callProgress: 0.34),
              'AQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
              'AJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.30),
              'ATs':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65, alreadyProgress: 0.67),
              'A9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
              'A8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
              'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'A5s':ProgressInfo(raiseProgress: 0.90, callProgress: 0.10, alreadyProgress: 0.33),
              'A4s':ProgressInfo(raiseProgress: 0.50, callProgress: 0.50, alreadyProgress: 0.60),
              'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'AKo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
              'KQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.61),
              'KJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.60),
              'KTs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.53),
              'K9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
              'K6s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.72),


              'AQo':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.61),
              'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.82),
              'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00, alreadyProgress: 0.00),
              'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.84),
              'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.90),
              'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.81),
              'J9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.89),
              'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              'T9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.50),
              'T8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.85),



              'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.30),
              '97s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.72),


              'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.40),
              '86s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


              'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.51),


              'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.58),


              'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
              '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00, alreadyProgress: 0.59),
              '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
              '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

              'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


              'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            };

        }
      }
    }
  }
  //스택,내 포지션,상대 포지션 선택됨
  else if (tournaSelection.myTournaPosition != TournaPosition.none &&
      tournaSelection.opponentTournaPosition != TournaPosition.none) {

    if (tournaSelection.myTournaPosition == TournaPosition.UTG1) {

      switch (tournaSelection.opponentTournaPosition) {
        case TournaPosition.UTG:
          return {
            'AA' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'AKs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'AQs':ProgressInfo(raiseProgress: 0.3 , callProgress: 0.7 ),
            'AJs':ProgressInfo(raiseProgress: 0.53, callProgress: 0.47),
            'ATs':ProgressInfo(raiseProgress: 0.63, callProgress: 0.37),
            'A9s':ProgressInfo(raiseProgress: 0.5 , callProgress: 0.5 ),
            'A8s':ProgressInfo(raiseProgress: 0.24, callProgress: 0.32),
            'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
            'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'A5s':ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),
            'A4s':ProgressInfo(raiseProgress: 0.26, callProgress: 0.38),
            'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0),
            'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            'AKo':ProgressInfo(raiseProgress: 0.48, callProgress: 0.52),
            'KK' :ProgressInfo(raiseProgress: 0.75, callProgress: 0.25),
            'KQs':ProgressInfo(raiseProgress: 0.34, callProgress: 0.66),
            'KJs':ProgressInfo(raiseProgress: 0.66, callProgress: 0.34),
            'KTs':ProgressInfo(raiseProgress: 0.67, callProgress: 0.33),
            'K9s':ProgressInfo(raiseProgress: 0.14, callProgress: 0.0 ),


            'AQo':ProgressInfo(raiseProgress: 0.56, callProgress: 0.41),
            'KQo':ProgressInfo(raiseProgress: 0.27, callProgress: 0.0 ),
            'QQ' :ProgressInfo(raiseProgress: 0.52, callProgress: 0.48),
            'QJs':ProgressInfo(raiseProgress: 0.5 , callProgress: 0.5 ),
            'QTs':ProgressInfo(raiseProgress: 0.34, callProgress: 0.66),


            'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'JJ' :ProgressInfo(raiseProgress: 0.52, callProgress: 0.48),
            'JTs':ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),


            'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'TT' :ProgressInfo(raiseProgress: 0.5 , callProgress: 0.5 ),
            'T9s':ProgressInfo(raiseProgress: 0.1 , callProgress: 0.42),
            'T8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'T7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'T6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'T5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'T4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'T3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'T2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'K9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'Q9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'J9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'T9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '99' :ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),
            '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.18),
            '97s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '96s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '95s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '94s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '93s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '92s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'K8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'Q8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'J8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'T8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '98o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '88' :ProgressInfo(raiseProgress: 0.33, callProgress: 0.67),
            '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.09),
            '86s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '85s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '84s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '83s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '82s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'K7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'Q7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'J7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'T7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '97o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '87o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '77' :ProgressInfo(raiseProgress: 0.31, callProgress: 0.69),
            '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.13),
            '75s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '74s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '73s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '72s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'K6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'Q6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'J6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'T6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '96o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '86o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '76o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '66' :ProgressInfo(raiseProgress: 0.25, callProgress: 0.64),
            '65s':ProgressInfo(raiseProgress: 0.2 , callProgress: 0.23),
            '64s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '63s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '62s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'K5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'Q5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'J5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'T5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '95o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '85o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '75o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '65o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '55' :ProgressInfo(raiseProgress: 0.00, callProgress: 0.40),
            '54s':ProgressInfo(raiseProgress: 0.11, callProgress: 0.23),
            '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'K4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'Q4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'J4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'T4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '94o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '84o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '74o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '64o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '54o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.3 ),
            '43s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '42s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'K3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'Q3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'J3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'T3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '93o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '83o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '73o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '63o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '53o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '43o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.39),
            '32s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'K2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'Q2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'J2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'T2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '92o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '82o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '72o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '62o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '52o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '42o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '32o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.43),
          };
      }

    } else if (tournaSelection.myTournaPosition == TournaPosition.LJ) {
      switch (tournaSelection.opponentTournaPosition) {
        case TournaPosition.UTG:
          return {
            'AA' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'AKs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'AQs':ProgressInfo(raiseProgress: 0.38, callProgress: 0.62),
            'AJs':ProgressInfo(raiseProgress: 0.44, callProgress: 0.56),
            'ATs':ProgressInfo(raiseProgress: 0.67, callProgress: 0.33),
            'A9s':ProgressInfo(raiseProgress: 0.5 , callProgress: 0.4 ),
            'A8s':ProgressInfo(raiseProgress: 0.36, callProgress: 0.54),
            'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.24),
            'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'A5s':ProgressInfo(raiseProgress: 0.44, callProgress: 0.56),
            'A4s':ProgressInfo(raiseProgress: 0.29, callProgress: 0.47),
            'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0),
            'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            'AKo':ProgressInfo(raiseProgress: 0.5 , callProgress: 0.5 ),
            'KK' :ProgressInfo(raiseProgress: 0.86, callProgress: 0.14),
            'KQs':ProgressInfo(raiseProgress: 0.33, callProgress: 0.67),
            'KJs':ProgressInfo(raiseProgress: 0.55, callProgress: 0.45),
            'KTs':ProgressInfo(raiseProgress: 0.56, callProgress: 0.44),
            'K9s':ProgressInfo(raiseProgress: 0.36, callProgress: 0.00),
            'K8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'K7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'K6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'K5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'K4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'K3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'K2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            'AQo':ProgressInfo(raiseProgress: 0.51, callProgress: 0.46),
            'KQo':ProgressInfo(raiseProgress: 0.36, callProgress: 0.0 ),
            'QQ' :ProgressInfo(raiseProgress: 0.5 , callProgress: 0.5 ),
            'QJs':ProgressInfo(raiseProgress: 0.5 , callProgress: 0.5 ),
            'QTs':ProgressInfo(raiseProgress: 0.33, callProgress: 0.67),
            'Q9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'Q8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'Q7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'Q6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'Q5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'Q4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'Q3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'Q2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            'AJo':ProgressInfo(raiseProgress: 0.15, callProgress: 0.0 ),

            'JJ' :ProgressInfo(raiseProgress: 0.5 , callProgress: 0.5 ),
            'JTs':ProgressInfo(raiseProgress: 0.3 , callProgress: 0.7 ),
            'J9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.25),


            'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            'TT' :ProgressInfo(raiseProgress: 0.5 , callProgress: 0.5 ),
            'T9s':ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),


            'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '99' :ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),
            '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.26),


            'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '88' :ProgressInfo(raiseProgress: 0.31, callProgress: 0.69),
            '87s':ProgressInfo(raiseProgress: 0.10, callProgress: 0.15),
            '86s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '85s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '84s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '83s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '82s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'K7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'Q7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'J7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'T7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '97o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '87o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '77' :ProgressInfo(raiseProgress: 0.28, callProgress: 0.72),
            '76s':ProgressInfo(raiseProgress: 0.10, callProgress: 0.20),
            '75s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '74s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '73s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '72s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'K6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'Q6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'J6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'T6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '96o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '86o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '76o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '66' :ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
            '65s':ProgressInfo(raiseProgress: 0.20, callProgress: 0.26),
            '64s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '63s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '62s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'K5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'Q5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'J5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'T5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '95o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '85o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '75o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '65o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '55' :ProgressInfo(raiseProgress: 0.1 , callProgress: 0.6 ),
            '54s':ProgressInfo(raiseProgress: 0.10, callProgress: 0.25),
            '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'K4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'Q4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'J4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'T4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '94o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '84o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '74o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '64o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '54o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.49),
            '43s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '42s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'K3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'Q3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'J3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'T3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '93o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '83o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '73o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '63o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '53o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '43o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.48),
            '32s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'K2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'Q2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'J2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'T2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '92o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '82o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '72o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '62o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '52o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '42o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '32o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.59),
          };
        case TournaPosition.UTG1:
          return {
            'AA' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.0 ),
            'QQ' :ProgressInfo(raiseProgress: 0.51, callProgress: 0.49),
            'JJ' :ProgressInfo(raiseProgress: 0.53, callProgress: 0.47),
            'TT' :ProgressInfo(raiseProgress: 0.51, callProgress: 0.49),
            '99' :ProgressInfo(raiseProgress: 0.39, callProgress: 0.61),
            '88' :ProgressInfo(raiseProgress: 0.36, callProgress: 0.64),
            '77' :ProgressInfo(raiseProgress: 0.34, callProgress: 0.66),
            '66' :ProgressInfo(raiseProgress: 0.27, callProgress: 0.73),
            '55' :ProgressInfo(raiseProgress: 0.16, callProgress: 0.58),
            '44' :ProgressInfo(raiseProgress: 0.00, callProgress: 0.51),
            '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.46),
            '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.54),


            'AKs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'AQs':ProgressInfo(raiseProgress: 0.42, callProgress: 0.58),
            'AJs':ProgressInfo(raiseProgress: 0.42, callProgress: 0.58),
            'ATs':ProgressInfo(raiseProgress: 0.67, callProgress: 0.33),
            'A9s':ProgressInfo(raiseProgress: 0.63, callProgress: 0.37),
            'A8s':ProgressInfo(raiseProgress: 0.46, callProgress: 0.54),
            'A7s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.30),
            'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'A5s':ProgressInfo(raiseProgress: 0.52, callProgress: 0.48),
            'A4s':ProgressInfo(raiseProgress: 0.31, callProgress: 0.54),
            'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.18),
            'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            'AKo':ProgressInfo(raiseProgress: 0.55, callProgress: 0.45),
            'KQs':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
            'KJs':ProgressInfo(raiseProgress: 0.56, callProgress: 0.44),
            'KTs':ProgressInfo(raiseProgress: 0.6 , callProgress: 0.4 ),
            'K9s':ProgressInfo(raiseProgress: 0.58, callProgress: 0.15),

            'AQo':ProgressInfo(raiseProgress: 0.59, callProgress: 0.41),
            'KQo':ProgressInfo(raiseProgress: 0.42, callProgress: 0.09),
            'QJs':ProgressInfo(raiseProgress: 0.61, callProgress: 0.39),
            'QTs':ProgressInfo(raiseProgress: 0.4 , callProgress: 0.6 ),


            'AJo':ProgressInfo(raiseProgress: 0.23, callProgress: 0.12),
            'JTs':ProgressInfo(raiseProgress: 0.46, callProgress: 0.54),
            'J9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.28),


            'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'T9s':ProgressInfo(raiseProgress: 0.26, callProgress: 0.74),


            'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.29),


            'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '87s':ProgressInfo(raiseProgress: 0.08, callProgress: 0.14),


            'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'K7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'Q7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'J7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'T7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '97o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '87o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '76s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.17),
            '75s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '74s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '73s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '72s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '65s':ProgressInfo(raiseProgress: 0.21, callProgress: 0.23),


            'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '54s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.27),


            'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


            'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


            'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

          };
      }
    } else if (tournaSelection.myTournaPosition == TournaPosition.HJ) {
      switch (tournaSelection.opponentTournaPosition) {

        case TournaPosition.UTG:
          return {
            'AA' :ProgressInfo(raiseProgress: 1.0 , callProgress: 1.0 ),
            'KK' :ProgressInfo(raiseProgress: 0.85, callProgress: 0.15),
            'QQ' :ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),
            'JJ' :ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),
            'TT' :ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),
            '99' :ProgressInfo(raiseProgress: 0.33, callProgress: 0.67),
            '88' :ProgressInfo(raiseProgress: 0.26, callProgress: 0.74),
            '77' :ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
            '66' :ProgressInfo(raiseProgress: 0.19, callProgress: 0.81),
            '55' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            '44' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AKs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'AQs':ProgressInfo(raiseProgress: 0.41, callProgress: 0.59),
            'AJs':ProgressInfo(raiseProgress: 0.42, callProgress: 0.58),
            'ATs':ProgressInfo(raiseProgress: 0.67, callProgress: 0.33),
            'A9s':ProgressInfo(raiseProgress: 0.33, callProgress: 0.67),
            'A8s':ProgressInfo(raiseProgress: 0.42, callProgress: 0.58),
            'A7s':ProgressInfo(raiseProgress: 0.2 , callProgress: 0.8 ),
            'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.2 ),
            'A5s':ProgressInfo(raiseProgress: 0.44, callProgress: 0.56),
            'A4s':ProgressInfo(raiseProgress: 0.3 , callProgress: 0.7 ),
            'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.4 ),
            'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            'AKo':ProgressInfo(raiseProgress: 0.41, callProgress: 0.59),
            'KQs':ProgressInfo(raiseProgress: 0.2 , callProgress: 0.8 ),
            'KJs':ProgressInfo(raiseProgress: 0.4 , callProgress: 0.6 ),
            'KTs':ProgressInfo(raiseProgress: 0.5 , callProgress: 0.5 ),
            'K9s':ProgressInfo(raiseProgress: 0.5 , callProgress: 0.5 ),

            'AQo':ProgressInfo(raiseProgress: 0.36, callProgress: 0.64),
            'KQo':ProgressInfo(raiseProgress: 0.44, callProgress: 0.27),
            'QJs':ProgressInfo(raiseProgress: 0.4 , callProgress: 0.6 ),
            'QTs':ProgressInfo(raiseProgress: 0.3 , callProgress: 0.7 ),


            'AJo':ProgressInfo(raiseProgress: 0.26, callProgress: 0.24),
            'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'JTs':ProgressInfo(raiseProgress: 0.27, callProgress: 0.73),
            'J9s':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),


            'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'T9s':ProgressInfo(raiseProgress: 0.2 , callProgress: 0.8 ),
            'T8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.69),


            'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '98s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.54),


            'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '87s':ProgressInfo(raiseProgress: 0.13, callProgress: 0.3),


            'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '76s':ProgressInfo(raiseProgress: 0.12, callProgress: 0.32),


            'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '65s':ProgressInfo(raiseProgress: 0.27, callProgress: 0.56),


            'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '54s':ProgressInfo(raiseProgress: 0.09, callProgress: 0.47),

            'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '43s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


            'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


            'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

          };
        case TournaPosition.UTG1:
          return {
            'AA' :ProgressInfo(raiseProgress: 1.0 , callProgress: 1.0 ),
            'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'QQ' :ProgressInfo(raiseProgress: 0.42, callProgress: 0.58),
            'JJ' :ProgressInfo(raiseProgress: 0.48, callProgress: 0.52),
            'TT' :ProgressInfo(raiseProgress: 0.46, callProgress: 0.54),
            '99' :ProgressInfo(raiseProgress: 0.39, callProgress: 0.61),
            '88' :ProgressInfo(raiseProgress: 0.31, callProgress: 0.69),
            '77' :ProgressInfo(raiseProgress: 0.28, callProgress: 0.72),
            '66' :ProgressInfo(raiseProgress: 0.22, callProgress: 0.78),
            '55' :ProgressInfo(raiseProgress: 0.16, callProgress: 0.84),
            '44' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.83),
            '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AKs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'AQs':ProgressInfo(raiseProgress: 0.5 , callProgress: 0.5),
            'AJs':ProgressInfo(raiseProgress: 0.38, callProgress: 0.62),
            'ATs':ProgressInfo(raiseProgress: 0.68, callProgress: 0.32),
            'A9s':ProgressInfo(raiseProgress: 0.52, callProgress: 0.48),
            'A8s':ProgressInfo(raiseProgress: 0.44, callProgress: 0.56),
            'A7s':ProgressInfo(raiseProgress: 0.32, callProgress: 0.68),
            'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.36),
            'A5s':ProgressInfo(raiseProgress: 0.44, callProgress: 0.56),
            'A4s':ProgressInfo(raiseProgress: 0.5 , callProgress: 0.5 ),
            'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.48),
            'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            'AKo':ProgressInfo(raiseProgress: 0.46, callProgress: 0.54),
            'KQs':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
            'KJs':ProgressInfo(raiseProgress: 0.42, callProgress: 0.58),
            'KTs':ProgressInfo(raiseProgress: 0.49, callProgress: 0.51),
            'K9s':ProgressInfo(raiseProgress: 0.57, callProgress: 0.43),

            'AQo':ProgressInfo(raiseProgress: 0.47, callProgress: 0.53),
            'KQo':ProgressInfo(raiseProgress: 0.5 , callProgress: 0.38),
            'QJs':ProgressInfo(raiseProgress: 0.48, callProgress: 0.52),
            'QTs':ProgressInfo(raiseProgress: 0.34, callProgress: 0.66),
            'Q9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.12),


            'AJo':ProgressInfo(raiseProgress: 0.27, callProgress: 0.43),
            'KJo':ProgressInfo(raiseProgress: 0.00, callProgress: 0.0 ),
            'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'JTs':ProgressInfo(raiseProgress: 0.43, callProgress: 0.57),
            'J9s':ProgressInfo(raiseProgress: 0.39, callProgress: 0.61),


            'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'T9s':ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
            'T8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.53),


            'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '98s':ProgressInfo(raiseProgress: 0.06, callProgress: 0.68),


            'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '87s':ProgressInfo(raiseProgress: 0.16, callProgress: 0.34),


            'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '76s':ProgressInfo(raiseProgress: 0.08, callProgress: 0.28),


            'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '65s':ProgressInfo(raiseProgress: 0.26, callProgress: 0.41),


            'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '54s':ProgressInfo(raiseProgress: 0.05, callProgress: 0.39),

            'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '43s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


            'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


            'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

          };
        case TournaPosition.LJ:
          return {
            'AA' :ProgressInfo(raiseProgress: 1.0 , callProgress: 1.0 ),
            'KK' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'QQ' :ProgressInfo(raiseProgress: 0.55, callProgress: 0.45),
            'JJ' :ProgressInfo(raiseProgress: 0.48, callProgress: 0.52),
            'TT' :ProgressInfo(raiseProgress: 0.44, callProgress: 0.56),
            '99' :ProgressInfo(raiseProgress: 0.33, callProgress: 0.67),
            '88' :ProgressInfo(raiseProgress: 0.31, callProgress: 0.69),
            '77' :ProgressInfo(raiseProgress: 0.27, callProgress: 0.73),
            '66' :ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
            '55' :ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
            '44' :ProgressInfo(raiseProgress: 0.21, callProgress: 0.79),
            '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.69),
            '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.72),

            'AKs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'AQs':ProgressInfo(raiseProgress: 0.63, callProgress: 0.37),
            'AJs':ProgressInfo(raiseProgress: 0.32, callProgress: 0.68),
            'ATs':ProgressInfo(raiseProgress: 0.49, callProgress: 0.51),
            'A9s':ProgressInfo(raiseProgress: 0.53, callProgress: 0.47),
            'A8s':ProgressInfo(raiseProgress: 0.43, callProgress: 0.57),
            'A7s':ProgressInfo(raiseProgress: 0.5 , callProgress: 0.5 ),
            'A6s':ProgressInfo(raiseProgress: 0.11, callProgress: 0.34),
            'A5s':ProgressInfo(raiseProgress: 0.54, callProgress: 0.46),
            'A4s':ProgressInfo(raiseProgress: 0.41, callProgress: 0.59),
            'A3s':ProgressInfo(raiseProgress: 0.33, callProgress: 0.53),
            'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            'AKo':ProgressInfo(raiseProgress: 0.58, callProgress: 0.42),
            'KQs':ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
            'KJs':ProgressInfo(raiseProgress: 0.52, callProgress: 0.48),
            'KTs':ProgressInfo(raiseProgress: 0.51, callProgress: 0.49),
            'K9s':ProgressInfo(raiseProgress: 0.68, callProgress: 0.32),
            'K8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
            'K6s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),

            'AQo':ProgressInfo(raiseProgress: 0.52, callProgress: 0.48),
            'KQo':ProgressInfo(raiseProgress: 0.64, callProgress: 0.36),
            'QJs':ProgressInfo(raiseProgress: 0.42, callProgress: 0.58),
            'QTs':ProgressInfo(raiseProgress: 0.41, callProgress: 0.59),
            'Q9s':ProgressInfo(raiseProgress: 0.26, callProgress: 0.18),


            'AJo':ProgressInfo(raiseProgress: 0.53, callProgress: 0.47),
            'KJo':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
            'JTs':ProgressInfo(raiseProgress: 0.44, callProgress: 0.56),
            'J9s':ProgressInfo(raiseProgress: 0.47, callProgress: 0.53),


            'ATo':ProgressInfo(raiseProgress: 0.16, callProgress: 0.0 ),
            'T9s':ProgressInfo(raiseProgress: 0.34, callProgress: 0.66),
            'T8s':ProgressInfo(raiseProgress: 0.12, callProgress: 0.26),


            'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '98s':ProgressInfo(raiseProgress: 0.12, callProgress: 0.58),


            'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '87s':ProgressInfo(raiseProgress: 0.12, callProgress: 0.3 ),


            'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '76s':ProgressInfo(raiseProgress: 0.09, callProgress: 0.2 ),


            'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '65s':ProgressInfo(raiseProgress: 0.29, callProgress: 0.24),


            'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '54s':ProgressInfo(raiseProgress: 0.09, callProgress: 0.3 ),

            'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '43s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


            'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


            'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

          };
      }
    } else if (tournaSelection.myTournaPosition == TournaPosition.CO) {
      switch (tournaSelection.opponentTournaPosition) {

        case TournaPosition.UTG:
          return {
            'AA' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'KK' :ProgressInfo(raiseProgress: 0.87, callProgress: 0.13),
            'QQ' :ProgressInfo(raiseProgress: 0.42, callProgress: 0.58),
            'JJ' :ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),
            'TT' :ProgressInfo(raiseProgress: 0.44, callProgress: 0.56),
            '99' :ProgressInfo(raiseProgress: 0.33, callProgress: 0.67),
            '88' :ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
            '77' :ProgressInfo(raiseProgress: 0.20, callProgress: 0.8 ),
            '66' :ProgressInfo(raiseProgress: 0.16, callProgress: 0.84),
            '55' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AKs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'AQs':ProgressInfo(raiseProgress: 0.57, callProgress: 0.43),
            'AJs':ProgressInfo(raiseProgress: 0.41, callProgress: 0.59),
            'ATs':ProgressInfo(raiseProgress: 0.61, callProgress: 0.39),
            'A9s':ProgressInfo(raiseProgress: 0.26, callProgress: 0.74),
            'A8s':ProgressInfo(raiseProgress: 0.34, callProgress: 0.66),
            'A7s':ProgressInfo(raiseProgress: 0.2 , callProgress: 0.8 ),
            'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.84),
            'A5s':ProgressInfo(raiseProgress: 0.43, callProgress: 0.57),
            'A4s':ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
            'A3s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.0),
            'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.14),

            'AKo':ProgressInfo(raiseProgress: 0.36, callProgress: 0.64),
            'KQs':ProgressInfo(raiseProgress: 0.12, callProgress: 0.88),
            'KJs':ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),
            'KTs':ProgressInfo(raiseProgress: 0.38, callProgress: 0.62),
            'K9s':ProgressInfo(raiseProgress: 0.44, callProgress: 0.56),
            'K8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.36),
            'K7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
            'K6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.29),

            'AQo':ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
            'KQo':ProgressInfo(raiseProgress: 0.47, callProgress: 0.53),
            'QJs':ProgressInfo(raiseProgress: 0.3 , callProgress: 0.7 ),
            'QTs':ProgressInfo(raiseProgress: 0.16, callProgress: 0.84),
            'Q9s':ProgressInfo(raiseProgress: 0.22, callProgress: 0.78),


            'AJo':ProgressInfo(raiseProgress: 0.34, callProgress: 0.66),
            'KJo':ProgressInfo(raiseProgress: 0.00, callProgress: 0.14),
            'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'JTs':ProgressInfo(raiseProgress: 0.4 , callProgress: 0.6 ),
            'J9s':ProgressInfo(raiseProgress: 0.2 , callProgress: 0.8 ),
            'J8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


            'ATo':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
            'T9s':ProgressInfo(raiseProgress: 0.2 , callProgress: 0.8 ),
            'T8s':ProgressInfo(raiseProgress: 0.17, callProgress: 0.83),


            'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '98s':ProgressInfo(raiseProgress: 0.07, callProgress: 0.93),
            '97s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.29),


            'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '87s':ProgressInfo(raiseProgress: 0.22, callProgress: 0.78),
            '86s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.19),


            'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '76s':ProgressInfo(raiseProgress: 0.16, callProgress: 0.84),


            'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '65s':ProgressInfo(raiseProgress: 0.32, callProgress: 0.68),


            'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '54s':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),

            'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '43s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


            'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


            'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

          };
        case TournaPosition.UTG1:
          return {
            'AA' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'QQ' :ProgressInfo(raiseProgress: 0.41, callProgress: 0.59),
            'JJ' :ProgressInfo(raiseProgress: 0.47, callProgress: 0.53),
            'TT' :ProgressInfo(raiseProgress: 0.46, callProgress: 0.54),
            '99' :ProgressInfo(raiseProgress: 0.39, callProgress: 0.61),
            '88' :ProgressInfo(raiseProgress: 0.29, callProgress: 0.71),
            '77' :ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
            '66' :ProgressInfo(raiseProgress: 0.16, callProgress: 0.84),
            '55' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AKs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'AQs':ProgressInfo(raiseProgress: 0.76, callProgress: 0.24),
            'AJs':ProgressInfo(raiseProgress: 0.26, callProgress: 0.74),
            'ATs':ProgressInfo(raiseProgress: 0.6 , callProgress: 0.4 ),
            'A9s':ProgressInfo(raiseProgress: 0.49, callProgress: 0.51),
            'A8s':ProgressInfo(raiseProgress: 0.34, callProgress: 0.66),

            'A7s':ProgressInfo(raiseProgress: 0.32, callProgress: 0.68),
            'A6s':ProgressInfo(raiseProgress: 0.12, callProgress: 0.88),
            'A5s':ProgressInfo(raiseProgress: 0.48, callProgress: 0.52),
            'A4s':ProgressInfo(raiseProgress: 0.22, callProgress: 0.78),
            'A3s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.29),

            'AKo':ProgressInfo(raiseProgress: 0.43, callProgress: 0.57),
            'KQs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'KJs':ProgressInfo(raiseProgress: 0.49, callProgress: 0.51),
            'KTs':ProgressInfo(raiseProgress: 0.36, callProgress: 0.64),
            'K9s':ProgressInfo(raiseProgress: 0.44, callProgress: 0.56),
            'K8s':ProgressInfo(raiseProgress: 0.19, callProgress: 0.37),
            'K7s':ProgressInfo(raiseProgress: 0.11, callProgress: 0.34),
            'K6s':ProgressInfo(raiseProgress: 0.08, callProgress: 0.27),

            'AQo':ProgressInfo(raiseProgress: 0.3 , callProgress: 0.7 ),
            'KQo':ProgressInfo(raiseProgress: 0.46, callProgress: 0.54),
            'QJs':ProgressInfo(raiseProgress: 0.36, callProgress: 0.64),
            'QTs':ProgressInfo(raiseProgress: 0.28, callProgress: 0.72),
            'Q9s':ProgressInfo(raiseProgress: 0.32, callProgress: 0.68),


            'AJo':ProgressInfo(raiseProgress: 0.34, callProgress: 0.66),
            'KJo':ProgressInfo(raiseProgress: 0.17, callProgress: 0.27),
            'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'JTs':ProgressInfo(raiseProgress: 0.47, callProgress: 0.53),
            'J9s':ProgressInfo(raiseProgress: 0.31, callProgress: 0.69),



            'ATo':ProgressInfo(raiseProgress: 0.16, callProgress: 0.13),
            'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
            'T9s':ProgressInfo(raiseProgress: 0.21, callProgress: 0.79),
            'T8s':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),


            'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '98s':ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),
            '97s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.44),


            'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '87s':ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
            '86s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.23),


            'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '76s':ProgressInfo(raiseProgress: 0.19, callProgress: 0.63),


            'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '65s':ProgressInfo(raiseProgress: 0.34, callProgress: 0.66),


            'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '54s':ProgressInfo(raiseProgress: 0.16, callProgress: 0.84),

            'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '43s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


            'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


            'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

          };
        case TournaPosition.LJ:
          return {
            'AA' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'KK' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'QQ' :ProgressInfo(raiseProgress: 0.59, callProgress: 0.41),
            'JJ' :ProgressInfo(raiseProgress: 0.48, callProgress: 0.52),
            'TT' :ProgressInfo(raiseProgress: 0.4 , callProgress: 0.6 ),
            '99' :ProgressInfo(raiseProgress: 0.32, callProgress: 0.68),
            '88' :ProgressInfo(raiseProgress: 0.28, callProgress: 0.72),
            '77' :ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
            '66' :ProgressInfo(raiseProgress: 0.2 , callProgress: 0.8 ),
            '55' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            '44' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AKs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'AQs':ProgressInfo(raiseProgress: 0.68, callProgress: 0.32),
            'AJs':ProgressInfo(raiseProgress: 0.33, callProgress: 0.67),
            'ATs':ProgressInfo(raiseProgress: 0.36, callProgress: 0.64),
            'A9s':ProgressInfo(raiseProgress: 0.49, callProgress: 0.51),
            'A8s':ProgressInfo(raiseProgress: 0.32, callProgress: 0.68),
            'A7s':ProgressInfo(raiseProgress: 0.38, callProgress: 0.62),
            'A6s':ProgressInfo(raiseProgress: 0.36, callProgress: 0.64),
            'A5s':ProgressInfo(raiseProgress: 0.47, callProgress: 0.53),
            'A4s':ProgressInfo(raiseProgress: 0.36, callProgress: 0.64),
            'A3s':ProgressInfo(raiseProgress: 0.33, callProgress: 0.67),
            'A2s':ProgressInfo(raiseProgress: 0.07, callProgress: 0.56),

            'AKo':ProgressInfo(raiseProgress: 0.59, callProgress: 0.41),
            'KQs':ProgressInfo(raiseProgress: 0.2 , callProgress: 0.8 ),
            'KJs':ProgressInfo(raiseProgress: 0.56, callProgress: 0.44),
            'KTs':ProgressInfo(raiseProgress: 0.49, callProgress: 0.51),
            'K9s':ProgressInfo(raiseProgress: 0.58, callProgress: 0.42),
            'K8s':ProgressInfo(raiseProgress: 0.26, callProgress: 0.37),
            'K7s':ProgressInfo(raiseProgress: 0.13, callProgress: 0.2 ),
            'K6s':ProgressInfo(raiseProgress: 0.22, callProgress: 0.39),

            'AQo':ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),
            'KQo':ProgressInfo(raiseProgress: 0.47, callProgress: 0.53),
            'QJs':ProgressInfo(raiseProgress: 0.28, callProgress: 0.72),
            'QTs':ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
            'Q9s':ProgressInfo(raiseProgress: 0.55, callProgress: 0.45),


            'AJo':ProgressInfo(raiseProgress: 0.36, callProgress: 0.64),
            'KJo':ProgressInfo(raiseProgress: 0.27, callProgress: 0.42),
            'QJo':ProgressInfo(raiseProgress: 0.16, callProgress: 0.07),
            'JTs':ProgressInfo(raiseProgress: 0.4 , callProgress: 0.6 ),
            'J9s':ProgressInfo(raiseProgress: 0.37, callProgress: 0.63),



            'ATo':ProgressInfo(raiseProgress: 0.47, callProgress: 0.23),
            'T9s':ProgressInfo(raiseProgress: 0.3 , callProgress: 0.7 ),
            'T8s':ProgressInfo(raiseProgress: 0.3 , callProgress: 0.7 ),


            'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '98s':ProgressInfo(raiseProgress: 0.11, callProgress: 0.89),
            '97s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.31),


            'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '87s':ProgressInfo(raiseProgress: 0.3 , callProgress: 0.7 ),
            '86s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


            'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '76s':ProgressInfo(raiseProgress: 0.2 , callProgress: 0.41),


            'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '65s':ProgressInfo(raiseProgress: 0.43, callProgress: 0.57),


            'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '54s':ProgressInfo(raiseProgress: 0.23, callProgress: 0.61),

            'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '43s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


            'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


            'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

          };
        case TournaPosition.HJ:
          return {
            'AA' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'KK' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'QQ' :ProgressInfo(raiseProgress: 0.65, callProgress: 0.35),
            'JJ' :ProgressInfo(raiseProgress: 0.44, callProgress: 0.56),
            'TT' :ProgressInfo(raiseProgress: 0.38, callProgress: 0.62),
            '99' :ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
            '88' :ProgressInfo(raiseProgress: 0.26, callProgress: 0.74),
            '77' :ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
            '66' :ProgressInfo(raiseProgress: 0.17, callProgress: 0.83),
            '55' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AKs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'AQs':ProgressInfo(raiseProgress: 0.90, callProgress: 0.10),
            'AJs':ProgressInfo(raiseProgress: 0.12, callProgress: 0.88),
            'ATs':ProgressInfo(raiseProgress: 0.09, callProgress: 0.91),
            'A9s':ProgressInfo(raiseProgress: 0.41, callProgress: 0.59),
            'A8s':ProgressInfo(raiseProgress: 0.36, callProgress: 0.64),
            'A7s':ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),
            'A6s':ProgressInfo(raiseProgress: 0.44, callProgress: 0.56),
            'A5s':ProgressInfo(raiseProgress: 0.46, callProgress: 0.54),
            'A4s':ProgressInfo(raiseProgress: 0.34, callProgress: 0.66),
            'A3s':ProgressInfo(raiseProgress: 0.29, callProgress: 0.71),
            'A2s':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),

            'AKo':ProgressInfo(raiseProgress: 0.74, callProgress: 0.26),
            'KQs':ProgressInfo(raiseProgress: 0.26, callProgress: 0.74),
            'KJs':ProgressInfo(raiseProgress: 0.39, callProgress: 0.61),
            'KTs':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),
            'K9s':ProgressInfo(raiseProgress: 0.54, callProgress: 0.46),
            'K8s':ProgressInfo(raiseProgress: 0.38, callProgress: 0.62),
            'K7s':ProgressInfo(raiseProgress: 0.52, callProgress: 0.39),
            'K6s':ProgressInfo(raiseProgress: 0.29, callProgress: 0.56),
            'K5s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),

            'AQo':ProgressInfo(raiseProgress: 0.31, callProgress: 0.69),
            'KQo':ProgressInfo(raiseProgress: 0.41, callProgress: 0.59),
            'QJs':ProgressInfo(raiseProgress: 0.22, callProgress: 0.78),
            'QTs':ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
            'Q9s':ProgressInfo(raiseProgress: 0.65, callProgress: 0.35),
            'Q8s':ProgressInfo(raiseProgress: 0.43, callProgress: 0.00),


            'AJo':ProgressInfo(raiseProgress: 0.50, callProgress: 0.50),
            'KJo':ProgressInfo(raiseProgress: 0.33, callProgress: 0.49),
            'QJo':ProgressInfo(raiseProgress: 0.28, callProgress: 0.23),
            'JTs':ProgressInfo(raiseProgress: 0.44, callProgress: 0.56),
            'J9s':ProgressInfo(raiseProgress: 0.50, callProgress: 0.50),
            'J8s':ProgressInfo(raiseProgress: 0.19, callProgress: 0.12),




            'ATo':ProgressInfo(raiseProgress: 0.59, callProgress: 0.41),
            'T9s':ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),
            'T8s':ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),


            'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '98s':ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),
            '97s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.38),


            'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '87s':ProgressInfo(raiseProgress: 0.28, callProgress: 0.72),
            '86s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


            'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '76s':ProgressInfo(raiseProgress: 0.31, callProgress: 0.53),


            'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '65s':ProgressInfo(raiseProgress: 0.41, callProgress: 0.59),


            'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '54s':ProgressInfo(raiseProgress: 0.28, callProgress: 0.58),

            'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '43s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


            'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


            'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

          };
      }
    } else if (tournaSelection.myTournaPosition == TournaPosition.BTN) {
      switch (tournaSelection.opponentTournaPosition) {

        case TournaPosition.UTG:
          return {
            'AA' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'KK' :ProgressInfo(raiseProgress: 0.93, callProgress: 0.07),
            'QQ' :ProgressInfo(raiseProgress: 0.38, callProgress: 0.62),
            'JJ' :ProgressInfo(raiseProgress: 0.43, callProgress: 0.57),
            'TT' :ProgressInfo(raiseProgress: 0.43, callProgress: 0.57),
            '99' :ProgressInfo(raiseProgress: 0.32, callProgress: 0.68),
            '88' :ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
            '77' :ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
            '66' :ProgressInfo(raiseProgress: 0.09, callProgress: 0.91),
            '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AKs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'AQs':ProgressInfo(raiseProgress: 0.53, callProgress: 0.47),
            'AJs':ProgressInfo(raiseProgress: 0.31, callProgress: 0.69),
            'ATs':ProgressInfo(raiseProgress: 0.71, callProgress: 0.29),
            'A9s':ProgressInfo(raiseProgress: 0.09, callProgress: 0.91),
            'A8s':ProgressInfo(raiseProgress: 0.17, callProgress: 0.83),
            'A7s':ProgressInfo(raiseProgress: 0.2 , callProgress: 0.8 ),
            'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'A5s':ProgressInfo(raiseProgress: 0.44, callProgress: 0.56),
            'A4s':ProgressInfo(raiseProgress: 0.21, callProgress: 0.79),
            'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AKo':ProgressInfo(raiseProgress: 0.37, callProgress: 0.63),
            'KQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'KJs':ProgressInfo(raiseProgress: 0.47, callProgress: 0.53),
            'KTs':ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
            'K9s':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
            'K8s':ProgressInfo(raiseProgress: 0.21, callProgress: 0.79),
            'K7s':ProgressInfo(raiseProgress: 0.10, callProgress: 0.9 ),
            'K6s':ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
            'K5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.8 ),

            'AQo':ProgressInfo(raiseProgress: 0.12, callProgress: 0.88),
            'KQo':ProgressInfo(raiseProgress: 0.37, callProgress: 0.63),
            'QJs':ProgressInfo(raiseProgress: 0.38, callProgress: 0.62),
            'QTs':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
            'Q9s':ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
            'Q8s':ProgressInfo(raiseProgress: 0.2 , callProgress: 0.4 ),


            'AJo':ProgressInfo(raiseProgress: 0.27, callProgress: 0.73),
            'KJo':ProgressInfo(raiseProgress: 0.15, callProgress: 0.45),
            'QJo':ProgressInfo(raiseProgress: 0.00, callProgress: 0.34),
            'JTs':ProgressInfo(raiseProgress: 0.44, callProgress: 0.56),
            'J9s':ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),
            'J8s':ProgressInfo(raiseProgress: 0.09, callProgress: 0.91),


            'ATo':ProgressInfo(raiseProgress: 0.33, callProgress: 0.57),
            'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.19),
            'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.33),
            'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.55),
            'T9s':ProgressInfo(raiseProgress: 0.16, callProgress: 0.84),
            'T8s':ProgressInfo(raiseProgress: 0.11, callProgress: 0.89),
            'T7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.74),


            'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '98s':ProgressInfo(raiseProgress: 0.08, callProgress: 0.92),
            '97s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.0 ),


            'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '87s':ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
            '86s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),


            'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '76s':ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
            '75s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.61),


            'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '65s':ProgressInfo(raiseProgress: 0.31, callProgress: 0.69),
            '64s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.92),


            'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '54s':ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
            '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '43s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.2 ),


            'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


            'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

          };
        case TournaPosition.UTG1:
          return {
            'AA' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'QQ' :ProgressInfo(raiseProgress: 0.37, callProgress: 0.63),
            'JJ' :ProgressInfo(raiseProgress: 0.42, callProgress: 0.58),
            'TT' :ProgressInfo(raiseProgress: 0.46, callProgress: 0.54),
            '99' :ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),
            '88' :ProgressInfo(raiseProgress: 0.28, callProgress: 0.72),
            '77' :ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
            '66' :ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
            '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AKs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'AQs':ProgressInfo(raiseProgress: 0.67, callProgress: 0.33),
            'AJs':ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
            'ATs':ProgressInfo(raiseProgress: 0.56, callProgress: 0.44),
            'A9s':ProgressInfo(raiseProgress: 0.43, callProgress: 0.57),
            'A8s':ProgressInfo(raiseProgress: 0.31, callProgress: 0.69),
            'A7s':ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
            'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'A5s':ProgressInfo(raiseProgress: 0.54, callProgress: 0.46),
            'A4s':ProgressInfo(raiseProgress: 0.19, callProgress: 0.81),
            'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AKo':ProgressInfo(raiseProgress: 0.42, callProgress: 0.58),
            'KQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'KJs':ProgressInfo(raiseProgress: 0.46, callProgress: 0.54),
            'KTs':ProgressInfo(raiseProgress: 0.41, callProgress: 0.59),
            'K9s':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
            'K8s':ProgressInfo(raiseProgress: 0.12, callProgress: 0.88),
            'K7s':ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
            'K6s':ProgressInfo(raiseProgress: 0.28, callProgress: 0.72),
            'K5s':ProgressInfo(raiseProgress: 0.07, callProgress: 0.93),
            'K4s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.17),

            'AQo':ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
            'KQo':ProgressInfo(raiseProgress: 0.33, callProgress: 0.67),
            'QJs':ProgressInfo(raiseProgress: 0.27, callProgress: 0.73),
            'QTs':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
            'Q9s':ProgressInfo(raiseProgress: 0.21, callProgress: 0.79),
            'Q8s':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),


            'AJo':ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
            'KJo':ProgressInfo(raiseProgress: 0.26, callProgress: 0.71),
            'QJo':ProgressInfo(raiseProgress: 0.19, callProgress: 0.47),
            'JTs':ProgressInfo(raiseProgress: 0.62, callProgress: 0.38),
            'J9s':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
            'J8s':ProgressInfo(raiseProgress: 0.09, callProgress: 0.91),


            'ATo':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60),
            'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.21),
            'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.36),
            'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.57),
            'T9s':ProgressInfo(raiseProgress: 0.22, callProgress: 0.78),
            'T8s':ProgressInfo(raiseProgress: 0.11, callProgress: 0.89),
            'T7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.87),


            'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '98s':ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),
            '97s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.0 ),
            '96s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.28),


            'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '87s':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
            '86s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),


            'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '76s':ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
            '75s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.69),


            'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '65s':ProgressInfo(raiseProgress: 0.35, callProgress: 0.75),
            '64s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.76),


            'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '54s':ProgressInfo(raiseProgress: 0.19, callProgress: 0.81),
            '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.98),

            'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '43s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


            'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


            'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

          };
        case TournaPosition.LJ:
          return {
            'AA' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'QQ' :ProgressInfo(raiseProgress: 0.64, callProgress: 0.36),
            'JJ' :ProgressInfo(raiseProgress: 0.47, callProgress: 0.53),
            'TT' :ProgressInfo(raiseProgress: 0.41, callProgress: 0.59),
            '99' :ProgressInfo(raiseProgress: 0.31, callProgress: 0.69),
            '88' :ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
            '77' :ProgressInfo(raiseProgress: 0.19, callProgress: 0.81),
            '66' :ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),
            '55' :ProgressInfo(raiseProgress: 0.06, callProgress: 0.94),
            '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AKs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'AQs':ProgressInfo(raiseProgress: 0.78, callProgress: 0.22),
            'AJs':ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
            'ATs':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),
            'A9s':ProgressInfo(raiseProgress: 0.41, callProgress: 0.59),
            'A8s':ProgressInfo(raiseProgress: 0.31, callProgress: 0.69),
            'A7s':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
            'A6s':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
            'A5s':ProgressInfo(raiseProgress: 0.48, callProgress: 0.52),
            'A4s':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),
            'A3s':ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
            'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AKo':ProgressInfo(raiseProgress: 0.62, callProgress: 0.38),
            'KQs':ProgressInfo(raiseProgress: 0.19, callProgress: 0.81),
            'KJs':ProgressInfo(raiseProgress: 0.49, callProgress: 0.51),
            'KTs':ProgressInfo(raiseProgress: 0.52, callProgress: 0.48),
            'K9s':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60),
            'K8s':ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),
            'K7s':ProgressInfo(raiseProgress: 0.38, callProgress: 0.62),
            'K6s':ProgressInfo(raiseProgress: 0.36, callProgress: 0.64),
            'K5s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
            'K4s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.10),

            'AQo':ProgressInfo(raiseProgress: 0.39, callProgress: 0.61),
            'KQo':ProgressInfo(raiseProgress: 0.28, callProgress: 0.72),
            'QJs':ProgressInfo(raiseProgress: 0.31, callProgress: 0.69),
            'QTs':ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
            'Q9s':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
            'Q8s':ProgressInfo(raiseProgress: 0.50, callProgress: 0.50),


            'AJo':ProgressInfo(raiseProgress: 0.22, callProgress: 0.78),
            'KJo':ProgressInfo(raiseProgress: 0.31, callProgress: 0.69),
            'QJo':ProgressInfo(raiseProgress: 0.35, callProgress: 0.50),
            'JTs':ProgressInfo(raiseProgress: 0.59, callProgress: 0.41),
            'J9s':ProgressInfo(raiseProgress: 0.26, callProgress: 0.74),
            'J8s':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),


            'ATo':ProgressInfo(raiseProgress: 0.49, callProgress: 0.51),
            'KTo':ProgressInfo(raiseProgress: 0.15, callProgress: 0.30),
            'QTo':ProgressInfo(raiseProgress: 0.11, callProgress: 0.32),
            'JTo':ProgressInfo(raiseProgress: 0.00, callProgress: 0.40),
            'T9s':ProgressInfo(raiseProgress: 0.29, callProgress: 0.71),
            'T8s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
            'T7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.38),


            'A9o':ProgressInfo(raiseProgress: 0.11, callProgress: 0.0 ),
            '98s':ProgressInfo(raiseProgress: 0.12, callProgress: 0.88),
            '97s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            '96s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.07),


            'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '87s':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),
            '86s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),


            'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '76s':ProgressInfo(raiseProgress: 0.38, callProgress: 0.62),
            '75s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.40),


            'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '65s':ProgressInfo(raiseProgress: 0.47, callProgress: 0.53),
            '64s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.43),


            'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '54s':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),
            '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.54),

            'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '43s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


            'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


            'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

          };
        case TournaPosition.HJ:
          return {
            'AA' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'QQ' :ProgressInfo(raiseProgress: 0.83, callProgress: 0.17),
            'JJ' :ProgressInfo(raiseProgress: 0.40, callProgress: 0.60),
            'TT' :ProgressInfo(raiseProgress: 0.36, callProgress: 0.64),
            '99' :ProgressInfo(raiseProgress: 0.27, callProgress: 0.73),
            '88' :ProgressInfo(raiseProgress: 0.26, callProgress: 0.74),
            '77' :ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
            '66' :ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),
            '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.0 ),
            'AQs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'AJs':ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
            'ATs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'A9s':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),
            'A8s':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60),
            'A7s':ProgressInfo(raiseProgress: 0.37, callProgress: 0.63),
            'A6s':ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
            'A5s':ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),
            'A4s':ProgressInfo(raiseProgress: 0.36, callProgress: 0.64),
            'A3s':ProgressInfo(raiseProgress: 0.22, callProgress: 0.78),
            'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AKo':ProgressInfo(raiseProgress: 0.84, callProgress: 0.16),
            'KQs':ProgressInfo(raiseProgress: 0.33, callProgress: 0.67),
            'KJs':ProgressInfo(raiseProgress: 0.28, callProgress: 0.72),
            'KTs':ProgressInfo(raiseProgress: 0.41, callProgress: 0.59),
            'K9s':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),
            'K8s':ProgressInfo(raiseProgress: 0.27, callProgress: 0.73),
            'K7s':ProgressInfo(raiseProgress: 0.33, callProgress: 0.67),
            'K6s':ProgressInfo(raiseProgress: 0.29, callProgress: 0.71),
            'K5s':ProgressInfo(raiseProgress: 0.36, callProgress: 0.64),
            'K4s':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
            'K3s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.09),

            'AQo':ProgressInfo(raiseProgress: 0.27, callProgress: 0.73),
            'KQo':ProgressInfo(raiseProgress: 0.27, callProgress: 0.73),
            'QJs':ProgressInfo(raiseProgress: 0.11, callProgress: 0.89),
            'QTs':ProgressInfo(raiseProgress: 0.29, callProgress: 0.71),
            'Q9s':ProgressInfo(raiseProgress: 0.26, callProgress: 0.74),
            'Q8s':ProgressInfo(raiseProgress: 0.48, callProgress: 0.52),
            'Q7s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.29),
            'Q6s':ProgressInfo(raiseProgress: 0.46, callProgress: 0.33),


            'AJo':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),
            'KJo':ProgressInfo(raiseProgress: 0.26, callProgress: 0.74),
            'QJo':ProgressInfo(raiseProgress: 0.44, callProgress: 0.56),
            'JTs':ProgressInfo(raiseProgress: 0.56, callProgress: 0.44),
            'J9s':ProgressInfo(raiseProgress: 0.42, callProgress: 0.58),
            'J8s':ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),
            'J7s':ProgressInfo(raiseProgress: 0.09, callProgress: 0.00),


            'ATo':ProgressInfo(raiseProgress: 0.32, callProgress: 0.68),
            'KTo':ProgressInfo(raiseProgress: 0.27, callProgress: 0.49),
            'QTo':ProgressInfo(raiseProgress: 0.17, callProgress: 0.43),
            'JTo':ProgressInfo(raiseProgress: 0.18, callProgress: 0.49),
            'T9s':ProgressInfo(raiseProgress: 0.36, callProgress: 0.64),
            'T8s':ProgressInfo(raiseProgress: 0.33, callProgress: 0.67),
            'T7s':ProgressInfo(raiseProgress: 0.26, callProgress: 0.49),


            'A9o':ProgressInfo(raiseProgress: 0.47, callProgress: 0.0 ),
            '98s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
            '97s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            '96s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.39),


            'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '87s':ProgressInfo(raiseProgress: 0.31, callProgress: 0.69),
            '86s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),


            'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '76s':ProgressInfo(raiseProgress: 0.41, callProgress: 0.59),
            '75s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.57),


            'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '65s':ProgressInfo(raiseProgress: 0.44, callProgress: 0.56),
            '64s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.44),


            'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '54s':ProgressInfo(raiseProgress: 0.36, callProgress: 0.64),
            '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.60),

            'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '43s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


            'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


            'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

          };
        case TournaPosition.CO:
          return {
            'AA' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'QQ' :ProgressInfo(raiseProgress: 0.90, callProgress: 0.10),
            'JJ' :ProgressInfo(raiseProgress: 0.68, callProgress: 0.32),
            'TT' :ProgressInfo(raiseProgress: 0.48, callProgress: 0.52),
            '99' :ProgressInfo(raiseProgress: 0.31, callProgress: 0.69),
            '88' :ProgressInfo(raiseProgress: 0.26, callProgress: 0.74),
            '77' :ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
            '66' :ProgressInfo(raiseProgress: 0.22, callProgress: 0.78),
            '55' :ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
            '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.0 ),
            'AQs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'AJs':ProgressInfo(raiseProgress: 0.29, callProgress: 0.71),
            'ATs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'A9s':ProgressInfo(raiseProgress: 0.06, callProgress: 0.94),
            'A8s':ProgressInfo(raiseProgress: 0.19, callProgress: 0.81),
            'A7s':ProgressInfo(raiseProgress: 0.37, callProgress: 0.63),
            'A6s':ProgressInfo(raiseProgress: 0.33, callProgress: 0.67),
            'A5s':ProgressInfo(raiseProgress: 0.55, callProgress: 0.45),
            'A4s':ProgressInfo(raiseProgress: 0.49, callProgress: 0.51),
            'A3s':ProgressInfo(raiseProgress: 0.39, callProgress: 0.61),
            'A2s':ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),

            'AKo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'KQs':ProgressInfo(raiseProgress: 0.38, callProgress: 0.67),
            'KJs':ProgressInfo(raiseProgress: 0.54, callProgress: 0.46),
            'KTs':ProgressInfo(raiseProgress: 0.37, callProgress: 0.63),
            'K9s':ProgressInfo(raiseProgress: 0.37, callProgress: 0.63),
            'K8s':ProgressInfo(raiseProgress: 0.44, callProgress: 0.56),
            'K7s':ProgressInfo(raiseProgress: 0.38, callProgress: 0.62),
            'K6s':ProgressInfo(raiseProgress: 0.37, callProgress: 0.63),
            'K5s':ProgressInfo(raiseProgress: 0.26, callProgress: 0.74),
            'K4s':ProgressInfo(raiseProgress: 0.27, callProgress: 0.73),
            'K3s':ProgressInfo(raiseProgress: 0.17, callProgress: 0.83),

            'AQo':ProgressInfo(raiseProgress: 0.39, callProgress: 0.61),
            'KQo':ProgressInfo(raiseProgress: 0.36, callProgress: 0.64),
            'QJs':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
            'QTs':ProgressInfo(raiseProgress: 0.31, callProgress: 0.69),
            'Q9s':ProgressInfo(raiseProgress: 0.36, callProgress: 0.64),
            'Q8s':ProgressInfo(raiseProgress: 0.36, callProgress: 0.64),
            'Q7s':ProgressInfo(raiseProgress: 0.42, callProgress: 0.52),
            'Q6s':ProgressInfo(raiseProgress: 0.50, callProgress: 0.50),
            'Q5s':ProgressInfo(raiseProgress: 0.08, callProgress: 0.38),


            'AJo':ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),
            'KJo':ProgressInfo(raiseProgress: 0.32, callProgress: 0.68),
            'QJo':ProgressInfo(raiseProgress: 0.43, callProgress: 0.57),
            'JTs':ProgressInfo(raiseProgress: 0.60, callProgress: 0.40),
            'J9s':ProgressInfo(raiseProgress: 0.38, callProgress: 0.62),
            'J8s':ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
            'J7s':ProgressInfo(raiseProgress: 0.58, callProgress: 0.15),


            'ATo':ProgressInfo(raiseProgress: 0.39, callProgress: 0.61),
            'KTo':ProgressInfo(raiseProgress: 0.47, callProgress: 0.53),
            'QTo':ProgressInfo(raiseProgress: 0.48, callProgress: 0.52),
            'JTo':ProgressInfo(raiseProgress: 0.38, callProgress: 0.62),
            'T9s':ProgressInfo(raiseProgress: 0.46, callProgress: 0.54),
            'T8s':ProgressInfo(raiseProgress: 0.42, callProgress: 0.58),
            'T7s':ProgressInfo(raiseProgress: 0.26, callProgress: 0.74),


            'A9o':ProgressInfo(raiseProgress: 0.61, callProgress: 0.39),
            '98s':ProgressInfo(raiseProgress: 0.33, callProgress: 0.67),
            '97s':ProgressInfo(raiseProgress: 0.16, callProgress: 0.84),
            '96s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.28),


            'A8o':ProgressInfo(raiseProgress: 0.38, callProgress: 0.0 ),
            '87s':ProgressInfo(raiseProgress: 0.37, callProgress: 0.63),
            '86s':ProgressInfo(raiseProgress: 0.09, callProgress: 0.91),


            'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '76s':ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),
            '75s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.51),


            'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '65s':ProgressInfo(raiseProgress: 0.52, callProgress: 0.48),
            '64s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.54),


            'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '54s':ProgressInfo(raiseProgress: 0.48, callProgress: 0.52),
            '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.38),

            'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '43s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),


            'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


            'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

          };
      }
    } else if (tournaSelection.myTournaPosition == TournaPosition.SB) {
      switch (tournaSelection.opponentTournaPosition) {

        case TournaPosition.UTG:
          return {
            'AA' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'KK' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'QQ' :ProgressInfo(raiseProgress: 0.82, callProgress: 0.18),
            'JJ' :ProgressInfo(raiseProgress: 0.56, callProgress: 0.44),
            'TT' :ProgressInfo(raiseProgress: 0.31, callProgress: 0.69),
            '99' :ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),
            '88' :ProgressInfo(raiseProgress: 0.11, callProgress: 0.89),
            '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AKs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'AQs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'AJs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'ATs':ProgressInfo(raiseProgress: 0.8 , callProgress: 0.2 ),
            'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'A8s':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
            'A7s':ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
            'A6s':ProgressInfo(raiseProgress: 0.17, callProgress: 0.83),
            'A5s':ProgressInfo(raiseProgress: 0.37, callProgress: 0.63),
            'A4s':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
            'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AKo':ProgressInfo(raiseProgress: 0.65, callProgress: 0.35),
            'KQs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'KJs':ProgressInfo(raiseProgress: 0.8 , callProgress: 0.2 ),
            'KTs':ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
            'K9s':ProgressInfo(raiseProgress: 0.12, callProgress: 0.88),
            'K8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.89),
            'K7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.58),
            'K6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.55),
            'K5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.1 ),

            'AQo':ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
            'KQo':ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),
            'QJs':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),
            'QTs':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
            'Q9s':ProgressInfo(raiseProgress: 0.08, callProgress: 0.92),



            'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.33),
            'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.06),
            'JTs':ProgressInfo(raiseProgress: 0.34, callProgress: 0.66),
            'J9s':ProgressInfo(raiseProgress: 0.19, callProgress: 0.81),
            'J8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.41),


            'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.2 ),
            'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.2 ),
            'T9s':ProgressInfo(raiseProgress: 0.32, callProgress: 0.68),
            'T8s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
            'T7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.09),


            'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '98s':ProgressInfo(raiseProgress: 0.2 , callProgress: 0.8 ),
            '97s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.51),


            'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '87s':ProgressInfo(raiseProgress: 0.31, callProgress: 0.69),
            '86s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.42),


            'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '76s':ProgressInfo(raiseProgress: 0.22, callProgress: 0.78),
            '75s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.07 ),


            'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '65s':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),



            'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '54s':ProgressInfo(raiseProgress: 0.16, callProgress: 0.84),
            '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.09),

            'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),



            'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


            'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

          };
        case TournaPosition.UTG1:
          return {
            'AA' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'KK' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'QQ' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'JJ' :ProgressInfo(raiseProgress: 0.59, callProgress: 0.41),
            'TT' :ProgressInfo(raiseProgress: 0.44, callProgress: 0.56),
            '99' :ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
            '88' :ProgressInfo(raiseProgress: 0.11, callProgress: 0.89),
            '77' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AKs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'AQs':ProgressInfo(raiseProgress: 0.91, callProgress: 0.09),
            'AJs':ProgressInfo(raiseProgress: 0.90, callProgress: 0.10),
            'ATs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'A9s':ProgressInfo(raiseProgress: 0.11, callProgress: 0.89),
            'A8s':ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
            'A7s':ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
            'A6s':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
            'A5s':ProgressInfo(raiseProgress: 0.54, callProgress: 0.46),
            'A4s':ProgressInfo(raiseProgress: 0.21, callProgress: 0.79),
            'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AKo':ProgressInfo(raiseProgress: 0.68, callProgress: 0.32),
            'KQs':ProgressInfo(raiseProgress: 0.94, callProgress: 0.06),
            'KJs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'KTs':ProgressInfo(raiseProgress: 0.37, callProgress: 0.63),
            'K9s':ProgressInfo(raiseProgress: 0.11, callProgress: 0.89),
            'K8s':ProgressInfo(raiseProgress: 0.06, callProgress: 0.94),
            'K7s':ProgressInfo(raiseProgress: 0.21, callProgress: 0.70),
            'K6s':ProgressInfo(raiseProgress: 0.21, callProgress: 0.76),
            'K5s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.24),

            'AQo':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),
            'KQo':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),
            'QJs':ProgressInfo(raiseProgress: 0.72, callProgress: 0.28),
            'QTs':ProgressInfo(raiseProgress: 0.19, callProgress: 0.81),
            'Q9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'Q8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.20),



            'AJo':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
            'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.56),
            'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.28),
            'JTs':ProgressInfo(raiseProgress: 0.37, callProgress: 0.63),
            'J9s':ProgressInfo(raiseProgress: 0.29, callProgress: 0.71),
            'J8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.41),


            'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.56),
            'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.07),
            'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.17),
            'T9s':ProgressInfo(raiseProgress: 0.38, callProgress: 0.62),
            'T8s':ProgressInfo(raiseProgress: 0.17, callProgress: 0.83),



            'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '98s':ProgressInfo(raiseProgress: 0.28, callProgress: 0.72),
            '97s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.68),


            'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '87s':ProgressInfo(raiseProgress: 0.31, callProgress: 0.69),
            '86s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.44),


            'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '76s':ProgressInfo(raiseProgress: 0.28, callProgress: 0.72),



            'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '65s':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),



            'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '54s':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),
            '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.06),

            'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),



            'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


            'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

          };
        case TournaPosition.LJ:
          return {
            'AA' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.0 ),
            'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.0 ),
            'QQ' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'JJ' :ProgressInfo(raiseProgress: 0.70, callProgress: 0.30),
            'TT' :ProgressInfo(raiseProgress: 0.59, callProgress: 0.41),
            '99' :ProgressInfo(raiseProgress: 0.33, callProgress: 0.67),
            '88' :ProgressInfo(raiseProgress: 0.16, callProgress: 0.84),
            '77' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AKs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'AQs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'AJs':ProgressInfo(raiseProgress: 0.81, callProgress: 0.19),
            'ATs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'A9s':ProgressInfo(raiseProgress: 0.21, callProgress: 0.79),
            'A8s':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),
            'A7s':ProgressInfo(raiseProgress: 0.09, callProgress: 0.91),
            'A6s':ProgressInfo(raiseProgress: 0.26, callProgress: 0.74),
            'A5s':ProgressInfo(raiseProgress: 0.51, callProgress: 0.49),
            'A4s':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
            'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AKo':ProgressInfo(raiseProgress: 0.85, callProgress: 0.15),
            'KQs':ProgressInfo(raiseProgress: 0.86, callProgress: 0.14),
            'KJs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'KTs':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60),
            'K9s':ProgressInfo(raiseProgress: 0.27, callProgress: 0.73),
            'K8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'K7s':ProgressInfo(raiseProgress: 0.27, callProgress: 0.73),
            'K6s':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
            'K5s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.37),

            'AQo':ProgressInfo(raiseProgress: 0.47, callProgress: 0.53),
            'KQo':ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
            'QJs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'QTs':ProgressInfo(raiseProgress: 0.50, callProgress: 0.50),
            'Q9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'Q8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.48),



            'AJo':ProgressInfo(raiseProgress: 0.08, callProgress: 0.92),
            'KJo':ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
            'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.54),
            'JTs':ProgressInfo(raiseProgress: 0.62, callProgress: 0.38),
            'J9s':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),
            'J8s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),


            'ATo':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
            'KTo':ProgressInfo(raiseProgress: 0.00, callProgress: 0.10),
            'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.20),
            'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.23),
            'T9s':ProgressInfo(raiseProgress: 0.41, callProgress: 0.59),
            'T8s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),



            'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '98s':ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
            '97s':ProgressInfo(raiseProgress: 0.07, callProgress: 0.93),


            'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '87s':ProgressInfo(raiseProgress: 0.43, callProgress: 0.57),
            '86s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.36),


            'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '76s':ProgressInfo(raiseProgress: 0.22, callProgress: 0.78),



            'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '65s':ProgressInfo(raiseProgress: 0.34, callProgress: 0.66),



            'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '54s':ProgressInfo(raiseProgress: 0.22, callProgress: 0.78),

            'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),



            'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


            'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

          };
        case TournaPosition.HJ:
          return {
            'AA' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.0 ),
            'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.0 ),
            'QQ' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'JJ' :ProgressInfo(raiseProgress: 0.80, callProgress: 0.20),
            'TT' :ProgressInfo(raiseProgress: 0.65, callProgress: 0.35),
            '99' :ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),
            '88' :ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
            '77' :ProgressInfo(raiseProgress: 0.09, callProgress: 0.91),
            '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AKs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'AQs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'AJs':ProgressInfo(raiseProgress: 0.84, callProgress: 0.16),
            'ATs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'A9s':ProgressInfo(raiseProgress: 0.33, callProgress: 0.67),
            'A8s':ProgressInfo(raiseProgress: 0.44, callProgress: 0.56),
            'A7s':ProgressInfo(raiseProgress: 0.11, callProgress: 0.89),
            'A6s':ProgressInfo(raiseProgress: 0.11, callProgress: 0.89),
            'A5s':ProgressInfo(raiseProgress: 0.57, callProgress: 0.43),
            'A4s':ProgressInfo(raiseProgress: 0.26, callProgress: 0.74),
            'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AKo':ProgressInfo(raiseProgress: 0.89, callProgress: 0.11),
            'KQs':ProgressInfo(raiseProgress: 0.86, callProgress: 0.14),
            'KJs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'KTs':ProgressInfo(raiseProgress: 0.83, callProgress: 0.17),
            'K9s':ProgressInfo(raiseProgress: 0.28, callProgress: 0.72),
            'K8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'K7s':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
            'K6s':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60),
            'K5s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'K4s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.48),

            'AQo':ProgressInfo(raiseProgress: 0.61, callProgress: 0.39),
            'KQo':ProgressInfo(raiseProgress: 0.29, callProgress: 0.71),
            'QJs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'QTs':ProgressInfo(raiseProgress: 0.81, callProgress: 0.19),
            'Q9s':ProgressInfo(raiseProgress: 0.16, callProgress: 0.84),
            'Q8s':ProgressInfo(raiseProgress: 0.17, callProgress: 0.83),
            'Q6s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.33),
            'Q5s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.08),



            'AJo':ProgressInfo(raiseProgress: 0.28, callProgress: 0.72),
            'KJo':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
            'QJo':ProgressInfo(raiseProgress: 0.00, callProgress: 0.87),
            'JTs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'J9s':ProgressInfo(raiseProgress: 0.46, callProgress: 0.54),
            'J8s':ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
            'J7s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.27),


            'ATo':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'KTo':ProgressInfo(raiseProgress: 0.00, callProgress: 0.39),
            'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.39),
            'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.39),
            'T9s':ProgressInfo(raiseProgress: 0.61, callProgress: 0.39),
            'T8s':ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
            'T7s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.27),



            'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '98s':ProgressInfo(raiseProgress: 0.32, callProgress: 0.68),
            '97s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),


            'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '87s':ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),
            '86s':ProgressInfo(raiseProgress: 0.09, callProgress: 0.62),


            'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '76s':ProgressInfo(raiseProgress: 0.44, callProgress: 0.56),



            'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '65s':ProgressInfo(raiseProgress: 0.46, callProgress: 0.54),



            'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '54s':ProgressInfo(raiseProgress: 0.19, callProgress: 0.81),

            'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),



            'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


            'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

          };
        case TournaPosition.CO:
          return {
            'AA' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.0 ),
            'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.0 ),
            'QQ' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'JJ' :ProgressInfo(raiseProgress: 0.91, callProgress: 0.09),
            'TT' :ProgressInfo(raiseProgress: 0.65, callProgress: 0.35),
            '99' :ProgressInfo(raiseProgress: 0.59, callProgress: 0.41),
            '88' :ProgressInfo(raiseProgress: 0.55, callProgress: 0.45),
            '77' :ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),
            '66' :ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
            '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AKs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'AQs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'AJs':ProgressInfo(raiseProgress: 0.91, callProgress: 0.09),
            'ATs':ProgressInfo(raiseProgress: 0.90, callProgress: 0.10),
            'A9s':ProgressInfo(raiseProgress: 0.71, callProgress: 0.29),
            'A8s':ProgressInfo(raiseProgress: 0.54, callProgress: 0.46),
            'A7s':ProgressInfo(raiseProgress: 0.33, callProgress: 0.67),
            'A6s':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),
            'A5s':ProgressInfo(raiseProgress: 0.68, callProgress: 0.32),
            'A4s':ProgressInfo(raiseProgress: 0.39, callProgress: 0.61),
            'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),


            'AKo':ProgressInfo(raiseProgress: 0.92, callProgress: 0.08),
            'KQs':ProgressInfo(raiseProgress: 0.89, callProgress: 0.11),
            'KJs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'KTs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'K9s':ProgressInfo(raiseProgress: 0.32, callProgress: 0.68),
            'K8s':ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
            'K7s':ProgressInfo(raiseProgress: 0.26, callProgress: 0.74),
            'K6s':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60),
            'K5s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'K4s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'K3s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.67),

            'AQo':ProgressInfo(raiseProgress: 0.53, callProgress: 0.47),
            'KQo':ProgressInfo(raiseProgress: 0.59, callProgress: 0.41),
            'QJs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'QTs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'Q9s':ProgressInfo(raiseProgress: 0.34, callProgress: 0.66),
            'Q8s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
            'Q7s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.47),
            'Q6s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.84),
            'Q5s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.40),



            'AJo':ProgressInfo(raiseProgress: 0.55, callProgress: 0.45),
            'KJo':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
            'QJo':ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),
            'JTs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'J9s':ProgressInfo(raiseProgress: 0.44, callProgress: 0.56),
            'J8s':ProgressInfo(raiseProgress: 0.28, callProgress: 0.72),
            'J7s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.13),


            'ATo':ProgressInfo(raiseProgress: 0.11, callProgress: 0.89),
            'KTo':ProgressInfo(raiseProgress: 0.17, callProgress: 0.83),
            'QTo':ProgressInfo(raiseProgress: 0.09, callProgress: 0.67),
            'JTo':ProgressInfo(raiseProgress: 0.15, callProgress: 0.70),
            'T9s':ProgressInfo(raiseProgress: 0.78, callProgress: 0.22),
            'T8s':ProgressInfo(raiseProgress: 0.52, callProgress: 0.48),
            'T7s':ProgressInfo(raiseProgress: 0.07, callProgress: 0.66),



            'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.66),
            '98s':ProgressInfo(raiseProgress: 0.46, callProgress: 0.54),
            '97s':ProgressInfo(raiseProgress: 0.19, callProgress: 0.81),


            'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '87s':ProgressInfo(raiseProgress: 0.52, callProgress: 0.48),
            '86s':ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),


            'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '76s':ProgressInfo(raiseProgress: 0.53, callProgress: 0.47),
            '75s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.09),



            'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '65s':ProgressInfo(raiseProgress: 0.49, callProgress: 0.51),



            'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '54s':ProgressInfo(raiseProgress: 0.26, callProgress: 0.74),

            'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),



            'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


            'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

          };
        case TournaPosition.BTN:
          return {
            'AA' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.0 ),
            'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.0 ),
            'QQ' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'JJ' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'TT' :ProgressInfo(raiseProgress: 0.80, callProgress: 0.20),
            '99' :ProgressInfo(raiseProgress: 0.47, callProgress: 0.53),
            '88' :ProgressInfo(raiseProgress: 0.58, callProgress: 0.42),
            '77' :ProgressInfo(raiseProgress: 0.65, callProgress: 0.35),
            '66' :ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),
            '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AKs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'AQs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'AJs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'ATs':ProgressInfo(raiseProgress: 0.70, callProgress: 0.30),
            'A9s':ProgressInfo(raiseProgress: 0.88, callProgress: 0.12),
            'A8s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'A7s':ProgressInfo(raiseProgress: 0.70, callProgress: 0.30),
            'A6s':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),
            'A5s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'A4s':ProgressInfo(raiseProgress: 0.92, callProgress: 0.08),
            'A3s':ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),
            'A2s':ProgressInfo(raiseProgress: 0.11, callProgress: 0.89),


            'AKo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'KQs':ProgressInfo(raiseProgress: 0.81, callProgress: 0.19),
            'KJs':ProgressInfo(raiseProgress: 0.82, callProgress: 0.18),
            'KTs':ProgressInfo(raiseProgress: 0.94, callProgress: 0.06),
            'K9s':ProgressInfo(raiseProgress: 0.89, callProgress: 0.11),
            'K8s':ProgressInfo(raiseProgress: 0.22, callProgress: 0.78),
            'K7s':ProgressInfo(raiseProgress: 0.34, callProgress: 0.66),
            'K6s':ProgressInfo(raiseProgress: 0.77, callProgress: 0.23),
            'K5s':ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),
            'K4s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'K3s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'K2s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),

            'AQo':ProgressInfo(raiseProgress: 0.42, callProgress: 0.58),
            'KQo':ProgressInfo(raiseProgress: 0.92, callProgress: 0.08),
            'QJs':ProgressInfo(raiseProgress: 0.89, callProgress: 0.11),
            'QTs':ProgressInfo(raiseProgress: 0.92, callProgress: 0.08),
            'Q9s':ProgressInfo(raiseProgress: 0.55, callProgress: 0.45),
            'Q8s':ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
            'Q7s':ProgressInfo(raiseProgress: 0.09, callProgress: 0.91),
            'Q6s':ProgressInfo(raiseProgress: 0.52, callProgress: 0.48),
            'Q5s':ProgressInfo(raiseProgress: 0.16, callProgress: 0.84),
            'Q4s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.56),



            'AJo':ProgressInfo(raiseProgress: 0.74, callProgress: 0.26),
            'KJo':ProgressInfo(raiseProgress: 0.56, callProgress: 0.44),
            'QJo':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),
            'JTs':ProgressInfo(raiseProgress: 0.93, callProgress: 0.07),
            'J9s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'J8s':ProgressInfo(raiseProgress: 0.32, callProgress: 0.68),
            'J7s':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),
            'J6s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.13),


            'ATo':ProgressInfo(raiseProgress: 0.71, callProgress: 0.29),
            'KTo':ProgressInfo(raiseProgress: 0.26, callProgress: 0.74),
            'QTo':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),
            'JTo':ProgressInfo(raiseProgress: 0.31, callProgress: 0.69),
            'T9s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'T8s':ProgressInfo(raiseProgress: 0.61, callProgress: 0.39),
            'T7s':ProgressInfo(raiseProgress: 0.21, callProgress: 0.79),



            'A9o':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
            'K9o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.37),
            'J9o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.27),
            'T9o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.33),
            '98s':ProgressInfo(raiseProgress: 0.70, callProgress: 0.30),
            '97s':ProgressInfo(raiseProgress: 0.44, callProgress: 0.56),
            '96s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.44),


            'A8o':ProgressInfo(raiseProgress: 0.06, callProgress: 0.94),
            '87s':ProgressInfo(raiseProgress: 0.83, callProgress: 0.17),
            '86s':ProgressInfo(raiseProgress: 0.39, callProgress: 0.61),


            'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.17),
            '76s':ProgressInfo(raiseProgress: 0.72, callProgress: 0.28),
            '75s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.23),



            'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '65s':ProgressInfo(raiseProgress: 0.68, callProgress: 0.32),
            '64s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.15),



            'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.17),
            '54s':ProgressInfo(raiseProgress: 0.46, callProgress: 0.54),

            'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),



            'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


            'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

          };
      }
    } else if (tournaSelection.myTournaPosition == TournaPosition.BB) {
      switch (tournaSelection.opponentTournaPosition) {
        case TournaPosition.UTG:
          return {
            'AA' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'AKs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'AQs':ProgressInfo(raiseProgress: 0.19, callProgress: 0.81),
            'AJs':ProgressInfo(raiseProgress: 0.20, callProgress: 0.8 ),
            'ATs':ProgressInfo(raiseProgress: 0.41, callProgress: 0.59),
            'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'A8s':ProgressInfo(raiseProgress: 0.21, callProgress: 0.79),
            'A7s':ProgressInfo(raiseProgress: 0.26, callProgress: 0.74),
            'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'A5s':ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),
            'A4s':ProgressInfo(raiseProgress: 0.5 , callProgress: 0.5 ),
            'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'A2s':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),

            'AKo':ProgressInfo(raiseProgress: 0.46, callProgress: 0.54),
            'KK' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'KQs':ProgressInfo(raiseProgress: 0.57, callProgress: 0.43),
            'KJs':ProgressInfo(raiseProgress: 0.16, callProgress: 0.84),
            'KTs':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),
            'K9s':ProgressInfo(raiseProgress: 0.1 , callProgress: 0.9 ),
            'K8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'K7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'K6s':ProgressInfo(raiseProgress: 0.11, callProgress: 0.89),
            'K5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'K4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'K3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'K2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AQo':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'KQo':ProgressInfo(raiseProgress: 0.11, callProgress: 0.89),
            'QQ' :ProgressInfo(raiseProgress: 0.72, callProgress: 0.28),
            'QJs':ProgressInfo(raiseProgress: 0.51, callProgress: 0.49),
            'QTs':ProgressInfo(raiseProgress: 0.2 , callProgress: 0.8 ),
            'Q9s':ProgressInfo(raiseProgress: 0.3 , callProgress: 0.7 ),
            'Q8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'Q7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'Q6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'Q5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'Q4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'Q3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'Q2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AJo':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
            'KJo':ProgressInfo(raiseProgress: 0.09, callProgress: 0.91),
            'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'JJ' :ProgressInfo(raiseProgress: 0.22, callProgress: 0.78),
            'JTs':ProgressInfo(raiseProgress: 0.2 , callProgress: 0.8 ),
            'J9s':ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
            'J8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'ATo':ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),
            'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'TT' :ProgressInfo(raiseProgress: 0.05, callProgress: 0.95),
            'T9s':ProgressInfo(raiseProgress: 0.33, callProgress: 0.67),
            'T8s':ProgressInfo(raiseProgress: 0.34, callProgress: 0.66),
            'T7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'K9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'Q9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '99' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '98s':ProgressInfo(raiseProgress: 0.29, callProgress: 0.71),
            '97s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '96s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '95s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '94s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '93s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '92s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'K8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.69),
            'Q8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'J8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.2 ),
            'T8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '98o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '88' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '87s':ProgressInfo(raiseProgress: 0.54, callProgress: 0.46),
            '86s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '85s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '84s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '83s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.56),
            '82s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.54),

            'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'K7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.32),
            'Q7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'J7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'T7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '97o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.28),
            '87o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '76s':ProgressInfo(raiseProgress: 0.41, callProgress: 0.59),
            '75s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '74s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '73s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '72s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

            'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'K6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.3 ),
            'Q6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'J6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'T6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '96o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '86o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.52),
            '76o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '65s':ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),
            '64s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '63s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '62s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'K5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'Q5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'J5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'T5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '95o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '85o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '75o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.24),
            '65o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.85),
            '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '54s':ProgressInfo(raiseProgress: 0.38, callProgress: 0.62),
            '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.82),
            'K4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'Q4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'J4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'T4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '94o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '84o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '74o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '64o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
            '54o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.64),
            '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '43s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '42s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.11),
            'K3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'Q3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'J3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'T3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '93o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '83o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '73o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '63o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '53o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.13),
            '43o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '32s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'K2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'Q2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'J2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            'T2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '92o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '82o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '72o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '62o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '52o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '42o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '32o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          };
        case TournaPosition.UTG1:
          return {
            'AA' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'KK' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'QQ' :ProgressInfo(raiseProgress: 0.87, callProgress: 0.28),
            'JJ' :ProgressInfo(raiseProgress: 0.27, callProgress: 0.78),
            'TT' :ProgressInfo(raiseProgress: 0.09, callProgress: 0.95),
            '99' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '88' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),


            'AKs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'AQs':ProgressInfo(raiseProgress: 0.34, callProgress: 0.66),
            'AJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'ATs':ProgressInfo(raiseProgress: 0.32, callProgress: 0.68),
            'A9s':ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),
            'A8s':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),
            'A7s':ProgressInfo(raiseProgress: 0.29, callProgress: 0.71),
            'A6s':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),
            'A5s':ProgressInfo(raiseProgress: 0.43, callProgress: 0.57),
            'A4s':ProgressInfo(raiseProgress: 0.31, callProgress: 0.69),
            'A3s':ProgressInfo(raiseProgress: 0.19, callProgress: 0.81),
            'A2s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),

            'AKo':ProgressInfo(raiseProgress: 0.54, callProgress: 0.46),
            'KQs':ProgressInfo(raiseProgress: 0.37, callProgress: 0.63),
            'KJs':ProgressInfo(raiseProgress: 0.32, callProgress: 0.68),
            'KTs':ProgressInfo(raiseProgress: 0.21, callProgress: 0.79),
            'K9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'K8s':ProgressInfo(raiseProgress: 0.06, callProgress: 0.94),
            'K7s':ProgressInfo(raiseProgress: 0.19, callProgress: 0.81),
            'K6s':ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
            'K5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'K4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'K3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'K2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AQo':ProgressInfo(raiseProgress: 0.05, callProgress: 0.95),
            'KQo':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),
            'QJs':ProgressInfo(raiseProgress: 0.56, callProgress: 0.44),
            'QTs':ProgressInfo(raiseProgress: 0.17, callProgress: 0.83),
            'Q9s':ProgressInfo(raiseProgress: 0.31, callProgress: 0.69),
            'Q8s':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
            'Q7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'Q6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'Q5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'Q4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'Q3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'Q2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AJo':ProgressInfo(raiseProgress: 0.16, callProgress: 0.84),
            'KJo':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
            'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'JTs':ProgressInfo(raiseProgress: 0.28, callProgress: 0.72),
            'J9s':ProgressInfo(raiseProgress: 0.34, callProgress: 0.66),
            'J8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'ATo':ProgressInfo(raiseProgress: 0.22, callProgress: 0.78),
            'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T9s':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60),
            'T8s':ProgressInfo(raiseProgress: 0.32, callProgress: 0.68),
            'T7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'K9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'Q9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '98s':ProgressInfo(raiseProgress: 0.26, callProgress: 0.74),
            '97s':ProgressInfo(raiseProgress: 0.17, callProgress: 0.83),
            '96s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '95s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '94s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '93s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '92s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'K8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            'Q8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.5 ),
            'J8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.67),
            'T8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '98o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '87s':ProgressInfo(raiseProgress: 0.38, callProgress: 0.62),
            '86s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '85s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '84s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '83s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '82s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


            'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'K7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '97o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.91),
            '87o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '76s':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),
            '75s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '74s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '73s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),


            'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'K6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.69),
            '86o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.64),
            '76o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '65s':ProgressInfo(raiseProgress: 0.48, callProgress: 0.52),
            '64s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '63s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '62s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A5o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            '75o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.41),
            '65o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '54s':ProgressInfo(raiseProgress: 0.38, callProgress: 0.62),
            '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '64o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.08),
            '54o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.94),
            '43s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '42s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.70),
            '53o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.15),
            '32s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
            '32o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

          };
        case TournaPosition.LJ:
          return {
            'AA' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'KK' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'QQ' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'JJ' :ProgressInfo(raiseProgress: 0.48, callProgress: 0.52),
            'TT' :ProgressInfo(raiseProgress: 0.12, callProgress: 0.88),
            '99' :ProgressInfo(raiseProgress: 0.06, callProgress: 0.94),
            '88' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),


            'AKs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'AQs':ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),
            'AJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'ATs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'A9s':ProgressInfo(raiseProgress: 0.39, callProgress: 0.61),
            'A8s':ProgressInfo(raiseProgress: 0.26, callProgress: 0.74),
            'A7s':ProgressInfo(raiseProgress: 0.11, callProgress: 0.89),
            'A6s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
            'A5s':ProgressInfo(raiseProgress: 0.36, callProgress: 0.64),
            'A4s':ProgressInfo(raiseProgress: 0.17, callProgress: 0.83),
            'A3s':ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),
            'A2s':ProgressInfo(raiseProgress: 0.28, callProgress: 0.72),

            'AKo':ProgressInfo(raiseProgress: 0.74, callProgress: 0.26),
            'KQs':ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),
            'KJs':ProgressInfo(raiseProgress: 0.43, callProgress: 0.57),
            'KTs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'K9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'K8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'K7s':ProgressInfo(raiseProgress: 0.39, callProgress: 0.61),
            'K6s':ProgressInfo(raiseProgress: 0.44, callProgress: 0.56),
            'K5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'K4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'K3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'K2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AQo':ProgressInfo(raiseProgress: 0.16, callProgress: 0.84),
            'KQo':ProgressInfo(raiseProgress: 0.11, callProgress: 0.89),
            'QJs':ProgressInfo(raiseProgress: 0.66, callProgress: 0.34),
            'QTs':ProgressInfo(raiseProgress: 0.31, callProgress: 0.69),
            'Q9s':ProgressInfo(raiseProgress: 0.33, callProgress: 0.67),
            'Q8s':ProgressInfo(raiseProgress: 0.36, callProgress: 0.64),
            'Q7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'Q6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'Q5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'Q4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'Q3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'Q2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AJo':ProgressInfo(raiseProgress: 0.11, callProgress: 0.89),
            'KJo':ProgressInfo(raiseProgress: 0.09, callProgress: 0.91),
            'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            'JTs':ProgressInfo(raiseProgress: 0.46, callProgress: 0.54),
            'J9s':ProgressInfo(raiseProgress: 0.47, callProgress: 0.53),
            'J8s':ProgressInfo(raiseProgress: 0.12, callProgress: 0.88),
            'J7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'ATo':ProgressInfo(raiseProgress: 0.32, callProgress: 0.68),
            'KTo':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
            'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T9s':ProgressInfo(raiseProgress: 0.58, callProgress: 0.42),
            'T8s':ProgressInfo(raiseProgress: 0.34, callProgress: 0.66),
            'T7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'K9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'Q9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '98s':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),
            '97s':ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
            '96s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '95s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '94s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '93s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '92s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'K8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            'Q8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.80),
            'J8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.91),
            'T8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '98o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '87s':ProgressInfo(raiseProgress: 0.41, callProgress: 0.59),
            '86s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            '85s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '84s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '83s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '82s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


            'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'K7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '97o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.91),
            '87o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '76s':ProgressInfo(raiseProgress: 0.33, callProgress: 0.67),
            '75s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '74s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '73s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),


            'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'K6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            'Q6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.09),
            '86o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.52),
            '76o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '65s':ProgressInfo(raiseProgress: 0.50, callProgress: 0.50),
            '64s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '63s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '62s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A5o':ProgressInfo(raiseProgress: 0.06, callProgress: 0.94),
            'K5o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.28),
            '75o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.39),
            '65o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '54s':ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),
            '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '64o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.15),
            '54o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '43s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '42s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '53o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.12),
            '32s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.90),
            '32o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

          };
        case TournaPosition.HJ:
          return {
            'AA' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'KK' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'QQ' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'JJ' :ProgressInfo(raiseProgress: 0.86, callProgress: 0.14),
            'TT' :ProgressInfo(raiseProgress: 0.37, callProgress: 0.63),
            '99' :ProgressInfo(raiseProgress: 0.05, callProgress: 0.95),
            '88' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),


            'AKs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'AQs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'AJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'ATs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'A9s':ProgressInfo(raiseProgress: 0.12, callProgress: 0.88),
            'A8s':ProgressInfo(raiseProgress: 0.54, callProgress: 0.46),
            'A7s':ProgressInfo(raiseProgress: 0.16, callProgress: 0.84),
            'A6s':ProgressInfo(raiseProgress: 0.09, callProgress: 0.91),
            'A5s':ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
            'A4s':ProgressInfo(raiseProgress: 0.27, callProgress: 0.73),
            'A3s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'A2s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),

            'AKo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'KQs':ProgressInfo(raiseProgress: 0.05, callProgress: 0.95),
            'KJs':ProgressInfo(raiseProgress: 0.33, callProgress: 0.67),
            'KTs':ProgressInfo(raiseProgress: 0.21, callProgress: 0.79),
            'K9s':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),
            'K8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'K7s':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),
            'K6s':ProgressInfo(raiseProgress: 0.46, callProgress: 0.54),
            'K5s':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),
            'K4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'K3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'K2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AQo':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),
            'KQo':ProgressInfo(raiseProgress: 0.17, callProgress: 0.83),
            'QJs':ProgressInfo(raiseProgress: 0.27, callProgress: 0.73),
            'QTs':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
            'Q9s':ProgressInfo(raiseProgress: 0.39, callProgress: 0.61),
            'Q8s':ProgressInfo(raiseProgress: 0.43, callProgress: 0.57),
            'Q7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'Q6s':ProgressInfo(raiseProgress: 0.08, callProgress: 0.92),
            'Q5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'Q4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'Q3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'Q2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AJo':ProgressInfo(raiseProgress: 0.11, callProgress: 0.89),
            'KJo':ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
            'QJo':ProgressInfo(raiseProgress: 0.12, callProgress: 0.88),
            'JTs':ProgressInfo(raiseProgress: 0.81, callProgress: 0.19),
            'J9s':ProgressInfo(raiseProgress: 0.85, callProgress: 0.15),
            'J8s':ProgressInfo(raiseProgress: 0.41, callProgress: 0.59),
            'J7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),


            'ATo':ProgressInfo(raiseProgress: 0.08, callProgress: 0.92),
            'KTo':ProgressInfo(raiseProgress: 0.12, callProgress: 0.88),
            'QTo':ProgressInfo(raiseProgress: 0.06, callProgress: 0.94),
            'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T9s':ProgressInfo(raiseProgress: 0.77, callProgress: 0.23),
            'T8s':ProgressInfo(raiseProgress: 0.53, callProgress: 0.47),
            'T7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A9o':ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
            'K9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'Q9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '98s':ProgressInfo(raiseProgress: 0.29, callProgress: 0.71),
            '97s':ProgressInfo(raiseProgress: 0.37, callProgress: 0.63),
            '96s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '95s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '94s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '93s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '92s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'K8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            'Q8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            'J8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.91),
            'T8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '98o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '87s':ProgressInfo(raiseProgress: 0.53, callProgress: 0.47),
            '86s':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),
            '85s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '84s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '83s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '82s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


            'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'K7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            'Q7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.43),
            'T7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.15),
            '97o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '87o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '76s':ProgressInfo(raiseProgress: 0.55, callProgress: 0.45),
            '75s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '74s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '73s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '72s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),


            'A6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'K6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            'Q6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.41),
            '86o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '76o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '65s':ProgressInfo(raiseProgress: 0.61, callProgress: 0.39),
            '64s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '63s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '62s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A5o':ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),
            'K5o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            '75o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.44),
            '65o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '54s':ProgressInfo(raiseProgress: 0.46, callProgress: 0.54),
            '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A4o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'K4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.39),
            '64o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.32),
            '54o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '43s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '42s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A3o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            '53o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.55),
            '32s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '32o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

          };
        case TournaPosition.CO:
          return {
            'AA' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'KK' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'QQ' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'JJ' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'TT' :ProgressInfo(raiseProgress: 0.70, callProgress: 0.30),
            '99' :ProgressInfo(raiseProgress: 0.21, callProgress: 0.79),
            '88' :ProgressInfo(raiseProgress: 0.09, callProgress: 0.91),
            '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),


            'AKs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'AQs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'AJs':ProgressInfo(raiseProgress: 0.36, callProgress: 0.64),
            'ATs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'A9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'A8s':ProgressInfo(raiseProgress: 0.26, callProgress: 0.74),
            'A7s':ProgressInfo(raiseProgress: 0.17, callProgress: 0.83),
            'A6s':ProgressInfo(raiseProgress: 0.07, callProgress: 0.93),
            'A5s':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60),
            'A4s':ProgressInfo(raiseProgress: 0.33, callProgress: 0.67),
            'A3s':ProgressInfo(raiseProgress: 0.22, callProgress: 0.78),
            'A2s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),

            'AKo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'KQs':ProgressInfo(raiseProgress: 0.56, callProgress: 0.44),
            'KJs':ProgressInfo(raiseProgress: 0.09, callProgress: 0.91),
            'KTs':ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),
            'K9s':ProgressInfo(raiseProgress: 0.16, callProgress: 0.84),
            'K8s':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60),
            'K7s':ProgressInfo(raiseProgress: 0.32, callProgress: 0.68),
            'K6s':ProgressInfo(raiseProgress: 0.37, callProgress: 0.63),
            'K5s':ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
            'K4s':ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),
            'K3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'K2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AQo':ProgressInfo(raiseProgress: 0.50, callProgress: 0.50),
            'KQo':ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
            'QJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'QTs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'Q9s':ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
            'Q8s':ProgressInfo(raiseProgress: 0.39, callProgress: 0.61),
            'Q7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'Q6s':ProgressInfo(raiseProgress: 0.38, callProgress: 0.62),
            'Q5s':ProgressInfo(raiseProgress: 0.11, callProgress: 0.89),
            'Q4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'Q3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'Q2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AJo':ProgressInfo(raiseProgress: 0.16, callProgress: 0.84),
            'KJo':ProgressInfo(raiseProgress: 0.21, callProgress: 0.79),
            'QJo':ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),
            'JTs':ProgressInfo(raiseProgress: 0.92, callProgress: 0.08),
            'J9s':ProgressInfo(raiseProgress: 0.67, callProgress: 0.33),
            'J8s':ProgressInfo(raiseProgress: 0.61, callProgress: 0.39),
            'J7s':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60),
            'J6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),


            'ATo':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'KTo':ProgressInfo(raiseProgress: 0.19, callProgress: 0.81),
            'QTo':ProgressInfo(raiseProgress: 0.21, callProgress: 0.79),
            'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T9s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'T8s':ProgressInfo(raiseProgress: 0.67, callProgress: 0.33),
            'T7s':ProgressInfo(raiseProgress: 0.52, callProgress: 0.48),
            'T6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),


            'A9o':ProgressInfo(raiseProgress: 0.06, callProgress: 0.94),
            'K9o':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),
            'Q9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '98s':ProgressInfo(raiseProgress: 0.55, callProgress: 0.45),
            '97s':ProgressInfo(raiseProgress: 0.52, callProgress: 0.48),
            '96s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '95s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '94s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '93s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '92s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A8o':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
            'K8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            'Q8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            'J8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            'T8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '98o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '87s':ProgressInfo(raiseProgress: 0.61, callProgress: 0.39),
            '86s':ProgressInfo(raiseProgress: 0.50, callProgress: 0.50),
            '85s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '84s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '83s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '82s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


            'A7o':ProgressInfo(raiseProgress: 0.08, callProgress: 0.92),
            'K7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            'Q7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.84),
            'J7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.82),
            'T7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '97o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '87o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '76s':ProgressInfo(raiseProgress: 0.65, callProgress: 0.35),
            '75s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '74s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '73s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '72s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),


            'A6o':ProgressInfo(raiseProgress: 0.09, callProgress: 0.91),
            'K6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            'Q6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            'J6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.10),
            '96o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.12),
            '86o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '76o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '65s':ProgressInfo(raiseProgress: 0.63, callProgress: 0.37),
            '64s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '63s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '62s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A5o':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),
            'K5o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'Q5o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.69),
            '75o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.48),
            '65o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '54s':ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),
            '53s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A4o':ProgressInfo(raiseProgress: 0.11, callProgress: 0.89),
            'K4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            'Q4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.23),
            '64o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.52),
            '54o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '43s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '42s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            'K3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.67),
            '53o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.66),
            '43o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.28),
            '32s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),

            'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            'K2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.28),


          };
        case TournaPosition.BTN:
          return {
            'AA' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'KK' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'QQ' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'JJ' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'TT' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            '99' :ProgressInfo(raiseProgress: 0.62, callProgress: 0.38),
            '88' :ProgressInfo(raiseProgress: 0.34, callProgress: 0.66),
            '77' :ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
            '66' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),


            'AKs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'AQs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'AJs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'ATs':ProgressInfo(raiseProgress: 0.65, callProgress: 0.35),
            'A9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'A8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'A7s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'A6s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'A5s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'A4s':ProgressInfo(raiseProgress: 0.54, callProgress: 0.46),
            'A3s':ProgressInfo(raiseProgress: 0.33, callProgress: 0.67),
            'A2s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),

            'AKo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'KQs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'KJs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'KTs':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),
            'K9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'K8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'K7s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'K6s':ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
            'K5s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'K4s':ProgressInfo(raiseProgress: 0.05, callProgress: 0.95),
            'K3s':ProgressInfo(raiseProgress: 0.05, callProgress: 0.95),
            'K2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AQo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'KQo':ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),
            'QJs':ProgressInfo(raiseProgress: 0.27, callProgress: 0.73),
            'QTs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'Q9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'Q8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'Q7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'Q6s':ProgressInfo(raiseProgress: 0.21, callProgress: 0.79),
            'Q5s':ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
            'Q4s':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
            'Q3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'Q2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'AJo':ProgressInfo(raiseProgress: 0.38, callProgress: 0.62),
            'KJo':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
            'QJo':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
            'JTs':ProgressInfo(raiseProgress: 0.44, callProgress: 0.56),
            'J9s':ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
            'J8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'J7s':ProgressInfo(raiseProgress: 0.54, callProgress: 0.46),
            'J6s':ProgressInfo(raiseProgress: 0.29, callProgress: 0.71),
            'J5s':ProgressInfo(raiseProgress: 0.43, callProgress: 0.57),
            'J4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'J2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),


            'ATo':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'KTo':ProgressInfo(raiseProgress: 0.08, callProgress: 0.92),
            'QTo':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
            'JTo':ProgressInfo(raiseProgress: 0.11, callProgress: 0.89),
            'T9s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'T8s':ProgressInfo(raiseProgress: 0.65, callProgress: 0.35),
            'T7s':ProgressInfo(raiseProgress: 0.55, callProgress: 0.45),
            'T6s':ProgressInfo(raiseProgress: 0.67, callProgress: 0.33),
            'T5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            'T2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),


            'A9o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'K9o':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),
            'Q9o':ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),
            'J9o':ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
            'T9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '98s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            '97s':ProgressInfo(raiseProgress: 0.72, callProgress: 0.28),
            '96s':ProgressInfo(raiseProgress: 0.57, callProgress: 0.43),
            '95s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '94s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '93s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '92s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A8o':ProgressInfo(raiseProgress: 0.08, callProgress: 0.92),
            'K8o':ProgressInfo(raiseProgress: 0.12, callProgress: 0.88),
            'Q8o':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
            'J8o':ProgressInfo(raiseProgress: 0.19, callProgress: 0.81),
            'T8o':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
            '98o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '87s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            '86s':ProgressInfo(raiseProgress: 0.82, callProgress: 0.18),
            '85s':ProgressInfo(raiseProgress: 0.05, callProgress: 0.95),
            '84s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '83s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '82s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


            'A7o':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),
            'K7o':ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
            'Q7o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'J7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            'T7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '97o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '87o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '76s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            '75s':ProgressInfo(raiseProgress: 0.50, callProgress: 0.50),
            '74s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '73s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '72s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),


            'A6o':ProgressInfo(raiseProgress: 0.22, callProgress: 0.78),
            'K6o':ProgressInfo(raiseProgress: 0.28, callProgress: 0.72),
            'Q6o':ProgressInfo(raiseProgress: 0.16, callProgress: 0.84),
            'J6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            'T6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '96o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '86o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '76o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '65s':ProgressInfo(raiseProgress: 0.83, callProgress: 0.17),
            '64s':ProgressInfo(raiseProgress: 0.12, callProgress: 0.88),
            '63s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '62s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A5o':ProgressInfo(raiseProgress: 0.05, callProgress: 0.95),
            'K5o':ProgressInfo(raiseProgress: 0.22, callProgress: 0.78),
            'Q5o':ProgressInfo(raiseProgress: 0.06, callProgress: 0.94),
            'J5o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),

            '85o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.47),
            '75o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '65o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '54s':ProgressInfo(raiseProgress: 0.71, callProgress: 0.29),
            '53s':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
            '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A4o':ProgressInfo(raiseProgress: 0.21, callProgress: 0.79),
            'K4o':ProgressInfo(raiseProgress: 0.12, callProgress: 0.88),
            'Q4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            'J4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.91),
            '64o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '54o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '43s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '42s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),


            'A3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            'K3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0),
            'Q3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0),
            'J3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.19),
            '53o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '43o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.80),
            '32s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),

            'A2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            'K2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            'K2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.89),


          };
        case TournaPosition.SB:
          return {
            'AA' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'KK' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'QQ' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'JJ' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'TT' :ProgressInfo(raiseProgress: 0.34, callProgress: 0.66),
            '99' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            '88' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            '77' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            '66' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),


            'AKs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
            'AQs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'AJs':ProgressInfo(raiseProgress: 0.70, callProgress: 0.30),
            'ATs':ProgressInfo(raiseProgress: 0.33, callProgress: 0.67),
            'A9s':ProgressInfo(raiseProgress: 0.06, callProgress: 0.94),
            'A8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'A7s':ProgressInfo(raiseProgress: 0.09, callProgress: 0.91),
            'A6s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'A5s':ProgressInfo(raiseProgress: 0.67, callProgress: 0.33),
            'A4s':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60),
            'A3s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'A2s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),


            'AKo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
            'KQs':ProgressInfo(raiseProgress: 0.39, callProgress: 0.61),
            'KJs':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60),
            'KTs':ProgressInfo(raiseProgress: 0.47, callProgress: 0.53),
            'K9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'K8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'K7s':ProgressInfo(raiseProgress: 0.08, callProgress: 0.92),
            'K6s':ProgressInfo(raiseProgress: 0.28, callProgress: 0.72),
            'K5s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'K4s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'K3s':ProgressInfo(raiseProgress: 0.06, callProgress: 0.94),
            'K2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),


            'AQo':ProgressInfo(raiseProgress: 0.39, callProgress: 0.61),
            'KQo':ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
            'QJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'QTs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'Q9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'Q8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'Q7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            'Q6s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'Q5s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'Q4s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'Q3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            'Q2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),


            'AJo':ProgressInfo(raiseProgress: 0.16, callProgress: 0.84),
            'KJo':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
            'QJo':ProgressInfo(raiseProgress: 0.08, callProgress: 0.92),
            'JTs':ProgressInfo(raiseProgress: 0.19, callProgress: 0.81),
            'J9s':ProgressInfo(raiseProgress: 0.07, callProgress: 0.93),
            'J8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'J7s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'J6s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'J5s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'J4s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'J3s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'J2s':ProgressInfo(raiseProgress: 0.12, callProgress: 0.88),


            'ATo':ProgressInfo(raiseProgress: 0.11, callProgress: 0.89),
            'KTo':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'QTo':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'JTo':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'T9s':ProgressInfo(raiseProgress: 0.50, callProgress: 0.50),
            'T8s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
            'T7s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'T6s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'T5s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'T4s':ProgressInfo(raiseProgress: 0.08, callProgress: 0.92),
            'T3s':ProgressInfo(raiseProgress: 0.28, callProgress: 0.72),
            'T2s':ProgressInfo(raiseProgress: 0.33, callProgress: 0.67),


            'A9o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'K9o':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
            'Q9o':ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
            'J9o':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
            'T9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '98s':ProgressInfo(raiseProgress: 0.70, callProgress: 0.30),
            '97s':ProgressInfo(raiseProgress: 0.28, callProgress: 0.72),
            '96s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            '95s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '94s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '93s':ProgressInfo(raiseProgress: 0.08, callProgress: 0.92),
            '92s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A8o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'K8o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'Q8o':ProgressInfo(raiseProgress: 0.29, callProgress: 0.71),
            'J8o':ProgressInfo(raiseProgress: 0.34, callProgress: 0.66),
            'T8o':ProgressInfo(raiseProgress: 0.21, callProgress: 0.79),
            '98o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '87s':ProgressInfo(raiseProgress: 0.60, callProgress: 0.40),
            '86s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            '85s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            '84s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            '83s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.74),



            'A7o':ProgressInfo(raiseProgress: 0.07, callProgress: 0.93),
            'K7o':ProgressInfo(raiseProgress: 0.08, callProgress: 0.92),
            'Q7o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.24),
            'J7o':ProgressInfo(raiseProgress: 0.34, callProgress: 0.20),
            'T7o':ProgressInfo(raiseProgress: 0.45, callProgress: 0.55),
            '97o':ProgressInfo(raiseProgress: 0.10, callProgress: 0.73),
            '87o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '76s':ProgressInfo(raiseProgress: 0.49, callProgress: 0.51),
            '75s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),
            '74s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '73s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),



            'A6o':ProgressInfo(raiseProgress: 0.32, callProgress: 0.68),
            'K6o':ProgressInfo(raiseProgress: 0.29, callProgress: 0.71),
            'Q6o':ProgressInfo(raiseProgress: 0.29, callProgress: 0.18),
            '86o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.11),
            '76o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '65s':ProgressInfo(raiseProgress: 0.42, callProgress: 0.58),
            '64s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            '63s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '62s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

            'A5o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            'K5o':ProgressInfo(raiseProgress: 0.42, callProgress: 0.58),
            'Q5o':ProgressInfo(raiseProgress: 0.26, callProgress: 0.00),
            '65o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.70),
            '54s':ProgressInfo(raiseProgress: 0.41, callProgress: 0.59),
            '53s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
            '52s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),


            'A4o':ProgressInfo(raiseProgress: 0.06, callProgress: 0.94),
            'K4o':ProgressInfo(raiseProgress: 0.25, callProgress: 0.00),
            '54o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.68),
            '43s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
            '42s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),


            'A3o':ProgressInfo(raiseProgress: 0.32, callProgress: 0.68),
            '32s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.00),

            'A2o':ProgressInfo(raiseProgress: 0.60, callProgress: 0.40),



          };

      }
    }
  }
  //스택,내포지션만 선택됨
  else if (tournaSelection.myTournaPosition != TournaPosition.none) {
    switch (tournaSelection.myTournaPosition) {
      case TournaPosition.UTG:
        return {
          'AA' :ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          'AKs':ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          'AQs':ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          'AJs':ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          'ATs':ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          'A9s':ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          'A8s':ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          'A7s':ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          'A6s':ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          'A5s':ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          'A4s':ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          'A3s':ProgressInfo(callProgress: 0.0, raiseProgress: 0.4),
          'AKo':ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          'KK' :ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          'KQs':ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          'KJs':ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          'KTs':ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          'K9s':ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          'K8s':ProgressInfo(callProgress: 0.0, raiseProgress: 0.4),
          'AQo':ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          'KQo':ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          'QQ' :ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          'QJs':ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          'QTs':ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          'Q9s':ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          'AJo':ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          'KJo':ProgressInfo(callProgress: 0.0, raiseProgress: 0.3),
          'QJo':ProgressInfo(callProgress: 0.0, raiseProgress: 0.0),
          'JJ' :ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          'JTs':ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          'J9s':ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          'ATo':ProgressInfo(callProgress: 0.0, raiseProgress: 0.3),
          'JTo':ProgressInfo(callProgress: 0.0, raiseProgress: 0.0),
          'TT' :ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          'T9s':ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          'T8s':ProgressInfo(callProgress: 0.0, raiseProgress: 0.7),
          '99' :ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          '98s':ProgressInfo(callProgress: 0.0, raiseProgress: 0.5),
          '88' :ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          '87s':ProgressInfo(callProgress: 0.0, raiseProgress: 0.3),
          '77' :ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          '76s':ProgressInfo(callProgress: 0.0, raiseProgress: 0.2),
          '66' :ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          '65s':ProgressInfo(callProgress: 0.0, raiseProgress: 0.2),
          '55' :ProgressInfo(callProgress: 0.0, raiseProgress: 1.0),
          '44' :ProgressInfo(callProgress: 0.0, raiseProgress: 0.6),
          '33' :ProgressInfo(callProgress: 0.0, raiseProgress: 0.5),
          '22' :ProgressInfo(callProgress: 0.0, raiseProgress: 0.5),
        };
      case TournaPosition.UTG1:
        return {
          'AA' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'AKs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'AQs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'AJs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'ATs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A9s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A8s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A7s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A6s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A5s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A4s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A3s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'AKo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KK' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KQs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KJs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KTs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K9s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K8s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K7s':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.3 ),
          'K6s':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.2 ),
          'AQo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KQo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'QQ' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'QJs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'QTs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'Q9s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'AJo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KJo':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.7 ),
          'QJo':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.4 ),
          'JJ' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'JTs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'J9s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'J8s':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.1 ),
          'ATo':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.9 ),
          'KTo':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.0 ),
          'JTo':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.2 ),
          'TT' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'T9s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'T8s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '99' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '98s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '88' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '87s':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.5 ),
          '77' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '76s':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.3 ),
          '66' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '65s':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.3 ),
          '55' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '44' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '33' :ProgressInfo(callProgress: 0.0 , raiseProgress: 0.7 ),
          '22' :ProgressInfo(callProgress: 0.0 , raiseProgress: 0.7 ),
        };
      case TournaPosition.LJ:
        return {
          'AA' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'AKs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'AQs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'AJs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'ATs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A9s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A8s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A7s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A6s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A5s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A4s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A3s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A2s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'AKo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KK' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KQs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KJs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KTs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K9s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K8s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K7s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K6s':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.5 ),
          'AQo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KQo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'QQ' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'QJs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'QTs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'Q9s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'Q8s':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.5 ),
          'AJo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KJo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'QJo':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.8 ),
          'JJ' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'JTs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'J9s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'J8s':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.7 ),
          'ATo':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.9 ),
          'KTo':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.5 ),
          'QTo':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.3 ),
          'JTo':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.5 ),
          'TT' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'T9s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'T8s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '99' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '98s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '97s':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.4 ),
          '88' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '87s':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.6 ),
          '77' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '76s':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.4 ),
          '66' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '65s':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.3 ),
          '55' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '44' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '33' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '22' :ProgressInfo(callProgress: 0.0 , raiseProgress: 0.7 ),
        };
      case TournaPosition.HJ:
        return {
          'AA' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'AKs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'AQs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'AJs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'ATs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A9s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A8s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A7s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A6s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A5s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A4s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A3s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A2s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'AKo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KK' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KQs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KJs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KTs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K9s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K8s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K7s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K6s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K5s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K4s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'AQo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KQo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'QQ' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'QJs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'QTs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'Q9s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'Q8s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'Q7s':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.62),
          'Q6s':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.64),
          'AJo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KJo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'QJo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'JJ' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'JTs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'J9s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'J8s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'J7s':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.38),
          'ATo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KTo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'QTo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'JTo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'TT' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'T9s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'T8s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'T7s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A9o':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '99' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '98s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '97s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A8o':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.2 ),
          '88' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '87s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '86s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '77' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '76s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '66' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '65s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '55' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '54s':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.5 ),
          '44' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '33' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '22' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
        };
      case TournaPosition.CO:
        return {
          'AA' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'AKs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'AQs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'AJs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'ATs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A9s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A8s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A7s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A6s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A5s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A4s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A3s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A2s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),

          'AKo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KK' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KQs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KJs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KTs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K9s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K8s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K7s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K6s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K5s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K4s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K3s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K2s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),

          'AQo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KQo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'QQ' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'QJs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'QTs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'Q9s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'Q8s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'Q7s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'Q6s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'Q5s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'Q4s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'Q3s':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.00),

          'AJo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KJo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'QJo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'JJ' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'JTs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'J9s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'J8s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'J7s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'J6s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'J5s':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.46),

          'ATo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KTo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'QTo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'JTo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'TT' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'T9s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'T8s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'T7s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'T6s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),

          'A9o':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K9o':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'Q9o':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.45 ),
          'J9o':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.6 ),
          'T9o':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '99' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '98s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '97s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '96s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),

          'A8o':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '98o':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.00 ),
          '88' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '87s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '86s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '86s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '85s':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.5 ),

          'A7o':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '77' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '76s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '75s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),

          '66' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '65s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '64s':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.44),

          'A5o':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.6 ),
          '55' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '54s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),

          '44' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '33' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '22' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
        };
      case TournaPosition.BTN:
        return {
          'AA' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'AKs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'AQs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'AJs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'ATs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A9s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A8s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A7s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A6s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A5s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A4s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A3s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A2s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),

          'AKo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KK' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KQs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KJs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KTs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K9s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K8s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K7s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K6s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K5s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K4s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K3s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K2s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),

          'AQo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KQo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'QQ' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'QJs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'QTs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'Q9s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'Q8s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'Q7s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'Q6s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'Q5s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'Q4s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'Q3s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'Q2s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),

          'AJo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KJo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'QJo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'JJ' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'JTs':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'J9s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'J8s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'J7s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'J6s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'J5s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'J4s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'J3s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'J2s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),


          'ATo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'KTo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'QTo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'JTo':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'TT' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'T9s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'T8s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'T7s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'T6s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'T5s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'T4s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'T3s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),

          'A9o':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K9o':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'Q9o':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'J9o':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'T9o':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '99' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '98s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '97s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '96s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '95s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),

          'A8o':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K8o':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'Q8o':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'J8o':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'T8o':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '98o':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '88' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '87s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '86s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '86s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '85s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '84s':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.6 ),

          'A7o':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K7o':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'Q7o':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.62),
          'J7o':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.00),
          'T7o':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.6 ),
          '97o':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.85),
          '87o':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '77' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '76s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '75s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '74s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),

          'A6o':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K6o':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '76o':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.34),
          '66' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '65s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '65s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '64s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '63s':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.83),

          'A5o':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'K5o':ProgressInfo(callProgress: 0.0 , raiseProgress: 0.9 ),
          '55' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '54s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '53s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),

          'A4o':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '44' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '43s':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),

          'A3o':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '33' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          'A2o':ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
          '22' :ProgressInfo(callProgress: 0.0 , raiseProgress: 1.0 ),
        };
      case TournaPosition.SB:
        return {
          'AA' :ProgressInfo(raiseProgress: 0.3 , callProgress: 0.7 ),
          'AKs':ProgressInfo(raiseProgress: 0.48, callProgress: 0.52),
          'AQs':ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
          'AJs':ProgressInfo(raiseProgress: 0.6 , callProgress: 0.4 ),
          'ATs':ProgressInfo(raiseProgress: 0.65, callProgress: 0.35),
          'A9s':ProgressInfo(raiseProgress: 0.47, callProgress: 0.53),
          'A8s':ProgressInfo(raiseProgress: 0.46, callProgress: 0.54),
          'A7s':ProgressInfo(raiseProgress: 0.31, callProgress: 0.69),
          'A6s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.0),
          'A5s':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),
          'A4s':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),
          'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

          'AKo':ProgressInfo(raiseProgress: 0.19, callProgress: 0.81),
          'KK' :ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
          'KQs':ProgressInfo(raiseProgress: 0.62, callProgress: 0.38),
          'KJs':ProgressInfo(raiseProgress: 0.59, callProgress: 0.41),
          'KTs':ProgressInfo(raiseProgress: 0.48, callProgress: 0.52),
          'K9s':ProgressInfo(raiseProgress: 0.22, callProgress: 0.78),
          'K8s':ProgressInfo(raiseProgress: 0.17, callProgress: 0.83),
          'K7s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'K6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          'K5s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'K4s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'K3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          'K2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

          'AQo':ProgressInfo(raiseProgress: 0.3 , callProgress: 0.7 ),
          'KQo':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
          'QQ' :ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
          'QJs':ProgressInfo(raiseProgress: 0.58, callProgress: 0.42),
          'QTs':ProgressInfo(raiseProgress: 0.5 , callProgress: 0.5 ),
          'Q9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'Q8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'Q7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          'Q6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          'Q5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          'Q4s':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
          'Q3s':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
          'Q2s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),

          'AJo':ProgressInfo(raiseProgress: 0.16, callProgress: 0.84),
          'KJo':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
          'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          'JJ' :ProgressInfo(raiseProgress: 0.29, callProgress: 0.71),
          'JTs':ProgressInfo(raiseProgress: 0.52, callProgress: 0.48),
          'J9s':ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
          'J8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          'J7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          'J6s':ProgressInfo(raiseProgress: 0.19, callProgress: 0.81),
          'J5s':ProgressInfo(raiseProgress: 0.13, callProgress: 0.87),
          'J4s':ProgressInfo(raiseProgress: 0.21, callProgress: 0.79),
          'J3s':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),
          'J2s':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),

          'ATo':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
          'KTo':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
          'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          'TT' :ProgressInfo(raiseProgress: 0.31, callProgress: 0.69),
          'T9s':ProgressInfo(raiseProgress: 0.28, callProgress: 0.72),
          'T8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'T7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          'T6s':ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
          'T5s':ProgressInfo(raiseProgress: 0.21, callProgress: 0.79),
          'T4s':ProgressInfo(raiseProgress: 0.22, callProgress: 0.78),
          'T3s':ProgressInfo(raiseProgress: 0.17, callProgress: 0.83),
          'T2s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),

          'A9o':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
          'K9o':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
          'Q9o':ProgressInfo(raiseProgress: 0.16, callProgress: 0.84),
          'J9o':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
          'T9o':ProgressInfo(raiseProgress: 0.11, callProgress: 0.89),
          '99' :ProgressInfo(raiseProgress: 0.26, callProgress: 0.74),
          '98s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          '97s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          '96s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          '95s':ProgressInfo(raiseProgress: 0.26, callProgress: 0.74),
          '94s':ProgressInfo(raiseProgress: 0.2 , callProgress: 0.8 ),
          '93s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          '92s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

          'A8o':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
          'K8o':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
          'Q8o':ProgressInfo(raiseProgress: 0.19, callProgress: 0.81),
          'J8o':ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
          'T8o':ProgressInfo(raiseProgress: 0.19, callProgress: 0.81),
          '98o':ProgressInfo(raiseProgress: 0.17, callProgress: 0.83),
          '88' :ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
          '87s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
          '86s':ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
          '85s':ProgressInfo(raiseProgress: 0.16, callProgress: 0.84),
          '84s':ProgressInfo(raiseProgress: 0.24, callProgress: 0.76),
          '83s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          '82s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

          'A7o':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
          'K7o':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
          'Q7o':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
          'J7o':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
          'T7o':ProgressInfo(raiseProgress: 0.18, callProgress: 0.82),
          '97o':ProgressInfo(raiseProgress: 0.16, callProgress: 0.84),
          '87o':ProgressInfo(raiseProgress: 0.14, callProgress: 0.86),
          '77' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          '76s':ProgressInfo(raiseProgress: 0.2 , callProgress: 0.8 ),
          '75s':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
          '74s':ProgressInfo(raiseProgress: 0.2 , callProgress: 0.8 ),
          '73s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          '72s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

          'A6o':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
          'K6o':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
          'Q6o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'J6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          'T6o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          '96o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          '86o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          '76o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          '66' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          '65s':ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),
          '64s':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
          '63s':ProgressInfo(raiseProgress: 0.21, callProgress: 0.79),
          '62s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

          'A5o':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
          'K5o':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
          'Q5o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'J5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          'T5o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          '95o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          '85o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          '75o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          '65o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          '54s':ProgressInfo(raiseProgress: 0.26, callProgress: 0.74),
          '53s':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
          '52s':ProgressInfo(raiseProgress: 0.23, callProgress: 0.77),

          'A4o':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
          'K4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          'Q4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          'J4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          'T4o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          '94o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.28),
          '84o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.74),
          '74o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          '64o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          '54o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          '43s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
          '42s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),

          'A3o':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
          'K3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          'Q3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          'J3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          'T3o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          '93o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
          '83o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
          '73o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
          '63o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
          '53o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          '43o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.00),
          '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          '32s':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),

          'A2o':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
          'K2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          'Q2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          'J2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
          'T2o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.5 ),

          '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 1.0 ),
        };
    }
  }
  return {};
}