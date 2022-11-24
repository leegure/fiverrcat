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
          'AA' :ProgressInfo(raiseP: 1.00, callP: 0.0 , alreadyP: 0.30),
          'KK' :ProgressInfo(raiseP: 1.00, callP: 0.0 , alreadyP: 0.23),
          'QQ' :ProgressInfo(raiseP: 1.00, callP: 0.00, alreadyP: 0.25),
          'JJ' :ProgressInfo(raiseP: 1.00, callP: 0.00, alreadyP: 0.29),
          'TT' :ProgressInfo(raiseP: 1.00, callP: 0.00, alreadyP: 0.31),
          '99' :ProgressInfo(raiseP: 0.30, callP: 0.70, alreadyP: 0.26),
          '88' :ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.18),
          '77' :ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.0),
          '66' :ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.0),
          '55' :ProgressInfo(raiseP: 0.0 , callP: 1.0 , alreadyP: 0.0),
          '44' :ProgressInfo(raiseP: 0.0 , callP: 1.0 , alreadyP: 0.0),
          '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0 , alreadyP: 0.0),
          '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0 , alreadyP: 0.0),


          'AKs':ProgressInfo(raiseP: 1.00, callP: 0.0 , alreadyP: 0.48),
          'AQs':ProgressInfo(raiseP: 1.00, callP: 0.00, alreadyP: 0.24),
          'AJs':ProgressInfo(raiseP: 1.00, callP: 0.00, alreadyP: 0.60),
          'ATs':ProgressInfo(raiseP: 1.00, callP: 0.00, alreadyP: 0.65),
          'A9s':ProgressInfo(raiseP: 0.15, callP: 0.85, alreadyP: 0.47),
          'A8s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.46),
          'A7s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.31),
          'A6s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.00),
          'A5s':ProgressInfo(raiseP: 0.32, callP: 0.68, alreadyP: 0.35),
          'A4s':ProgressInfo(raiseP: 0.15, callP: 0.86, alreadyP: 0.14),
          'A3s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.0),
          'A2s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.0),


          'AKo':ProgressInfo(raiseP: 1.00, callP: 0.00, alreadyP: 0.19),
          'KQs':ProgressInfo(raiseP: 1.00, callP: 0.00, alreadyP: 0.62),
          'KJs':ProgressInfo(raiseP: 0.73, callP: 0.27, alreadyP: 0.59),
          'KTs':ProgressInfo(raiseP: 0.30, callP: 0.70, alreadyP: 0.48),
          'K9s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.22),
          'K8s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.17),
          'K7s':ProgressInfo(raiseP: 0.10, callP: 0.90, alreadyP: 0.0),
          'K6s':ProgressInfo(raiseP: 0.20, callP: 0.80, alreadyP: 0.0),
          'K5s':ProgressInfo(raiseP: 0.22, callP: 0.78, alreadyP: 0.0),
          'K4s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.0),
          'K3s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.0),
          'K2s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.0),


          'AQo':ProgressInfo(raiseP: 1.00, callP: 0.00, alreadyP: 0.30),
          'KQo':ProgressInfo(raiseP: 0.25, callP: 0.75, alreadyP: 0.15),
          'QJs':ProgressInfo(raiseP: 0.35, callP: 0.65, alreadyP: 0.58),
          'QTs':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.50),
          'Q9s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.0),
          'Q8s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.0),
          'Q7s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.0),
          'Q6s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.0),
          'Q5s':ProgressInfo(raiseP: 0.15, callP: 0.85, alreadyP: 0.0),
          'Q4s':ProgressInfo(raiseP: 0.00, callP: 0.90, alreadyP: 0.10),
          'Q3s':ProgressInfo(raiseP: 0.00, callP: 0.90, alreadyP: 0.10),
          'Q2s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.0),


          'AJo':ProgressInfo(raiseP: 0.40, callP: 0.60, alreadyP: 0.16),
          'KJo':ProgressInfo(raiseP: 0.20, callP: 0.80, alreadyP: 0.0),
          'QJo':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.0),
          'JTs':ProgressInfo(raiseP: 0.30, callP: 0.70, alreadyP: 0.52),
          'J9s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.18),
          'J8s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.0),
          'J7s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.0),
          'J6s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.19),
          'J5s':ProgressInfo(raiseP: 0.20, callP: 0.80, alreadyP: 0.13),
          'J4s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.21),
          'J3s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.14),
          'J2s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.14),


          'ATo':ProgressInfo(raiseP: 0.15, callP: 0.85, alreadyP: 0.15),
          'KTo':ProgressInfo(raiseP: 0.25, callP: 0.75, alreadyP: 0.15),
          'QTo':ProgressInfo(raiseP: 0.15, callP: 0.85, alreadyP: 0.0),
          'JTo':ProgressInfo(raiseP: 0.15, callP: 0.85, alreadyP: 0.0),
          'T9s':ProgressInfo(raiseP: 0.50, callP: 0.50, alreadyP: 0.28),
          'T8s':ProgressInfo(raiseP: 0.40, callP: 0.60, alreadyP: 0.0),
          'T7s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.0),
          'T6s':ProgressInfo(raiseP: 0.15, callP: 0.85, alreadyP: 0.18),
          'T5s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.21),
          'T4s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.22),
          'T3s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.17),
          'T2s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.0),


          'A9o':ProgressInfo(raiseP: 0.25, callP: 0.75, alreadyP: 0.20),
          'K9o':ProgressInfo(raiseP: 0.20, callP: 0.80, alreadyP: 0.20),
          'Q9o':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.16),
          'J9o':ProgressInfo(raiseP: 0.20, callP: 0.80, alreadyP: 0.15),
          'T9o':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.11),
          '98s':ProgressInfo(raiseP: 0.50, callP: 0.50, alreadyP: 0.0),
          '97s':ProgressInfo(raiseP: 0.20, callP: 0.80, alreadyP: 0.0),
          '96s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.0),
          '95s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.26),
          '94s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.20),
          '93s':ProgressInfo(raiseP: 0.00, callP: 0.30, alreadyP: 0.0),
          '92s':ProgressInfo(raiseP: 0.00, callP: 0.00, alreadyP: 0.0),

          'A8o':ProgressInfo(raiseP: 0.25, callP: 0.75, alreadyP: 0.20),
          'K8o':ProgressInfo(raiseP: 0.15, callP: 0.85, alreadyP: 0.20),
          'Q8o':ProgressInfo(raiseP: 0.15, callP: 0.85, alreadyP: 0.19),
          'J8o':ProgressInfo(raiseP: 0.15, callP: 0.85, alreadyP: 0.23),
          'T8o':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.19),
          '98o':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.17),
          '87s':ProgressInfo(raiseP: 0.70, callP: 0.30, alreadyP: 0.15),
          '86s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.18),
          '85s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.16),
          '84s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.24),
          '83s':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          '82s':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),

          'A7o':ProgressInfo(raiseP: 0.20, callP: 0.80, alreadyP: 0.20),
          'K7o':ProgressInfo(raiseP: 0.20, callP: 0.80, alreadyP: 0.20),
          'Q7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          'J7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          'T7o':ProgressInfo(raiseP: 0.0 , callP: 0.20, alreadyP: 0.18),
          '97o':ProgressInfo(raiseP: 0.0 , callP: 0.30, alreadyP: 0.16),
          '87o':ProgressInfo(raiseP: 0.0 , callP: 0.70, alreadyP: 0.00),
          '76s':ProgressInfo(raiseP: 0.40, callP: 0.60, alreadyP: 0.20),
          '75s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.10),
          '74s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.20),
          '73s':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          '72s':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),

          'A6o':ProgressInfo(raiseP: 0.15, callP: 0.85, alreadyP: 0.20),
          'K6o':ProgressInfo(raiseP: 0.25, callP: 0.75, alreadyP: 0.20),
          'Q6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          'J6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          'T6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          '96o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          '86o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          '76o':ProgressInfo(raiseP: 0.0 , callP: 0.35, alreadyP: 0.00),
          '65s':ProgressInfo(raiseP: 0.15, callP: 0.85, alreadyP: 0.23),
          '64s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.25),
          '63s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.21),
          '62s':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),

          'A5o':ProgressInfo(raiseP: 0.20, callP: 0.80, alreadyP: 0.20),
          'K5o':ProgressInfo(raiseP: 0.0 , callP: 0.45, alreadyP: 0.20),
          'Q5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          'J5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          'T5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          '95o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          '85o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          '75o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          '65o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          '54s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.26),
          '53s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.25),
          '52s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.23),

          'A4o':ProgressInfo(raiseP: 0.20, callP: 0.80, alreadyP: 0.15),
          'K4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          'Q4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          'J4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          'T4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          '94o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          '84o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          '74o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          '64o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          '54o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          '43s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.15),
          '42s':ProgressInfo(raiseP: 0.0 , callP: 0.30, alreadyP: 0.00),

          'A3o':ProgressInfo(raiseP: 0.10, callP: 0.90, alreadyP: 0.15),
          'K3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          'Q3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          'J3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          'T3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          '93o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          '83o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          '73o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          '63o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          '53o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          '43o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          '32s':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),

          'A2o':ProgressInfo(raiseP: 0.15, callP: 0.85, alreadyP: 0.15),
          'K2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          'Q2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          'J2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          'T2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          '92o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          '82o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          '72o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          '62o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          '52o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          '42o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
          '32o':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),



        };
      }
    }
    //3bet pot
    else if (tournaSelection.opponentAction == OpponentAction.threeBet) {
      if (tournaSelection.myTournaPosition == TournaPosition.UTG) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.UTG1:
            return {
              'AA' :ProgressInfo(raiseP: 1.00, callP: 0.00),
              'KK' :ProgressInfo(raiseP: 0.55, callP: 0.00, allinP: 0.45),
              'QQ' :ProgressInfo(raiseP: 0.27, callP: 0.73),
              'JJ' :ProgressInfo(raiseP: 0.34, callP: 0.66),
              'TT' :ProgressInfo(raiseP: 0.23, callP: 0.77),
              '99' :ProgressInfo(raiseP: 0.14, callP: 0.86),
              '88' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 0.88),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 0.74),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.57),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.4),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.5),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.5),


              'AKs':ProgressInfo(raiseP: 0.5, callP: 0.00, allinP: 0.5),
              'AQs':ProgressInfo(raiseP: 0.42, callP: 0.58),
              'AJs':ProgressInfo(raiseP: 0.52, callP: 0.48),
              'ATs':ProgressInfo(raiseP: 0.27, callP: 0.73),
              'A9s':ProgressInfo(raiseP: 0.0 , callP: 0.29),
              'A8s':ProgressInfo(raiseP: 0.0 , callP: 0.20),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(raiseP: 0.28, callP: 0.72),
              'A4s':ProgressInfo(raiseP: 0.17, callP: 0.59),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.6),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(raiseP: 0.2, callP: 0.4, allinP: 0.4),
              'KQs':ProgressInfo(raiseP: 0.17, callP: 0.83),
              'KJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KTs':ProgressInfo(raiseP: 0.13, callP: 0.83),


              'AQo':ProgressInfo(raiseP: 0.0 , callP: 0.20),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 0.58),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.19),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.14, callP: 0.86),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.07, callP: 0.54),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 0.9, alreadyP: 0.5),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.7),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.8),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.8 ),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 0.11),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.LJ:
            return {
              'AA' :ProgressInfo(raiseP: 1.00, callP: 0.00),
              'KK' :ProgressInfo(raiseP: 0.55, callP: 0.00, allinP: 0.45),
              'QQ' :ProgressInfo(raiseP: 0.25, callP: 0.75),
              'JJ' :ProgressInfo(raiseP: 0.33, callP: 0.67),
              'TT' :ProgressInfo(raiseP: 0.20, callP: 0.80),
              '99' :ProgressInfo(raiseP: 0.12, callP: 0.88),
              '88' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.0),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 0.87),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.65),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.4),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.5),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.5),


              'AKs':ProgressInfo(raiseP: 0.6, callP: 0.00, allinP: 0.4),
              'AQs':ProgressInfo(raiseP: 0.29, callP: 0.71),
              'AJs':ProgressInfo(raiseP: 0.48, callP: 0.52),
              'ATs':ProgressInfo(raiseP: 0.27, callP: 0.73),
              'A9s':ProgressInfo(raiseP: 0.0 , callP: 0.55),
              'A8s':ProgressInfo(raiseP: 0.0 , callP: 0.24),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(raiseP: 0.32, callP: 0.68),
              'A4s':ProgressInfo(raiseP: 0.19, callP: 0.81),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.9, alreadyP: 0.6),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(raiseP: 0.15, callP: 0.40, allinP: 0.45),
              'KQs':ProgressInfo(raiseP: 0.19, callP: 0.81),
              'KJs':ProgressInfo(raiseP: 0.1, callP: 0.9),
              'KTs':ProgressInfo(raiseP: 0.17, callP: 0.83),


              'AQo':ProgressInfo(raiseP: 0.0 , callP: 0.38),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 0.65),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.36),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.14, callP: 0.86),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.00, callP: 0.71),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.5),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.7),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.8),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.0 , alreadyP: 0.8),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.HJ:
            return {
              'AA' :ProgressInfo(raiseP: 1.00, callP: 0.00),
              'KK' :ProgressInfo(raiseP: 0.65, callP: 0.00, allinP: 0.35),
              'QQ' :ProgressInfo(raiseP: 0.25, callP: 0.75),
              'JJ' :ProgressInfo(raiseP: 0.29, callP: 0.71),
              'TT' :ProgressInfo(raiseP: 0.21, callP: 0.79),
              '99' :ProgressInfo(raiseP: 0.10, callP: 0.90),
              '88' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 0.92),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.76),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.4),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.5),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.5),


              'AKs':ProgressInfo(raiseP: 0.85, callP: 0.00, allinP: 0.15),
              'AQs':ProgressInfo(raiseP: 0.30, callP: 0.70),
              'AJs':ProgressInfo(raiseP: 0.40, callP: 0.60),
              'ATs':ProgressInfo(raiseP: 0.32, callP: 0.68),
              'A9s':ProgressInfo(raiseP: 0.0 , callP: 0.83),
              'A8s':ProgressInfo(raiseP: 0.0 , callP: 0.46),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(raiseP: 0.33, callP: 0.67),
              'A4s':ProgressInfo(raiseP: 0.23, callP: 0.77),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.8, alreadyP: 0.6),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(raiseP: 0.15, callP: 0.45, allinP: 0.4),
              'KQs':ProgressInfo(raiseP: 0.13, callP: 0.87),
              'KJs':ProgressInfo(raiseP: 0.14, callP: 0.86),
              'KTs':ProgressInfo(raiseP: 0.17, callP: 0.83),


              'AQo':ProgressInfo(raiseP: 0.13, callP: 0.41),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 0.78),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.62),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.11, callP: 0.89),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.17, callP: 0.64),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.5),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.7),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.8),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.0 , alreadyP: 0.8),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.CO:
            return {
              'AA' :ProgressInfo(raiseP: 1.00, callP: 0.00),
              'KK' :ProgressInfo(raiseP: 0.7, callP: 0.1, allinP: 0.2),
              'QQ' :ProgressInfo(raiseP: 0.24, callP: 0.76),
              'JJ' :ProgressInfo(raiseP: 0.23, callP: 0.77),
              'TT' :ProgressInfo(raiseP: 0.22, callP: 0.78),
              '99' :ProgressInfo(raiseP: 0.10, callP: 0.90),
              '88' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 0.93),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.74),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.4),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.5),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.5),


              'AKs':ProgressInfo(raiseP: 1.00, callP: 0.00),
              'AQs':ProgressInfo(raiseP: 0.43, callP: 0.57),
              'AJs':ProgressInfo(raiseP: 0.28, callP: 0.72),
              'ATs':ProgressInfo(raiseP: 0.43, callP: 0.57),
              'A9s':ProgressInfo(raiseP: 0.0 , callP: 0.93),
              'A8s':ProgressInfo(raiseP: 0.0 , callP: 0.46),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.29),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(raiseP: 0.35, callP: 0.65),
              'A4s':ProgressInfo(raiseP: 0.21, callP: 0.79),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.6),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(raiseP: 0.15, callP: 0.55, allinP: 0.3),
              'KQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KJs':ProgressInfo(raiseP: 0.28, callP: 0.72),
              'KTs':ProgressInfo(raiseP: 0.15, callP: 0.85),


              'AQo':ProgressInfo(raiseP: 0.13, callP: 0.54),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.1 , callP: 0.75),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.74),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.14, callP: 0.86),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.17, callP: 0.72),
              'T8s':ProgressInfo(raiseP: 0.00, callP: 0.25, alreadyP: 0.3),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.5),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.7),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.8),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.0 , alreadyP: 0.8),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.BTN:
            return {
              'AA' :ProgressInfo(raiseP: 1.00, callP: 0.00),
              'KK' :ProgressInfo(raiseP: 0.7, callP: 0.1, allinP: 0.2),
              'QQ' :ProgressInfo(raiseP: 0.22, callP: 0.78),
              'JJ' :ProgressInfo(raiseP: 0.22, callP: 0.78),
              'TT' :ProgressInfo(raiseP: 0.14, callP: 0.86),
              '99' :ProgressInfo(raiseP: 0.17, callP: 0.83),
              '88' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.78),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.4),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.5),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.5),


              'AKs':ProgressInfo(raiseP: 1.00, callP: 0.00),
              'AQs':ProgressInfo(raiseP: 0.35, callP: 0.65),
              'AJs':ProgressInfo(raiseP: 0.12, callP: 0.88),
              'ATs':ProgressInfo(raiseP: 0.35, callP: 0.65),
              'A9s':ProgressInfo(raiseP: 0.0 , callP: 0.90),
              'A8s':ProgressInfo(raiseP: 0.10, callP: 0.67),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.32),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(raiseP: 0.38, callP: 0.62),
              'A4s':ProgressInfo(raiseP: 0.28, callP: 0.72),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.6),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(raiseP: 0.15, callP: 0.55, allinP: 0.3),
              'KQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KJs':ProgressInfo(raiseP: 0.23, callP: 0.77),
              'KTs':ProgressInfo(raiseP: 0.13, callP: 0.87),


              'AQo':ProgressInfo(raiseP: 0.18, callP: 0.63),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.10, callP: 0.90),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.79),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.17, callP: 0.83),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.20, callP: 0.80),
              'T8s':ProgressInfo(raiseP: 0.00, callP: 0.00),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.5),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.7),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.8),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.0 , alreadyP: 0.8),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.SB:
            return {
              'AA' :ProgressInfo(raiseP: 0.31, callP: 0.69),
              'KK' :ProgressInfo(raiseP: 0.1, callP: 0.55, allinP: 0.35),
              'QQ' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              'JJ' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              'TT' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '99' :ProgressInfo(raiseP: 0.00, callP: 0.70),
              '88' :ProgressInfo(raiseP: 0.00, callP: 0.66),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 0.63),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 0.60),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.38),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.7, alreadyP: 0.4),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.9, alreadyP: 0.5),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.5),


              'AKs':ProgressInfo(raiseP: 0.24, callP: 0.76),
              'AQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'AJs':ProgressInfo(raiseP: 0.0, callP: 1.0),
              'ATs':ProgressInfo(raiseP: 0.1, callP: 0.90),
              'A9s':ProgressInfo(raiseP: 0.0 , callP: 0.90),
              'A8s':ProgressInfo(raiseP: 0.00, callP: 0.33),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.28),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(raiseP: 0.10, callP: 0.9),
              'A4s':ProgressInfo(raiseP: 0.10, callP: 0.55),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.15, alreadyP: 0.6),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(raiseP: 0.0, callP: 0.55, allinP: 0.45),
              'KQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KJs':ProgressInfo(raiseP: 0.10, callP: 0.90),
              'KTs':ProgressInfo(raiseP: 0.0, callP: 0.38),


              'AQo':ProgressInfo(raiseP: 0.00, callP: 0.35),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.00, callP: 0.68),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.56),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.00, callP: 0.80),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.00, callP: 0.39),
              'T8s':ProgressInfo(raiseP: 0.00, callP: 0.00),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 0.65, alreadyP: 0.5),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.7),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.8),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.0 , alreadyP: 0.8),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.BB:
            return {
              'AA' :ProgressInfo(raiseP: 0.51, callP: 0.49),
              'KK' :ProgressInfo(raiseP: 0.29, callP: 0.71),
              'QQ' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              'JJ' :ProgressInfo(raiseP: 0.10, callP: 0.90),
              'TT' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '99' :ProgressInfo(raiseP: 0.00, callP: 0.57),
              '88' :ProgressInfo(raiseP: 0.00, callP: 0.54),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 0.56),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 0.58),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.30),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.35, alreadyP: 0.4),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.5, alreadyP: 0.5),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.35, alreadyP: 0.5),


              'AKs':ProgressInfo(raiseP: 0.42, callP: 0.58),
              'AQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'AJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'ATs':ProgressInfo(raiseP: 0.16, callP: 0.84),
              'A9s':ProgressInfo(raiseP: 0.0 , callP: 0.43),
              'A8s':ProgressInfo(raiseP: 0.00, callP: 0.60),
              'A7s':ProgressInfo(raiseP: 0.12, callP: 0.18),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(raiseP: 0.11, callP: 0.89),
              'A4s':ProgressInfo(raiseP: 0.13, callP: 0.43),
              'A3s':ProgressInfo(raiseP: 0.15 , callP: 0.00, alreadyP: 0.6),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(raiseP: 0.15, callP: 0.75, allinP: 0.1),
              'KQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KJs':ProgressInfo(raiseP: 0.15, callP: 0.85),
              'KTs':ProgressInfo(raiseP: 0.00, callP: 0.24),


              'AQo':ProgressInfo(raiseP: 0.00, callP: 0.00),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.00, callP: 0.65),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.62),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.00, callP: 0.51),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.00, callP: 0.41),
              'T8s':ProgressInfo(raiseP: 0.00, callP: 0.00),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 0.3, alreadyP: 0.5),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.7),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.8),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.0 , alreadyP: 0.8),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.UTG1) {
        switch (tournaSelection.opponentTournaPosition) {

          case TournaPosition.LJ:
            return {
              'AA' :ProgressInfo(raiseP: 1.00, callP: 0.00),
              'KK' :ProgressInfo(raiseP: 0.55, callP: 0.00, alreadyP: 0.0, allinP: 0.45),
              'QQ' :ProgressInfo(raiseP: 0.28, callP: 0.72),
              'JJ' :ProgressInfo(raiseP: 0.32, callP: 0.68),
              'TT' :ProgressInfo(raiseP: 0.21, callP: 0.79),
              '99' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '88' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.0),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.81),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.84),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.71, alreadyP: 0.3),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.73, alreadyP: 0.3),


              'AKs':ProgressInfo(raiseP: 0.85, callP: 0.00, alreadyP: 0.0, allinP: 0.15),
              'AQs':ProgressInfo(raiseP: 0.35, callP: 0.65),
              'AJs':ProgressInfo(raiseP: 0.40, callP: 0.60),
              'ATs':ProgressInfo(raiseP: 0.32, callP: 0.68),
              'A9s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              'A8s':ProgressInfo(raiseP: 0.0 , callP: 0.62),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(raiseP: 0.29, callP: 0.71),
              'A4s':ProgressInfo(raiseP: 0.15, callP: 0.85),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.39),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(raiseP: 0.1, callP: 0.35, alreadyP: 0.0, allinP: 0.55),
              'KQs':ProgressInfo(raiseP: 0.16, callP: 0.84),
              'KJs':ProgressInfo(raiseP: 0.20, callP: 0.80),
              'KTs':ProgressInfo(raiseP: 0.17, callP: 0.83),
              'K6s':ProgressInfo(raiseP: 0.0, callP: 1.0, alreadyP: 0.8),


              'AQo':ProgressInfo(raiseP: 0.17, callP: 0.52),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.70),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.16, callP: 0.84),
              'J9s':ProgressInfo(raiseP: 0.00, callP: 0.21),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.18, callP: 0.82),
              'T8s':ProgressInfo(raiseP: 0.00, callP: 0.20),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 0.69),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.1 , callP: 0.9, alreadyP: 0.5),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.7),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.7),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.HJ:
            return {
              'AA' :ProgressInfo(raiseP: 1.00, callP: 0.00),
              'KK' :ProgressInfo(raiseP: 0.6, callP: 0.00, alreadyP: 0.0, allinP: 0.4),
              'QQ' :ProgressInfo(raiseP: 0.30, callP: 0.70),
              'JJ' :ProgressInfo(raiseP: 0.28, callP: 0.72),
              'TT' :ProgressInfo(raiseP: 0.23, callP: 0.77),
              '99' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '88' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.0),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.3, allinP: 0.0),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.3, allinP: 0.0),


              'AKs':ProgressInfo(raiseP: 1.00, callP: 0.00),
              'AQs':ProgressInfo(raiseP: 0.40, callP: 0.60),
              'AJs':ProgressInfo(raiseP: 0.24, callP: 0.76),
              'ATs':ProgressInfo(raiseP: 0.43, callP: 0.57),
              'A9s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              'A8s':ProgressInfo(raiseP: 0.15, callP: 0.85),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.30),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(raiseP: 0.23, callP: 0.77),
              'A4s':ProgressInfo(raiseP: 0.1, callP: 0.9),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.26),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(raiseP: 0.1, callP: 0.4, alreadyP: 0.0, allinP: 0.5),
              'KQs':ProgressInfo(raiseP: 0.1, callP: 0.9),
              'KJs':ProgressInfo(raiseP: 0.36, callP: 0.64),
              'KTs':ProgressInfo(raiseP: 0.17, callP: 0.83),
              'K6s':ProgressInfo(raiseP: 0.0, callP: 1.0, alreadyP: 0.8, allinP: 0.0),


              'AQo':ProgressInfo(raiseP: 0.22, callP: 0.78),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 1.00),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.15, callP: 0.85),
              'J9s':ProgressInfo(raiseP: 0.00, callP: 0.24),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.18, callP: 0.82),
              'T8s':ProgressInfo(raiseP: 0.00, callP: 0.34),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 0.76),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.5, allinP: 0.0),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.7, allinP: 0.0),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.7, allinP: 0.0),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.CO:
            return {
              'AA' :ProgressInfo(raiseP: 1.00, callP: 0.00),
              'KK' :ProgressInfo(raiseP: 0.7, callP: 0.00, alreadyP: 0.0, allinP: 0.3),
              'QQ' :ProgressInfo(raiseP: 0.30, callP: 0.70),
              'JJ' :ProgressInfo(raiseP: 0.21, callP: 0.79),
              'TT' :ProgressInfo(raiseP: 0.21, callP: 0.79),
              '99' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '88' :ProgressInfo(raiseP: 0.1, callP: 0.9),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.0),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.3),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.3),


              'AKs':ProgressInfo(raiseP: 1.00, callP: 0.00),
              'AQs':ProgressInfo(raiseP: 0.44, callP: 0.56),
              'AJs':ProgressInfo(raiseP: 0.17, callP: 0.83),
              'ATs':ProgressInfo(raiseP: 0.43, callP: 0.57),
              'A9s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              'A8s':ProgressInfo(raiseP: 0.17, callP: 0.83),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.58),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.17),
              'A5s':ProgressInfo(raiseP: 0.31, callP: 0.69),
              'A4s':ProgressInfo(raiseP: 0.20, callP: 0.80),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.44),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(raiseP: 0.15, callP: 0.45, alreadyP: 0.0, allinP: 0.4),
              'KQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KJs':ProgressInfo(raiseP: 0.39, callP: 0.61),
              'KTs':ProgressInfo(raiseP: 0.17, callP: 0.83),
              'K6s':ProgressInfo(raiseP: 0.0, callP: 1.0, alreadyP: 0.8, allinP: 0.0),
              'K7s':ProgressInfo(raiseP: 0.0, callP: 0.2, alreadyP: 0.7, allinP: 0.0),


              'AQo':ProgressInfo(raiseP: 0.24, callP: 0.76),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.10, callP: 0.90),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 1.00),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.18, callP: 0.82),
              'J9s':ProgressInfo(raiseP: 0.00, callP: 0.35),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.21, callP: 0.79),
              'T8s':ProgressInfo(raiseP: 0.00, callP: 0.45),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 0.87),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.5),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.7),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.7),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.BTN:
            return {
              'AA' :ProgressInfo(raiseP: 1.00, callP: 0.00),
              'KK' :ProgressInfo(raiseP: 0.7, callP: 0.00, alreadyP: 0.0, allinP: 0.3),
              'QQ' :ProgressInfo(raiseP: 0.27, callP: 0.73),
              'JJ' :ProgressInfo(raiseP: 0.20, callP: 0.80),
              'TT' :ProgressInfo(raiseP: 0.15, callP: 0.85),
              '99' :ProgressInfo(raiseP: 0.15, callP: 0.85),
              '88' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.0),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.3, allinP: 0.0),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.3, allinP: 0.0),


              'AKs':ProgressInfo(raiseP: 1.00, callP: 0.00),
              'AQs':ProgressInfo(raiseP: 0.46, callP: 0.54),
              'AJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'ATs':ProgressInfo(raiseP: 0.45, callP: 0.55),
              'A9s':ProgressInfo(raiseP: 0.17, callP: 0.83),
              'A8s':ProgressInfo(raiseP: 0.15, callP: 0.85),
              'A7s':ProgressInfo(raiseP: 0.1 , callP: 0.9),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.49),
              'A5s':ProgressInfo(raiseP: 0.27, callP: 0.73),
              'A4s':ProgressInfo(raiseP: 0.17, callP: 0.83),
              'A3s':ProgressInfo(raiseP: 0.1 , callP: 0.7),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(raiseP: 0.15, callP: 0.45, alreadyP: 0.0, allinP: 0.4),
              'KQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KJs':ProgressInfo(raiseP: 0.26, callP: 0.74),
              'KTs':ProgressInfo(raiseP: 0.26, callP: 0.74),
              'K9s':ProgressInfo(raiseP: 0.00, callP: 0.44),
              'K7s':ProgressInfo(raiseP: 0.00, callP: 0.2, alreadyP: 0.7),
              'K6s':ProgressInfo(raiseP: 0.00, callP: 1.0, alreadyP: 0.8),


              'AQo':ProgressInfo(raiseP: 0.26, callP: 0.74),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.1 ),
              'QJs':ProgressInfo(raiseP: 0.14, callP: 0.86),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 1.00),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.1 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.23, callP: 0.77),
              'J9s':ProgressInfo(raiseP: 0.00, callP: 0.32),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.20, callP: 0.80),
              'T8s':ProgressInfo(raiseP: 0.00, callP: 0.18),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.1 , callP: 0.9),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.5),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.7),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.7),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.SB:
            return {
              'AA' :ProgressInfo(raiseP: 0.36, callP: 0.64),
              'KK' :ProgressInfo(raiseP: 0.1, callP: 0.55, allinP: 0.35),
              'QQ' :ProgressInfo(raiseP: 0.0, callP: 1.0),
              'JJ' :ProgressInfo(raiseP: 0.0, callP: 1.0),
              'TT' :ProgressInfo(raiseP: 0.0, callP: 1.0),
              '99' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '88' :ProgressInfo(raiseP: 0.00, callP: 0.80),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 0.74),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 0.70),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.43),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.52),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.8, alreadyP: 0.3),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.8, alreadyP: 0.3),


              'AKs':ProgressInfo(raiseP: 0.27, callP: 0.73),
              'AQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'AJs':ProgressInfo(raiseP: 0.1, callP: 0.9),
              'ATs':ProgressInfo(raiseP: 0.1, callP: 0.9),
              'A9s':ProgressInfo(raiseP: 0.00, callP: 0.51),
              'A8s':ProgressInfo(raiseP: 0.00, callP: 0.41),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.18),

              'A5s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A4s':ProgressInfo(raiseP: 0.00, callP: 0.85),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.17),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(raiseP: 0.0, callP: 0.5, allinP: 0.5),
              'KQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KTs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'K9s':ProgressInfo(raiseP: 0.00, callP: 0.00),


              'AQo':ProgressInfo(raiseP: 0.1, callP: 0.6),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.80),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.00, callP: 1.00),



              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.00, callP: 0.54),
              'T8s':ProgressInfo(raiseP: 0.00, callP: 0.00),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 0.41),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.5),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.7),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.7),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.BB:
            return {
              'AA' :ProgressInfo(raiseP: 0.45, callP: 0.55),
              'KK' :ProgressInfo(raiseP: 0.2, callP: 0.6, allinP:0.2),
              'QQ' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              'JJ' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              'TT' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '99' :ProgressInfo(raiseP: 0.00, callP: 0.78),
              '88' :ProgressInfo(raiseP: 0.00, callP: 0.72),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 0.76),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 0.63),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.35),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.37),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.4, alreadyP: 0.3),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.3, alreadyP: 0.3),


              'AKs':ProgressInfo(raiseP: 0.36, callP: 0.64),
              'AQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'AJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'ATs':ProgressInfo(raiseP: 0.12, callP: 0.88),
              'A9s':ProgressInfo(raiseP: 0.12, callP: 0.88),
              'A8s':ProgressInfo(raiseP: 0.00, callP: 0.73),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.39),

              'A5s':ProgressInfo(raiseP: 0.1, callP: 0.9),
              'A4s':ProgressInfo(raiseP: 0.1, callP: 0.7),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(raiseP: 0.0, callP: 0.7, allinP: 0.3),
              'KQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KJs':ProgressInfo(raiseP: 0.10, callP: 0.90),
              'KTs':ProgressInfo(raiseP: 0.12, callP: 0.75),
              'K9s':ProgressInfo(raiseP: 0.00, callP: 0.00),


              'AQo':ProgressInfo(raiseP: 0.1, callP: 0.15),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.77),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.00, callP: 0.80),



              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.00, callP: 0.35),
              'T8s':ProgressInfo(raiseP: 0.00, callP: 0.00),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 0.20),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 0.85, alreadyP: 0.5),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.7),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 0.8, alreadyP: 0.7),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.LJ) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.HJ:
            return {
              'AA' :ProgressInfo(raiseP: 1.00, callP: 0.00),
              'KK' :ProgressInfo(raiseP: 0.6, callP: 0.00, allinP: 0.4),
              'QQ' :ProgressInfo(raiseP: 0.51, callP: 0.49),
              'JJ' :ProgressInfo(raiseP: 0.38, callP: 0.62),
              'TT' :ProgressInfo(raiseP: 0.35, callP: 0.65),
              '99' :ProgressInfo(raiseP: 0.15, callP: 0.85),
              '88' :ProgressInfo(raiseP: 0.16, callP: 0.84),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.0),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 0.84),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.68),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.72),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.25),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.3),


              'AKs':ProgressInfo(raiseP: 1.00, callP: 0.00),
              'AQs':ProgressInfo(raiseP: 0.40, callP: 0.60),
              'AJs':ProgressInfo(raiseP: 0.12, callP: 0.88),
              'ATs':ProgressInfo(raiseP: 0.59, callP: 0.41),
              'A9s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              'A8s':ProgressInfo(raiseP: 0.20, callP: 0.60),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(raiseP: 0.18, callP: 0.82),
              'A4s':ProgressInfo(raiseP: 0.00, callP: 0.65),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(raiseP: 0.1, callP: 0.3, allinP: 0.6),
              'KQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KJs':ProgressInfo(raiseP: 0.72, callP: 0.28),
              'KTs':ProgressInfo(raiseP: 0.41, callP: 0.59),
              'K9s':ProgressInfo(raiseP: 0.00, callP: 0.26),
              'K6s':ProgressInfo(raiseP: 0.00, callP: 0.5, alreadyP: 0.5),


              'AQo':ProgressInfo(raiseP: 0.56, callP: 0.44),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.12, callP: 0.88),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 1.00),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.17, callP: 0.83),
              'J9s':ProgressInfo(raiseP: 0.00, callP: 0.18),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.21, callP: 0.79),
              'T8s':ProgressInfo(raiseP: 0.00, callP: 0.17),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 0.46),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.4),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.6),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.65),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.CO:
            return {
              'AA' :ProgressInfo(raiseP: 1.00, callP: 0.00),
              'KK' :ProgressInfo(raiseP: 0.7, callP: 0.00, allinP: 0.3),
              'QQ' :ProgressInfo(raiseP: 0.4, callP: 0.45, allinP: 0.15),
              'JJ' :ProgressInfo(raiseP: 0.37, callP: 0.63),
              'TT' :ProgressInfo(raiseP: 0.39, callP: 0.61),
              '99' :ProgressInfo(raiseP: 0.20, callP: 0.80),
              '88' :ProgressInfo(raiseP: 0.15, callP: 0.85),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.0),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 0.89),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.64),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.83),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.25),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.3),


              'AKs':ProgressInfo(raiseP: 1.00, callP: 0.00),
              'AQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'AJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'ATs':ProgressInfo(raiseP: 0.52, callP: 0.48),
              'A9s':ProgressInfo(raiseP: 0.14, callP: 0.86),
              'A8s':ProgressInfo(raiseP: 0.20, callP: 0.80),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.24),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(raiseP: 0.28, callP: 0.72),
              'A4s':ProgressInfo(raiseP: 0.00, callP: 0.8),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.1),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(raiseP: 0.15, callP: 0.20, allinP: 0.65),
              'KQs':ProgressInfo(raiseP: 0.12, callP: 0.88),
              'KJs':ProgressInfo(raiseP: 0.47, callP: 0.53),
              'KTs':ProgressInfo(raiseP: 0.49, callP: 0.51),
              'K9s':ProgressInfo(raiseP: 0.11, callP: 0.52),
              'K6s':ProgressInfo(raiseP: 0.00, callP: 0.75, alreadyP: 0.5),


              'AQo':ProgressInfo(raiseP: 0.58, callP: 0.42),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.1 ),
              'QJs':ProgressInfo(raiseP: 0.1, callP: 0.9),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 1.00),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.26, callP: 0.74),
              'J9s':ProgressInfo(raiseP: 0.00, callP: 0.22),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.18, callP: 0.82),
              'T8s':ProgressInfo(raiseP: 0.00, callP: 0.17),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 0.61),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.4),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.6),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.65),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.BTN:
            return {
              'AA' :ProgressInfo(raiseP: 1.00, callP: 0.00),
              'KK' :ProgressInfo(raiseP: 0.65, callP: 0.00, allinP: 0.35),
              'QQ' :ProgressInfo(raiseP: 0.52, callP: 0.48),
              'JJ' :ProgressInfo(raiseP: 0.35, callP: 0.65),
              'TT' :ProgressInfo(raiseP: 0.35, callP: 0.65),
              '99' :ProgressInfo(raiseP: 0.24, callP: 0.76),
              '88' :ProgressInfo(raiseP: 0.10, callP: 0.90),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.0),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 0.89),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.70),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.83),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.25),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.3),


              'AKs':ProgressInfo(raiseP: 1.00, callP: 0.00),
              'AQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'AJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'ATs':ProgressInfo(raiseP: 0.36, callP: 0.64),
              'A9s':ProgressInfo(raiseP: 0.29, callP: 0.71),
              'A8s':ProgressInfo(raiseP: 0.15, callP: 0.85),
              'A7s':ProgressInfo(raiseP: 0.14, callP: 0.48),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.28),
              'A5s':ProgressInfo(raiseP: 0.18, callP: 0.82),
              'A4s':ProgressInfo(raiseP: 0.13, callP: 0.87),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.61),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(raiseP: 0.2, callP: 0.15, allinP: 0.65),
              'KQs':ProgressInfo(raiseP: 0.14, callP: 0.86),
              'KJs':ProgressInfo(raiseP: 0.27, callP: 0.73),
              'KTs':ProgressInfo(raiseP: 0.52, callP: 0.48),
              'K9s':ProgressInfo(raiseP: 0.29, callP: 0.59),
              'K8s':ProgressInfo(raiseP: 0.00, callP: 0.17),
              'K6s':ProgressInfo(raiseP: 0.00, callP: 0.8, alreadyP: 0.5),


              'AQo':ProgressInfo(raiseP: 0.62, callP: 0.38),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.27),
              'QJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 1.00),


              'AJo':ProgressInfo(raiseP: 0.11, callP: 0.10),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.35, callP: 0.65),
              'J9s':ProgressInfo(raiseP: 0.00, callP: 0.30),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.17, callP: 0.83),
              'T8s':ProgressInfo(raiseP: 0.00, callP: 0.00),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 0.63),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.4),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.6),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.65),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.SB:
            return {
              'AA' :ProgressInfo(raiseP: 0.75, callP: 0.25),
              'KK' :ProgressInfo(raiseP: 0.25, callP: 0.5, allinP: 0.25),
              'QQ' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              'JJ' :ProgressInfo(raiseP: 0.13, callP: 0.87),
              'TT' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '99' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '88' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 0.81),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 0.66),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.39),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.39),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.55, alreadyP: 0.25),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.7, alreadyP: 0.3),


              'AKs':ProgressInfo(raiseP: 0.57, callP: 0.43),
              'AQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'AJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'ATs':ProgressInfo(raiseP: 0.21, callP: 0.79),
              'A9s':ProgressInfo(raiseP: 0.00, callP: 0.58),
              'A8s':ProgressInfo(raiseP: 0.00, callP: 0.48),
              'A7s':ProgressInfo(raiseP: 0.00, callP: 0.31),

              'A5s':ProgressInfo(raiseP: 0.14, callP: 0.86),
              'A4s':ProgressInfo(raiseP: 0.13, callP: 0.87),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.26),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(raiseP: 0.0, callP: 0.7, allinP: 0.3),
              'KQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KTs':ProgressInfo(raiseP: 0.14, callP: 0.86),
              'K9s':ProgressInfo(raiseP: 0.13, callP: 0.00),
              'K8s':ProgressInfo(raiseP: 0.00, callP: 0.00),
              'K6s':ProgressInfo(raiseP: 0.00, callP: 0.75, alreadyP: 0.5),


              'AQo':ProgressInfo(raiseP: 0.23, callP: 0.77),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0),
              'QJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 1.00),


              'AJo':ProgressInfo(raiseP: 0.00, callP: 0.00),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'J9s':ProgressInfo(raiseP: 0.00, callP: 0.17),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.00, callP: 0.86),
              'T8s':ProgressInfo(raiseP: 0.00, callP: 0.00),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 0.51),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 0.85, alreadyP: 0.4),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.6),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.65),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.BB:
            return {
              'AA' :ProgressInfo(raiseP: 0.50, callP: 0.50),
              'KK' :ProgressInfo(raiseP: 0.2, callP: 0.50, allinP: 0.3),
              'QQ' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              'JJ' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              'TT' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '99' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '88' :ProgressInfo(raiseP: 0.00, callP: 0.88),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 0.81),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 0.71),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.40),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.36),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.3, alreadyP: 0.25),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.15, alreadyP: 0.3),


              'AKs':ProgressInfo(raiseP: 0.34, callP: 0.66),
              'AQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'AJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'ATs':ProgressInfo(raiseP: 0.11, callP: 0.89),
              'A9s':ProgressInfo(raiseP: 0.15, callP: 0.8),
              'A8s':ProgressInfo(raiseP: 0.00, callP: 0.86),
              'A7s':ProgressInfo(raiseP: 0.1, callP: 0.45),
              'A5s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A4s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.34),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(raiseP: 0.0, callP: 0.55, allinP: 0.45),
              'KQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KTs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'K9s':ProgressInfo(raiseP: 0.00, callP: 0.30),
              'K8s':ProgressInfo(raiseP: 0.00, callP: 0.00),
              'K6s':ProgressInfo(raiseP: 0.00, callP: 0.2, alreadyP: 0.5),


              'AQo':ProgressInfo(raiseP: 0.11, callP: 0.40),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0),
              'QJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 1.00),


              'AJo':ProgressInfo(raiseP: 0.00, callP: 0.00),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'J9s':ProgressInfo(raiseP: 0.00, callP: 0.12),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.00, callP: 0.46),
              'T8s':ProgressInfo(raiseP: 0.00, callP: 0.00),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 0.18),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.4),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.6),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 0.6, alreadyP: 0.65),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
        }
      }
      else if (tournaSelection.myTournaPosition == TournaPosition.HJ) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.CO:
            return {
              'AA' :ProgressInfo(raiseP: 1.00, callP: 0.00),
              'KK' :ProgressInfo(raiseP: 1.00, callP: 0.00),
              'QQ' :ProgressInfo(raiseP: 0.65, callP: 0.20, allinP: 0.15),
              'JJ' :ProgressInfo(raiseP: 0.45, callP: 0.55),
              'TT' :ProgressInfo(raiseP: 0.49, callP: 0.51),
              '99' :ProgressInfo(raiseP: 0.21, callP: 0.79),
              '88' :ProgressInfo(raiseP: 0.1, callP: 0.9),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.0),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 1.00),


              'AKs':ProgressInfo(raiseP: 1.00, callP: 0.00),
              'AQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'AJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'ATs':ProgressInfo(raiseP: 0.38, callP: 0.62),
              'A9s':ProgressInfo(raiseP: 0.34, callP: 0.66),
              'A8s':ProgressInfo(raiseP: 0.34, callP: 0.66),
              'A7s':ProgressInfo(raiseP: 0.31, callP: 0.69),
              'A6s':ProgressInfo(raiseP: 0.1, callP: 0.2),
              'A5s':ProgressInfo(raiseP: 0.36, callP: 0.64),
              'A4s':ProgressInfo(raiseP: 0.20, callP: 0.80),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.55),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(raiseP: 0.45, callP: 0.25, allinP: 0.3),
              'KQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KJs':ProgressInfo(raiseP: 0.39, callP: 0.61),
              'KTs':ProgressInfo(raiseP: 0.68, callP: 0.32),
              'K9s':ProgressInfo(raiseP: 0.41, callP: 0.59),
              'K8s':ProgressInfo(raiseP: 0.0, callP: 0.4),
              'K6s':ProgressInfo(raiseP: 0.1, callP: 0.3),


              'AQo':ProgressInfo(raiseP: 0.61, callP: 0.39),
              'KQo':ProgressInfo(raiseP: 0.14, callP: 0.38),
              'QJs':ProgressInfo(raiseP: 0.14, callP: 0.86),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 1.00),


              'AJo':ProgressInfo(raiseP: 0.23, callP: 0.18),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.32, callP: 0.68),
              'J9s':ProgressInfo(raiseP: 0.00, callP: 0.64),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.20, callP: 0.80),
              'T8s':ProgressInfo(raiseP: 0.00, callP: 0.38),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 0.72),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.00),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 0.82),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 0.77),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.5),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.BTN:
            return {
              'AA' :ProgressInfo(raiseP: 1.00, callP: 0.00),
              'KK' :ProgressInfo(raiseP: 1.00, callP: 0.00),
              'QQ' :ProgressInfo(raiseP: 0.65, callP: 0.20, allinP: 0.15),
              'JJ' :ProgressInfo(raiseP: 0.41, callP: 0.59),
              'TT' :ProgressInfo(raiseP: 0.42, callP: 0.58),
              '99' :ProgressInfo(raiseP: 0.18, callP: 0.82),
              '88' :ProgressInfo(raiseP: 0.15, callP: 0.85),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.0),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 1.00),


              'AKs':ProgressInfo(raiseP: 1.00, callP: 0.00),
              'AQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'AJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'ATs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A9s':ProgressInfo(raiseP: 0.35, callP: 0.65),
              'A8s':ProgressInfo(raiseP: 0.55, callP: 0.45),
              'A7s':ProgressInfo(raiseP: 0.37, callP: 0.63),
              'A6s':ProgressInfo(raiseP: 0.24, callP: 0.76),
              'A5s':ProgressInfo(raiseP: 0.31, callP: 0.69),
              'A4s':ProgressInfo(raiseP: 0.1, callP: 0.9),
              'A3s':ProgressInfo(raiseP: 0.1 , callP: 0.9),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.25),

              'AKo':ProgressInfo(raiseP: 0.5, callP: 0.1, allinP: 0.4),
              'KQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KTs':ProgressInfo(raiseP: 0.55, callP: 0.45),
              'K9s':ProgressInfo(raiseP: 0.61, callP: 0.39),
              'K8s':ProgressInfo(raiseP: 0.00, callP: 0.71),
              'K7s':ProgressInfo(raiseP: 0.1, callP: 0.3),
              'K6s':ProgressInfo(raiseP: 0.14, callP: 0.43),


              'AQo':ProgressInfo(raiseP: 0.64, callP: 0.36),
              'KQo':ProgressInfo(raiseP: 0.20, callP: 0.60),
              'QJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 1.00),


              'AJo':ProgressInfo(raiseP: 0.28, callP: 0.33),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.32, callP: 0.68),
              'J9s':ProgressInfo(raiseP: 0.1, callP: 0.5),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.27, callP: 0.73),
              'T8s':ProgressInfo(raiseP: 0.00, callP: 0.52),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 0.83),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.00),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.00),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.00),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.5),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.SB:
            return {
              'AA' :ProgressInfo(raiseP: 0.86, callP: 0.14),
              'KK' :ProgressInfo(raiseP: 0.51, callP: 0.49),
              'QQ' :ProgressInfo(raiseP: 0.12, callP: 0.88),
              'JJ' :ProgressInfo(raiseP: 0.18, callP: 0.82),
              'TT' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '99' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '88' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.0),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.43),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.47),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.30),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.23),


              'AKs':ProgressInfo(raiseP: 0.67, callP: 0.33),
              'AQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'AJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'ATs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A9s':ProgressInfo(raiseP: 0.14, callP: 0.86),
              'A8s':ProgressInfo(raiseP: 0.10, callP: 0.90),
              'A7s':ProgressInfo(raiseP: 0.10, callP: 0.50),
              'A6s':ProgressInfo(raiseP: 0.00, callP: 0.00),
              'A5s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A4s':ProgressInfo(raiseP: 0.1, callP: 0.9),
              'A3s':ProgressInfo(raiseP: 0.14, callP: 0.86),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.00),

              'AKo':ProgressInfo(raiseP: 0.24, callP: 0.76),
              'KQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KTs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'K9s':ProgressInfo(raiseP: 0.26, callP: 0.51),
              'K8s':ProgressInfo(raiseP: 0.00, callP: 0.00),
              'K7s':ProgressInfo(raiseP: 0.00, callP: 0.00),
              'K6s':ProgressInfo(raiseP: 0.1, callP: 0.6),


              'AQo':ProgressInfo(raiseP: 0.23, callP: 0.77),
              'KQo':ProgressInfo(raiseP: 0.14, callP: 0.46),
              'QJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 1.00),


              'AJo':ProgressInfo(raiseP: 0.18, callP: 0.20),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'J9s':ProgressInfo(raiseP: 0.1, callP: 0.9),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.1, callP: 0.9),
              'T8s':ProgressInfo(raiseP: 0.14, callP: 0.30),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 0.51),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 0.65),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 0.70),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 0.61),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.5),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.BB:
            return {
              'AA' :ProgressInfo(raiseP: 0.68, callP: 0.32),
              'KK' :ProgressInfo(raiseP: 0.45, callP: 0.55),
              'QQ' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              'JJ' :ProgressInfo(raiseP: 0.14, callP: 0.86),
              'TT' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '99' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '88' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.0),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 0.83),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.39),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.39),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'AKs':ProgressInfo(raiseP: 0.31, callP: 0.69),
              'AQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'AJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'ATs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A9s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A8s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A7s':ProgressInfo(raiseP: 0.21, callP: 0.79),
              'A6s':ProgressInfo(raiseP: 0.00, callP: 0.33),
              'A5s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A4s':ProgressInfo(raiseP: 0.15, callP: 0.85),
              'A3s':ProgressInfo(raiseP: 0.21, callP: 0.64),
              'A2s':ProgressInfo(raiseP: 0.1 , callP: 0.00),

              'AKo':ProgressInfo(raiseP: 0.15, callP: 0.50, allinP: 0.35),
              'KQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KTs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'K9s':ProgressInfo(raiseP: 0.16, callP: 0.61),
              'K8s':ProgressInfo(raiseP: 0.00, callP: 0.15),
              'K7s':ProgressInfo(raiseP: 0.00, callP: 0.00),
              'K6s':ProgressInfo(raiseP: 0.15, callP: 0.67),


              'AQo':ProgressInfo(raiseP: 0.23, callP: 0.77),
              'KQo':ProgressInfo(raiseP: 0.00, callP: 0.32),
              'QJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              'Q9s':ProgressInfo(raiseP: 0.0 , callP: 0.13),


              'AJo':ProgressInfo(raiseP: 0.00, callP: 0.00),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'J9s':ProgressInfo(raiseP: 0.00, callP: 1.00),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'T8s':ProgressInfo(raiseP: 0.00, callP: 0.15),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 0.79),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 0.59),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 0.35),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 0.9, alreadyP: 0.5),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.CO) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.BTN:
            return {
              'AA' :ProgressInfo(raiseP: 1.00, callP: 0.00),
              'KK' :ProgressInfo(raiseP: 1.00, callP: 0.00),
              'QQ' :ProgressInfo(raiseP: 1.00, callP: 0.00),
              'JJ' :ProgressInfo(raiseP: 0.6, callP: 0.25, allinP: 0.15),
              'TT' :ProgressInfo(raiseP: 0.38, callP: 0.62),
              '99' :ProgressInfo(raiseP: 0.34, callP: 0.66),
              '88' :ProgressInfo(raiseP: 0.21, callP: 0.79),
              '77' :ProgressInfo(raiseP: 0.15, callP: 0.85),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 1.00),


              'AKs':ProgressInfo(raiseP: 1.00, callP: 0.00),
              'AQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'AJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'ATs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A9s':ProgressInfo(raiseP: 0.23, callP: 0.77),
              'A8s':ProgressInfo(raiseP: 0.50, callP: 0.50),
              'A7s':ProgressInfo(raiseP: 0.36, callP: 0.64),
              'A6s':ProgressInfo(raiseP: 0.32, callP: 0.68),
              'A5s':ProgressInfo(raiseP: 0.39, callP: 0.61),
              'A4s':ProgressInfo(raiseP: 0.1, callP: 0.9),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 1.00),

              'AKo':ProgressInfo(raiseP: 0.75, callP: 0.00, allinP: 0.25),
              'KQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KJs':ProgressInfo(raiseP: 0.18, callP: 0.82),
              'KTs':ProgressInfo(raiseP: 0.33, callP: 0.67),
              'K9s':ProgressInfo(raiseP: 0.82, callP: 0.18),
              'K8s':ProgressInfo(raiseP: 0.27, callP: 0.73),
              'K7s':ProgressInfo(raiseP: 0.15, callP: 0.85),
              'K6s':ProgressInfo(raiseP: 0.15, callP: 0.85),
              'K5s':ProgressInfo(raiseP: 0.00, callP: 0.52),


              'AQo':ProgressInfo(raiseP: 0.78, callP: 0.22),
              'KQo':ProgressInfo(raiseP: 0.28, callP: 0.72),
              'QJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              'Q9s':ProgressInfo(raiseP: 0.1 , callP: 0.9),


              'AJo':ProgressInfo(raiseP: 0.45, callP: 0.55),
              'KJo':ProgressInfo(raiseP: 0.1 , callP: 0.4),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.41, callP: 0.59),
              'J9s':ProgressInfo(raiseP: 0.28, callP: 0.72),
              'J8s':ProgressInfo(raiseP: 0.0, callP: 0.1),


              'ATo':ProgressInfo(raiseP: 0.1 , callP: 0.3),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.33, callP: 0.67),
              'T8s':ProgressInfo(raiseP: 0.1, callP: 0.9),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.1 , callP: 0.9),
              '97s':ProgressInfo(raiseP: 0.0 , callP: 0.40),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '86s':ProgressInfo(raiseP: 0.0 , callP: 0.42),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.00),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.00),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.SB:
            return {
              'AA' :ProgressInfo(raiseP: 0.81, callP: 0.19),
              'KK' :ProgressInfo(raiseP: 0.66, callP: 0.34),
              'QQ' :ProgressInfo(raiseP: 0.12, callP: 0.88),
              'JJ' :ProgressInfo(raiseP: 0.20, callP: 0.80),
              'TT' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '99' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '88' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.0),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.82),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.53),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.38),


              'AKs':ProgressInfo(raiseP: 0.82, callP: 0.18),
              'AQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'AJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'ATs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A9s':ProgressInfo(raiseP: 0.10, callP: 0.90),
              'A8s':ProgressInfo(raiseP: 0.0, callP: 1.00),
              'A7s':ProgressInfo(raiseP: 0.10, callP: 0.90),
              'A6s':ProgressInfo(raiseP: 0.14, callP: 0.86),
              'A5s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A4s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A3s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A2s':ProgressInfo(raiseP: 0.18, callP: 0.71),

              'AKo':ProgressInfo(raiseP: 0.32, callP: 0.68),
              'KQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KTs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'K9s':ProgressInfo(raiseP: 0.23, callP: 0.77),
              'K8s':ProgressInfo(raiseP: 0.00, callP: 0.50),
              'K7s':ProgressInfo(raiseP: 0.00, callP: 0.48),
              'K6s':ProgressInfo(raiseP: 0.1, callP: 0.9),
              'K5s':ProgressInfo(raiseP: 0.00, callP: 0.40),


              'AQo':ProgressInfo(raiseP: 0.10, callP: 0.90),
              'KQo':ProgressInfo(raiseP: 0.1, callP: 0.9),
              'QJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              'Q9s':ProgressInfo(raiseP: 0.11, callP: 0.89),
              'Q8s':ProgressInfo(raiseP: 0.20, callP: 0.00),


              'AJo':ProgressInfo(raiseP: 0.25, callP: 0.75),
              'KJo':ProgressInfo(raiseP: 0.1 , callP: 0.35),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'J9s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'J8s':ProgressInfo(raiseP: 0.00, callP: 0.60),


              'ATo':ProgressInfo(raiseP: 0.32, callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'T8s':ProgressInfo(raiseP: 0.00, callP: 1.00),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '97s':ProgressInfo(raiseP: 0.0 , callP: 0.74),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '86s':ProgressInfo(raiseP: 0.0 , callP: 0.26),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.00),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.00),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.BB:
            return {
              'AA' :ProgressInfo(raiseP: 0.63, callP: 0.37),
              'KK' :ProgressInfo(raiseP: 0.61, callP: 0.39),
              'QQ' :ProgressInfo(raiseP: 0.12, callP: 0.88),
              'JJ' :ProgressInfo(raiseP: 0.14, callP: 0.86),
              'TT' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '99' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '88' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.0),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.64),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.46),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.12),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'AKs':ProgressInfo(raiseP: 0.57, callP: 0.43),
              'AQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'AJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'ATs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A9s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A8s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A7s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A6s':ProgressInfo(raiseP: 0.14, callP: 0.86),
              'A5s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A4s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A3s':ProgressInfo(raiseP: 0.13, callP: 0.87),
              'A2s':ProgressInfo(raiseP: 0.25, callP: 0.39),

              'AKo':ProgressInfo(raiseP: 0.15, callP: 0.40, allinP: 0.35),
              'KQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KTs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'K9s':ProgressInfo(raiseP: 0.15, callP: 0.85),
              'K8s':ProgressInfo(raiseP: 0.00, callP: 0.40),
              'K7s':ProgressInfo(raiseP: 0.00, callP: 0.4),
              'K6s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'K5s':ProgressInfo(raiseP: 0.18, callP: 0.13),


              'AQo':ProgressInfo(raiseP: 0.19, callP: 0.81),
              'KQo':ProgressInfo(raiseP: 0.10, callP: 0.90),
              'QJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              'Q9s':ProgressInfo(raiseP: 0.1, callP: 0.9),
              'Q8s':ProgressInfo(raiseP: 0.00, callP: 0.00),


              'AJo':ProgressInfo(raiseP: 0.17, callP: 0.49),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.29),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'J9s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'J8s':ProgressInfo(raiseP: 0.1, callP: 0.3),


              'ATo':ProgressInfo(raiseP: 0.00, callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'T8s':ProgressInfo(raiseP: 0.00, callP: 1.00),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 0.75),
              '97s':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 0.81),
              '86s':ProgressInfo(raiseP: 0.0 , callP: 0.0),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 0.94),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 0.68),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 0.85),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.BTN) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.SB:
            return {
              'AA' :ProgressInfo(raiseP: 0.82, callP: 0.18),
              'KK' :ProgressInfo(raiseP: 0.89, callP: 0.11),
              'QQ' :ProgressInfo(raiseP: 0.52, callP: 0.48),
              'JJ' :ProgressInfo(raiseP: 0.30, callP: 0.70),
              'TT' :ProgressInfo(raiseP: 0.20, callP: 0.80),
              '99' :ProgressInfo(raiseP: 0.1, callP: 0.6, allinP: 0.3),
              '88' :ProgressInfo(raiseP: 0.13, callP: 0.87),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.0),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 1.00),


              'AKs':ProgressInfo(raiseP: 1.00, callP: 0.0),
              'AQs':ProgressInfo(raiseP: 0.18, callP: 0.82),
              'AJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'ATs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A9s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A8s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A7s':ProgressInfo(raiseP: 0.0, callP: 1.00),
              'A6s':ProgressInfo(raiseP: 0.1, callP: 0.9),
              'A5s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A4s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A3s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A2s':ProgressInfo(raiseP: 0.11, callP: 0.89),

              'AKo':ProgressInfo(raiseP: 0.55, callP: 0.15, allinP: 0.3),
              'KQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KTs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'K9s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'K8s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'K7s':ProgressInfo(raiseP: 0.12, callP: 0.88),
              'K6s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'K5s':ProgressInfo(raiseP: 0.17, callP: 0.83),
              'K4s':ProgressInfo(raiseP: 0.18, callP: 0.82),


              'AQo':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KQo':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'QJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              'Q9s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'Q8s':ProgressInfo(raiseP: 0.32, callP: 0.68),
              'Q6s':ProgressInfo(raiseP: 0.13, callP: 0.87),


              'AJo':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KJo':ProgressInfo(raiseP: 0.13, callP: 0.87),
              'QJo':ProgressInfo(raiseP: 0.25, callP: 0.60, allinP: 0.15),
              'JTs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'J9s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'J8s':ProgressInfo(raiseP: 0.30, callP: 0.70),


              'ATo':ProgressInfo(raiseP: 0.22, callP: 0.78),
              'KTo':ProgressInfo(raiseP: 0.14, callP: 0.37),
              'QTo':ProgressInfo(raiseP: 0.14, callP: 0.23),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.20),
              'T9s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'T8s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'T7s':ProgressInfo(raiseP: 0.1, callP: 0.9),


              'A9o':ProgressInfo(raiseP: 0.31, callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '97s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '96s':ProgressInfo(raiseP: 0.0 , callP: 0.50),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '86s':ProgressInfo(raiseP: 0.0 , callP: 1.00),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '75s':ProgressInfo(raiseP: 0.22, callP: 0.78),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '64s':ProgressInfo(raiseP: 0.0 , callP: 0.24),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.68),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.BB:
            return {
              'AA' :ProgressInfo(raiseP: 0.67, callP: 0.33),
              'KK' :ProgressInfo(raiseP: 0.77, callP: 0.23),
              'QQ' :ProgressInfo(raiseP: 0.40, callP: 0.60),
              'JJ' :ProgressInfo(raiseP: 0.28, callP: 0.72),
              'TT' :ProgressInfo(raiseP: 0.18, callP: 0.82),
              '99' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '88' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.0),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.34),


              'AKs':ProgressInfo(raiseP: 1.00, callP: 0.0),
              'AQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'AJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'ATs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A9s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A8s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A7s':ProgressInfo(raiseP: 0.0, callP: 1.00),
              'A6s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A5s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A4s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A3s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'A2s':ProgressInfo(raiseP: 0.13, callP: 0.87),

              'AKo':ProgressInfo(raiseP: 0.4, callP: 0.10, allinP: 0.5),
              'KQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KTs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'K9s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'K8s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'K7s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'K6s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'K5s':ProgressInfo(raiseP: 0.13, callP: 0.87),
              'K4s':ProgressInfo(raiseP: 0.19, callP: 0.81),
              'K3s':ProgressInfo(raiseP: 0.19, callP: 0.00),


              'AQo':ProgressInfo(raiseP: 0.12, callP: 0.88),
              'KQo':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'QJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              'Q9s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'Q8s':ProgressInfo(raiseP: 0.16, callP: 0.84),
              'Q7s':ProgressInfo(raiseP: 0.0, callP: 0.3),
              'Q6s':ProgressInfo(raiseP: 0.0, callP: 0.5),
              'Q5s':ProgressInfo(raiseP: 0.20, callP: 0.00),


              'AJo':ProgressInfo(raiseP: 0.16, callP: 0.84),
              'KJo':ProgressInfo(raiseP: 0.13, callP: 0.87),
              'QJo':ProgressInfo(raiseP: 0.17, callP: 0.47),
              'JTs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'J9s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'J8s':ProgressInfo(raiseP: 0.13, callP: 0.87),
              'J7s':ProgressInfo(raiseP: 0.1, callP: 0.0),


              'ATo':ProgressInfo(raiseP: 0.15, callP: 0.65, allinP: 0.2),
              'KTo':ProgressInfo(raiseP: 0.09, callP: 0.51),
              'QTo':ProgressInfo(raiseP: 0.13, callP: 0.27),
              'JTo':ProgressInfo(raiseP: 0.12, callP: 0.49),
              'T9s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'T8s':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'T7s':ProgressInfo(raiseP: 0.1, callP: 0.9),


              'A9o':ProgressInfo(raiseP: 0.14, callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '97s':ProgressInfo(raiseP: 0.0 , callP: 1.00),



              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '86s':ProgressInfo(raiseP: 0.0 , callP: 1.00),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '75s':ProgressInfo(raiseP: 0.00, callP: 0.22),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '64s':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.20),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.SB) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.BB:
            return {
              'AA' :ProgressInfo(raiseP: 1.0, callP: 0.0, alreadyP: 0.7),
              'KK' :ProgressInfo(raiseP: 1.0, callP: 0.0, alreadyP: 0.75),
              'QQ' :ProgressInfo(raiseP: 1.0, callP: 0.0, alreadyP: 0.75),
              'JJ' :ProgressInfo(raiseP: 0.5, callP: 0.5, alreadyP: 0.7),
              'TT' :ProgressInfo(raiseP: 0.4, callP: 0.6, alreadyP: 0.7),
              '99' :ProgressInfo(raiseP: 0.15, callP: 0.85, alreadyP: 0.75),
              '88' :ProgressInfo(raiseP: 0.0, callP: 1.0, alreadyP: 0.8),
              '77' :ProgressInfo(raiseP: 0.0, callP: 1.0, alreadyP: 0.85),
              '66' :ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
              '55' :ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
              '44' :ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
              '33' :ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
              '22' :ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),

              'AKs':ProgressInfo(raiseP: 1.0, callP: 0.0, alreadyP: 0.5),
              'AQs':ProgressInfo(raiseP: 1.0, callP: 0.0, alreadyP: 0.75),
              'AJs':ProgressInfo(raiseP: 0.0, callP: 1.0, alreadyP: 0.4),
              'ATs':ProgressInfo(raiseP: 0.0, callP: 1.0, alreadyP: 0.35),
              'A9s':ProgressInfo(raiseP: 0.0, callP: 1.0, alreadyP: 0.5),
              'A8s':ProgressInfo(raiseP: 0.0, callP: 1.0, alreadyP: 0.55),
              'A7s':ProgressInfo(raiseP: 0.0, callP: 1.0, alreadyP: 0.7),
              'A6s':ProgressInfo(raiseP: 0.0, callP: 1.0, alreadyP: 0.9),
              'A5s':ProgressInfo(allinP: 0.1, callP: 0.9, alreadyP: 0.65),
              'A4s':ProgressInfo(allinP: 0.3, callP: 0.7, alreadyP: 0.85),
              'A3s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
              'A2s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),

              'AKo':ProgressInfo(raiseP: 0.7, allinP: 0.3, alreadyP: 0.8),
              'KQs':ProgressInfo(raiseP: 0.0, callP: 1.0, alreadyP: 0.4),
              'KJs':ProgressInfo(raiseP: 0.0, callP: 1.0, alreadyP: 0.4),
              'KTs':ProgressInfo(raiseP: 0.0, callP: 1.0, alreadyP: 0.5),
              'K9s':ProgressInfo(raiseP: 0.0, callP: 1.0, alreadyP: 0.8),
              'K8s':ProgressInfo(raiseP: 0.0, callP: 1.0, alreadyP: 0.8),
              'K7s':ProgressInfo(raiseP: 0.0, callP: 1.0, alreadyP: 0.85),
              'K6s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),

              'AQo':ProgressInfo(raiseP: 0.4, callP: 0.6, alreadyP: 0.7),
              'KQo':ProgressInfo(raiseP: 0.6, callP: 0.4, alreadyP: 0.85),
              'QJs':ProgressInfo(raiseP: 0.0, callP: 1.0, alreadyP: 0.4),
              'QTs':ProgressInfo(raiseP: 0.0, callP: 1.0, alreadyP: 0.5),
              'Q9s':ProgressInfo(raiseP: 0.0, callP: 1.0, alreadyP: 0.9),
              'Q8s':ProgressInfo(raiseP: 0.0, callP: 1.0, alreadyP: 0.9),

              'AJo':ProgressInfo(raiseP: 1.0, callP: 0.0, alreadyP: 0.85),
              'KJo':ProgressInfo(raiseP: 0.85, callP: 0.15, alreadyP: 0.9),
              'QJo':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
              'JTs':ProgressInfo(raiseP: 0.0, callP: 1.0, alreadyP: 0.5),
              'J9s':ProgressInfo(raiseP: 0.0, callP: 1.0, alreadyP: 0.8),
              'J8s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),

              'ATo':ProgressInfo(raiseP: 1.0, callP: 0.0, alreadyP: 0.85),
              'A9o':ProgressInfo(raiseP: 0.2, callP: 0.0, alreadyP: 0.85),
              'A5o':ProgressInfo(raiseP: 0.5, callP: 0.0, alreadyP: 0.9),
              'KTo':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
              'QTo':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
              'JTo':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
              'T9s':ProgressInfo(raiseP: 0.0, callP: 1.0, alreadyP: 0.7),
              'T8s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.9),
              'T7s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),

              '98s':ProgressInfo(raiseP: 0.0, callP: 1.0, alreadyP: 0.9),
              '97s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
              '96s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),

              '87s':ProgressInfo(raiseP: 0.0, callP: 1.0, alreadyP: 0.85),
              '86s':ProgressInfo(raiseP: 0.0, callP: 1.0, alreadyP: 0.8),

              '76s':ProgressInfo(raiseP: 0.0, callP: 1.0, alreadyP: 0.8),
              '75s':ProgressInfo(raiseP: 0.0, callP: 0.5, alreadyP: 0.9),

              '65s':ProgressInfo(raiseP: 0.0, callP: 1.0, alreadyP: 0.75),
              '64s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),

              '54s':ProgressInfo(raiseP: 0.0, callP: 1.0, alreadyP: 0.75),
              '53s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
              '52s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),

              '43s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
              '42s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),


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
              'AA' :ProgressInfo(allinP: 0.19, callP: 0.81),
              'KK' :ProgressInfo(allinP: 0.30, callP: 0.70, alreadyP: 0.25),
              'QQ' :ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.48),
              'JJ' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.48),
              'TT' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.50),
              '99' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.65),
              '88' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.67),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.69),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.75),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'AKs':ProgressInfo(allinP: 0.90, callP: 0.10),
              'AQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.70),
              'AJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.47),
              'ATs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.37),
              'A9s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A8s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.55),
              'A4s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.74),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.52),
              'KQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.66),
              'KJs':ProgressInfo(raiseP: 0.0 , callP: 0.20, alreadyP: 0.34),


              'AQo':ProgressInfo(raiseP: 0.0 , callP: 0.27, alreadyP: 0.44),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 0.0 , alreadyP: 0.00),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.40, alreadyP: 0.66),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.76),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.0 , callP: 0.00, alreadyP: 0.00),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.80),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.89),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.LJ) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.UTG:
            return {
              'AA' :ProgressInfo(allinP: 0.18, callP: 0.82),
              'KK' :ProgressInfo(allinP: 0.30, callP: 0.70, alreadyP: 0.14),
              'QQ' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.50),
              'JJ' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.50),
              'TT' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.50),
              '99' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.65),
              '88' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.69),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.72),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.75),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.90),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'AKs':ProgressInfo(allinP: 1.0 , callP: 0.00),
              'AQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.62),
              'AJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.56),
              'ATs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.32),
              'A9s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A8s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.56),
              'A4s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.71),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.50),
              'KQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.67),
              'KJs':ProgressInfo(raiseP: 0.0 , callP: 0.50, alreadyP: 0.45),


              'AQo':ProgressInfo(raiseP: 0.0 , callP: 0.40, alreadyP: 0.49),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.25, alreadyP: 0.67),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.70),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.0 , callP: 0.60, alreadyP: 0.76),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.90),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.90),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.80),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.90),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.UTG1:
            return {
              'AA' :ProgressInfo(allinP: 0.22, callP: 0.78),
              'KK' :ProgressInfo(allinP: 0.30, callP: 0.70),
              'QQ' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.49),
              'JJ' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.47),
              'TT' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.49),
              '99' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.61),
              '88' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.64),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.66),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.73),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.84),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'AKs':ProgressInfo(allinP: 1.0 , callP: 0.00),
              'AQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.58),
              'AJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.58),
              'ATs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.33),
              'A9s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A8s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.48),
              'A4s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.69),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.45),
              'KQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.75),
              'KJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.44),
              'KTs':ProgressInfo(raiseP: 0.0 , callP: 0.20, alreadyP: 0.40),


              'AQo':ProgressInfo(raiseP: 0.0 , callP: 0.60, alreadyP: 0.41),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.54),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.74),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.92),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.79),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.HJ) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.UTG:
            return {
              'AA' :ProgressInfo(allinP: 0.20, callP: 0.80, alreadyP: 0.00),
              'KK' :ProgressInfo(allinP: 0.30, callP: 0.70, alreadyP: 0.15),
              'QQ' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.55),
              'JJ' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.55),
              'TT' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.55),
              '99' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.67),
              '88' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.74),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.77),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.81),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.00, alreadyP: 0.00),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.00, alreadyP: 0.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'AKs':ProgressInfo(allinP: 1.00, callP: 0.06),
              'AQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.59),
              'AJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.58),
              'ATs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.33),
              'A9s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A8s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.56),
              'A4s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.70),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.59),
              'KQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.80),
              'KJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.60),
              'KTs':ProgressInfo(raiseP: 0.0 , callP: 0.20, alreadyP: 0.50),


              'AQo':ProgressInfo(raiseP: 0.0 , callP: 0.50, alreadyP: 0.64),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 0.15, alreadyP: 0.60),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.30, alreadyP: 0.70),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.73),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.80),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.87),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.88),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.73),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.91),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.UTG1:
            return {
              'AA' :ProgressInfo(allinP: 0.20, callP: 0.82, alreadyP: 0.00),
              'KK' :ProgressInfo(allinP: 0.35, callP: 0.65, alreadyP: 0.00),
              'QQ' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.58),
              'JJ' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.52),
              'TT' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.54),
              '99' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.61),
              '88' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.69),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.72),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.78),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.84),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.00, alreadyP: 0.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'AKs':ProgressInfo(allinP: 1.00, callP: 0.00),
              'AQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.50),
              'AJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.62),
              'ATs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.32),
              'A9s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A8s':ProgressInfo(raiseP: 0.0 , callP: 0.20, alreadyP: 0.56),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.56),
              'A4s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.50),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.54),
              'KQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.85),
              'KJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.58),
              'KTs':ProgressInfo(raiseP: 0.0 , callP: 0.65, alreadyP: 0.51),


              'AQo':ProgressInfo(raiseP: 0.0 , callP: 0.70, alreadyP: 0.53),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 0.40, alreadyP: 0.52),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.57),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.76),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.94),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.84),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.92),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.74),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.95),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.LJ:
            return {
              'AA' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KK' :ProgressInfo(allinP: 0.80, callP: 0.20),
              'QQ' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.45),
              'JJ' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.52),
              'TT' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.56),
              '99' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.67),
              '88' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.69),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.73),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.75),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.77),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.79),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'AKs':ProgressInfo(allinP: 1.00, callP: 0.00),
              'AQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.37),
              'AJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.68),
              'ATs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.51),
              'A9s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'A8s':ProgressInfo(raiseP: 0.0 , callP: 0.55, alreadyP: 0.57),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.46),
              'A4s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.59),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.67),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(allinP: 0.40, callP: 0.60, alreadyP: 0.42),
              'KQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.76),
              'KJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.48),
              'KTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.49),
              'K9s':ProgressInfo(raiseP: 0.0 , callP: 0.20, alreadyP: 0.32),
              'K6s':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'AQo':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.48),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.58),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.40, alreadyP: 0.59),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.56),
              'J9s':ProgressInfo(raiseP: 0.0 , callP: 0.50, alreadyP: 0.53),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.66),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.88),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.88),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.91),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.71),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.91),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.CO) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.UTG:
            return {
              'AA' :ProgressInfo(allinP: 0.15, callP: 0.83, alreadyP: 0.00),
              'KK' :ProgressInfo(allinP: 0.33, callP: 0.58, alreadyP: 0.00),
              'QQ' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.58),
              'JJ' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.55),
              'TT' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.56),
              '99' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.67),
              '88' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.76),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.80),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.84),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'AKs':ProgressInfo(allinP: 1.0 , callP: 0.00),
              'AQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.43),
              'AJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.59),
              'ATs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.39),
              'A9s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A8s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.57),
              'A4s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.76),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.00, alreadyP: 0.00),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.64),
              'KQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.88),
              'KJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.55),


              'AQo':ProgressInfo(raiseP: 0.0 , callP: 0.75, alreadyP: 0.77),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 0.20, alreadyP: 0.70),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.50, alreadyP: 0.84),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.60),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.80),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.93),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.78),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.84),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.68),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.86),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.UTG1:
            return {
              'AA' :ProgressInfo(allinP: 0.11, callP: 0.89, alreadyP: 0.00),
              'KK' :ProgressInfo(allinP: 0.40, callP: 0.60, alreadyP: 0.00),
              'QQ' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.59),
              'JJ' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.53),
              'TT' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.54),
              '99' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.61),
              '88' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.71),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.77),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.84),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.00, alreadyP: 0.00),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'AKs':ProgressInfo(allinP: 1.00, callP: 0.00),
              'AQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.24),
              'AJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.74),
              'ATs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.40),
              'A9s':ProgressInfo(raiseP: 0.0 , callP: 0.25, alreadyP: 0.51),
              'A8s':ProgressInfo(raiseP: 0.0 , callP: 0.80, alreadyP: 0.66),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.52),
              'A4s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.78),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.57),
              'KQs':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'KJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.51),
              'KTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.64),


              'AQo':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.70),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 0.75, alreadyP: 0.64),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.53),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.79),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.87),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.76),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.81),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.66),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 1.0, alreadyP: 0.84),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.LJ:
            return {
              'AA' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KK' :ProgressInfo(allinP: 0.75, callP: 0.25, alreadyP: 0.00),
              'QQ' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.41),
              'JJ' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.52),
              'TT' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.60),
              '99' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.68),
              '88' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.72),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.76),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.80),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'AKs':ProgressInfo(allinP: 1.00, callP: 0.00, alreadyP: 0.00),
              'AQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.32),
              'AJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.67),
              'ATs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.64),
              'A9s':ProgressInfo(raiseP: 0.0 , callP: 0.75, alreadyP: 0.51),
              'A8s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.68),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.53),
              'A4s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.64),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.67),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.93),

              'AKo':ProgressInfo(allinP: 0.40, callP: 0.60, alreadyP: 0.00),
              'KQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.80),
              'KJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.44),
              'KTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.51),
              'K9s':ProgressInfo(raiseP: 0.0 , callP: 0.15, alreadyP: 0.42),
              'K6s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.78),


              'AQo':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.55),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.72),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.76),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.60),
              'J9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.63),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.70),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.89),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.70),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.80),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.57),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.77),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.HJ:
            return {
              'AA' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KK' :ProgressInfo(allinP: 0.85, callP: 0.16),
              'QQ' :ProgressInfo(allinP: 0.30, callP: 0.70, alreadyP: 0.35),
              'JJ' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.56),
              'TT' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.62),
              '99' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.75),
              '88' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.74),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.82),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.83),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.0),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'AKs':ProgressInfo(allinP: 0.30, callP: 0.70),
              'AQs':ProgressInfo(raiseP: 0.0 , callP: 0.90, alreadyP: 0.10),
              'AJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.88),
              'ATs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.91),
              'A9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.59),
              'A8s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.64),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.40, alreadyP: 0.55),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.54),
              'A4s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.66),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.71),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.00),

              'AKo':ProgressInfo(allinP: 0.85, callP: 0.15, alreadyP: 0.00),
              'KQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.74),
              'KJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.61),
              'KTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.70),
              'K9s':ProgressInfo(raiseP: 0.0 , callP: 0.40, alreadyP: 0.46),
              'K6s':ProgressInfo(raiseP: 0.0 , callP: 0.80, alreadyP: 0.71),


              'AQo':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.69),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.78),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.77),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.56),
              'J9s':ProgressInfo(raiseP: 0.0 , callP: 0.60, alreadyP: 0.50),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.55),
              'T8s':ProgressInfo(raiseP: 0.0 , callP: 0.40, alreadyP: 0.55),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.87),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.72),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.69),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.59),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.72),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.BTN) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.UTG:
            return {
              'AA' :ProgressInfo(allinP: 0.15, callP: 1.00),
              'KK' :ProgressInfo(allinP: 0.35, callP: 0.65, alreadyP: 0.07),
              'QQ' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.62),
              'JJ' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.57),
              'TT' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.57),
              '99' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.68),
              '88' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.76),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.85),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.91),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'AKs':ProgressInfo(allinP: 0.85, callP: 0.15),
              'AQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.47),
              'AJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.69),
              'ATs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.29),
              'A9s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A8s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.83),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.56),
              'A4s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.79),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.63),
              'KQs':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'KJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.53),
              'KTs':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'AQo':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.88),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 0.75, alreadyP: 0.62),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.56),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.84),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.92),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.76),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.76),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.69),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.77),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.UTG1:
            return {
              'AA' :ProgressInfo(allinP: 0.15, callP: 0.85),
              'KK' :ProgressInfo(allinP: 0.35, callP: 0.65),
              'QQ' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.63),
              'JJ' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.58),
              'TT' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.54),
              '99' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.65),
              '88' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.72),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.76),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.90),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'AKs':ProgressInfo(allinP: 1.00, callP: 0.00),
              'AQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.33),
              'AJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.76),
              'ATs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.44),
              'A9s':ProgressInfo(raiseP: 0.0 , callP: 0.55, alreadyP: 0.57),
              'A8s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.69),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.46),
              'A4s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.81),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.58),
              'KQs':ProgressInfo(raiseP: 0.0 , callP: 0.00, alreadyP: 0.00),
              'KJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.54),
              'KTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.59),


              'AQo':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.77),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 0.75, alreadyP: 0.73),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.35, alreadyP: 0.75),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.38),
              'J9s':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.78),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.87),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.80),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.77),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.65),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.81),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.LJ:
            return {
              'AA' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KK' :ProgressInfo(allinP: 0.75, callP: 0.25),
              'QQ' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.36),
              'JJ' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.53),
              'TT' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.59),
              '99' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.69),
              '88' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.76),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.81),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.87),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.94),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'AKs':ProgressInfo(allinP: 1.00, callP: 0.00),
              'AQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.22),
              'AJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.77),
              'ATs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.65),
              'A9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.59),
              'A8s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.69),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.75, alreadyP: 0.75),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.52),
              'A4s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.65),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.77),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(allinP: 0.40, callP: 0.60, alreadyP: 0.38),
              'KQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.81),
              'KJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.51),
              'KTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.48),
              'K9s':ProgressInfo(raiseP: 0.0 , callP: 0.60, alreadyP: 0.60),
              'K6s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.64),


              'AQo':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.61),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.69),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.82),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.41),
              'J9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.74),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.71),
              'T8s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.85),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.88),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.70),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.62),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.53),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.70),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.HJ:
            return {
              'AA' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KK' :ProgressInfo(allinP: 0.80, callP: 0.20),
              'QQ' :ProgressInfo(allinP: 0.25, callP: 0.75, alreadyP: 0.17),
              'JJ' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.60),
              'TT' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.64),
              '99' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.73),
              '88' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.74),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.82),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.87),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'AKs':ProgressInfo(allinP: 0.25, callP: 0.75),
              'AQs':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              'AJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.82),
              'ATs':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'A9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.86),
              'A8s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.60),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.63),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.77),
              'A5s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.55),
              'A4s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.64),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.78),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(allinP: 0.80, callP: 0.20, alreadyP: 0.16),
              'KQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.67),
              'KJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.72),
              'KTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.59),
              'K9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.65),
              'K6s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.71),


              'AQo':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.73),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.89),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.71),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.44),
              'J9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.58),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.64),
              'T8s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.67),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.85),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.69),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.59),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.56),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.64),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.CO:
            return {
              'AA' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KK' :ProgressInfo(allinP: 0.60, callP: 0.40),
              'QQ' :ProgressInfo(allinP: 0.60, callP: 0.40, alreadyP: 0.10),
              'JJ' :ProgressInfo(allinP: 0.50, callP: 0.50, alreadyP: 0.32),
              'TT' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.52),
              '99' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.69),
              '88' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.74),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.76),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.78),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.90),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'AKs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'AQs':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              'AJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.71),
              'ATs':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'A9s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'A8s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.81),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.63),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.67),
              'A5s':ProgressInfo(allinP: 0.45, callP: 0.55, alreadyP: 0.45),
              'A4s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.51),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.61),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.82),

              'AKo':ProgressInfo(allinP: 1.0 , callP: 0.00),
              'KQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.62),
              'KJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.46),
              'KTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.63),
              'K9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.63),
              'K8s':ProgressInfo(raiseP: 0.0 , callP: 0.30, alreadyP: 0.56),
              'K7s':ProgressInfo(raiseP: 0.0 , callP: 0.50, alreadyP: 0.62),
              'K6s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.63),
              'K5s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.74),


              'AQo':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.61),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.64),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.85),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.69),
              'Q9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.64),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.55),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.40),
              'J9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.62),
              'J8s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.76),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.54),
              'T8s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.58),
              'T7s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.74),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.67),
              '97s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.84),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.63),
              '86s':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.55),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.48),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.52),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.SB) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.UTG:
            return {
              'AA' :ProgressInfo(allinP: 0.2, callP: 0.20, raiseP: 0.6),
              'KK' :ProgressInfo(allinP: 0.4, callP: 0.45, raiseP: 0.15),
              'QQ' :ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.18),
              'JJ' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.44),
              'TT' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.69),
              '99' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.87),
              '88' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.89),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'AKs':ProgressInfo(allinP: 0.8, callP: 0.00, raiseP: 0.2),
              'AQs':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              'AJs':ProgressInfo(raiseP: 0.25, callP: 0.75),
              'ATs':ProgressInfo(raiseP: 0.15, callP: 0.65, alreadyP: 0.20),
              'A9s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A8s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(raiseP: 0.40, callP: 0.45, alreadyP: 0.63),
              'A4s':ProgressInfo(raiseP: 0.00, callP: 0.00),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(allinP: 0.20, callP: 0.80, alreadyP: 0.35),
              'KQs':ProgressInfo(raiseP: 0.0 , callP: 0.12),
              'KJs':ProgressInfo(raiseP: 0.0 , callP: 0.25, alreadyP: 0.20),
              'KTs':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'AQo':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.66),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.81),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.69),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.78),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.65),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.84),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.UTG1:
            return {
              'AA' :ProgressInfo(allinP: 0.1, callP: 0.30, raiseP: 0.6),
              'KK' :ProgressInfo(allinP: 0.55, callP: 0.30, raiseP: 0.15),
              'QQ' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              'JJ' :ProgressInfo(raiseP: 0.15, callP: 0.85, alreadyP: 0.41),
              'TT' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.56),
              '99' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.75),
              '88' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.89),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'AKs':ProgressInfo(allinP: 0.85, callP: 0.00, raiseP: 0.15),
              'AQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.09),
              'AJs':ProgressInfo(raiseP: 0.30, callP: 0.70, alreadyP: 0.10),
              'ATs':ProgressInfo(raiseP: 0.11, callP: 0.80, alreadyP: 0.00),
              'A9s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A8s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(raiseP: 0.20, callP: 0.70, alreadyP: 0.46),
              'A4s':ProgressInfo(raiseP: 0.00, callP: 0.00),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(allinP: 0.25, callP: 0.75, alreadyP: 0.32),
              'KQs':ProgressInfo(raiseP: 0.0 , callP: 0.30, alreadyP: 0.06),
              'KJs':ProgressInfo(raiseP: 0.00, callP: 0.80),
              'KTs':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'AQo':ProgressInfo(raiseP: 0.00, callP: 0.20, alreadyP: 0.65),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.63),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.62),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.72),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.69),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.72),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.70),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.86),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.LJ:
            return {
              'AA' :ProgressInfo(allinP: 0.05, callP: 0.15, raiseP: 0.8),
              'KK' :ProgressInfo(allinP: 0.75, callP: 0.25),
              'QQ' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              'JJ' :ProgressInfo(raiseP: 0.22, callP: 0.78, alreadyP: 0.30),
              'TT' :ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.41),
              '99' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.67),
              '88' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.84),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'AKs':ProgressInfo(allinP: 0.7, callP: 0.00, raiseP: 0.3),
              'AQs':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              'AJs':ProgressInfo(raiseP: 0.20, callP: 0.80, alreadyP: 0.19),
              'ATs':ProgressInfo(raiseP: 0.30, callP: 0.70, alreadyP: 0.00),
              'A9s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A8s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(raiseP: 0.20, callP: 0.80, alreadyP: 0.49),
              'A4s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.90),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'AKo':ProgressInfo(allinP: 0.35, callP: 0.65, alreadyP: 0.15),
              'KQs':ProgressInfo(raiseP: 0.0 , callP: 0.50, alreadyP: 0.14),
              'KJs':ProgressInfo(raiseP: 0.15, callP: 0.85, alreadyP: 0.00),
              'KTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.60),


              'AQo':ProgressInfo(raiseP: 0.00, callP: 0.50, alreadyP: 0.53),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.38),
              'J9s':ProgressInfo(raiseP: 0.0 , callP: 0.55, alreadyP: 0.65),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.59),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.76),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.57),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.78),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.66),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.78),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.HJ:
            return {
              'AA' :ProgressInfo(raiseP: 0.65, callP: 0.35),
              'KK' :ProgressInfo(allinP: 1.00, callP: 0.00),
              'QQ' :ProgressInfo(allinP: 0.15, callP: 0.70, raiseP: 0.15),
              'JJ' :ProgressInfo(allinP: 0.60, callP: 0.40, alreadyP: 0.20),
              'TT' :ProgressInfo(raiseP: 0.20, callP: 0.80, alreadyP: 0.35),
              '99' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.55),
              '88' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.75),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.91),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'AKs':ProgressInfo(allinP: 0.7, callP: 0.00, raiseP: 0.3),
              'AQs':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              'AJs':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.16),
              'ATs':ProgressInfo(allinP: 0.3, callP: 0.45, alreadyP: 0.0, raiseP :0.25),
              'A9s':ProgressInfo(raiseP: 0.00, callP: 0.40, alreadyP: 0.67),
              'A8s':ProgressInfo(raiseP: 0.00, callP: 0.40, alreadyP: 0.56),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(raiseP: 0.10, callP: 0.90, alreadyP: 0.43),
              'A4s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.74),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(allinP: 0.85, callP: 0.15, alreadyP: 0.11),
              'KQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.14),
              'KJs':ProgressInfo(raiseP: 0.15, callP: 0.33, alreadyP: 0.00),
              'KTs':ProgressInfo(raiseP: 0.10, callP: 0.65, alreadyP: 0.17),


              'AQo':ProgressInfo(raiseP: 0.10, callP: 0.20, alreadyP: 0.39),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.30),
              'J9s':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.39),
              'T8s':ProgressInfo(raiseP: 0.0 , callP: 0.30, alreadyP: 0.77),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.68),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.55),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.56),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.54),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.81),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.CO:
            return {
              'AA' :ProgressInfo(raiseP: 0.65, callP: 0.35),
              'KK' :ProgressInfo(allinP: 1.00, callP: 0.00),
              'QQ' :ProgressInfo(allinP: 0.35, callP: 0.50, raiseP :0.15),
              'JJ' :ProgressInfo(allinP: 0.45, callP: 0.55, alreadyP: 0.09),
              'TT' :ProgressInfo(allinP: 0.50, callP: 0.50, alreadyP: 0.35),
              '99' :ProgressInfo(raiseP: 0.10, callP: 0.90, alreadyP: 0.41),
              '88' :ProgressInfo(raiseP: 0.16, callP: 0.84, alreadyP: 0.45),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.70),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.85),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'AKs':ProgressInfo(allinP: 0.7, callP: 0.00, raiseP: 0.3),
              'AQs':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              'AJs':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.00),
              'ATs':ProgressInfo(allinP: 0.25, callP: 0.75, alreadyP: 0.00),
              'A9s':ProgressInfo(raiseP: 0.00, callP: 0.20, alreadyP: 0.29),
              'A8s':ProgressInfo(raiseP: 0.15, callP: 0.85, alreadyP: 0.46),
              'A7s':ProgressInfo(allinP: 0.05, callP: 0.40, alreadyP: 0.67, raiseP: 0.2),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(allinP: 0.30, callP: 0.70, alreadyP: 0.32),
              'A4s':ProgressInfo(allinP: 0.40, callP: 0.60, alreadyP: 0.61),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(allinP: 1.00, callP: 0.00, alreadyP: 0.08),
              'KQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.11),
              'KJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KTs':ProgressInfo(raiseP: 0.15, callP: 0.40),
              'K9s':ProgressInfo(raiseP: 0.25, callP: 0.00, alreadyP: 0.68),


              'AQo':ProgressInfo(raiseP: 0.15, callP: 0.85, alreadyP: 0.47),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 0.30, alreadyP: 0.00),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.56, alreadyP: 0.00),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.0 , callP: 0.73, alreadyP: 0.00),
              'J9s':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.22),
              'T8s':ProgressInfo(raiseP: 0.0 , callP: 0.30, alreadyP: 0.48),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.54),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.48),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.47),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.51),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.74),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.BTN:
            return {
              'AA' :ProgressInfo(raiseP: 0.30, callP: 0.70),
              'KK' :ProgressInfo(allinP: 1.00, callP: 0.00),
              'QQ' :ProgressInfo(allinP: 0.6, callP: 0.30, raiseP: 0.1),
              'JJ' :ProgressInfo(allinP: 0.60, callP: 0.40),
              'TT' :ProgressInfo(allinP: 0.30, callP: 0.70, alreadyP: 0.20),
              '99' :ProgressInfo(allinP: 0.35, callP: 0.65, alreadyP: 0.53),
              '88' :ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.42),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.35),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.70),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'AKs':ProgressInfo(allinP: 0.8, callP: 0.00, raiseP: 0.2),
              'AQs':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              'AJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'ATs':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.30),
              'A9s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.12),
              'A8s':ProgressInfo(allinP: 0.25, callP: 0.75, alreadyP: 0.00),
              'A7s':ProgressInfo(allinP: 0.6, callP: 0.30, alreadyP: 0.30, raiseP: 0.1),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.70),
              'A5s':ProgressInfo(allinP: 0.70, callP: 0.30, alreadyP: 0.00),
              'A4s':ProgressInfo(allinP: 0.50, callP: 0.50, alreadyP: 0.08),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.55),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.89),

              'AKo':ProgressInfo(allinP: 1.00, callP: 0.00),
              'KQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.19),
              'KJs':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.18),
              'KTs':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.06),
              'K9s':ProgressInfo(raiseP: 0.00, callP: 0.00),
              'K8s':ProgressInfo(raiseP: 0.00, callP: 0.50, alreadyP: 0.78),
              'K7s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.66),
              'K6s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.23),
              'K5s':ProgressInfo(raiseP: 0.00, callP: 0.35, alreadyP: 0.55),


              'AQo':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.58),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.50, alreadyP: 0.08),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.11),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.08),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.26),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.07),
              'J9s':ProgressInfo(raiseP: 0.0 , callP: 0.40, alreadyP: 0.00),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              'T8s':ProgressInfo(raiseP: 0.0 , callP: 0.70, alreadyP: 0.39),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.30),
              '97s':ProgressInfo(raiseP: 0.0 , callP: 0.35, alreadyP: 0.56),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.17),
              '86s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.61),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.28),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.32),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.54),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.BB) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.UTG:
            return {
              'AA' :ProgressInfo(allinP: 0.17, callP: 0.18, raiseP: 0.65),
              'KK' :ProgressInfo(allinP: 0.45, callP: 0.35, raiseP: 0.2),
              'QQ' :ProgressInfo(raiseP: 0.10, callP: 0.90, alreadyP: 0.28),
              'JJ' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.78),
              'TT' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.95),



              'AKs':ProgressInfo(allinP: 1.00, callP: 0.00),
              'AQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.81),
              'AJs':ProgressInfo(raiseP: 0.40, callP: 0.60, alreadyP: 0.80),
              'ATs':ProgressInfo(raiseP: 0.32, callP: 0.68, alreadyP: 0.59),
              'A9s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A8s':ProgressInfo(raiseP: 0.20, callP: 0.71, alreadyP: 0.79),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(raiseP: 0.40, callP: 0.35, alreadyP: 0.55),
              'A4s':ProgressInfo(raiseP: 0.16, callP: 0.10, alreadyP: 0.50),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(allinP: 0.1, callP: 0.75, alreadyP: 0.54, raiseP: 0.15),
              'KQs':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'KJs':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'KTs':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'AQo':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 0.30, alreadyP: 0.49),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.0),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.80),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.67),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 0.50, alreadyP: 0.71),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 0.80, alreadyP: 0.46),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 0.75, alreadyP: 0.59),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 0.90, alreadyP: 0.55),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 0.40, alreadyP: 0.62),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.UTG1:
            return {
              'AA' :ProgressInfo(allinP: 0.2, callP: 0.15, raiseP: 0.65),
              'KK' :ProgressInfo(allinP: 0.45, callP: 0.40, raiseP: 0.15),
              'QQ' :ProgressInfo(raiseP: 0.15, callP: 0.85, alreadyP: 0.13),
              'JJ' :ProgressInfo(raiseP: 0.15, callP: 0.85, alreadyP: 0.73),
              'TT' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.91),
              '99' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '88' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'AKs':ProgressInfo(allinP: 0.8, callP: 0.00, raiseP: 0.2),
              'AQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.66),
              'AJs':ProgressInfo(raiseP: 0.00, callP: 0.00),
              'ATs':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.68),
              'A9s':ProgressInfo(raiseP: 0.40, callP: 0.60, alreadyP: 0.87),
              'A8s':ProgressInfo(raiseP: 0.00, callP: 0.80, alreadyP: 0.65),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(raiseP: 0.40, callP: 0.60, alreadyP: 0.57),
              'A4s':ProgressInfo(raiseP: 0.20, callP: 0.00, alreadyP: 0.69),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(allinP: 0.30, callP: 0.70, alreadyP: 0.46),
              'KQs':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'KJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.68),
              'KTs':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'AQo':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 0.25, alreadyP: 0.44),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.72),
              'J9s':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.60),


              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 0.60, alreadyP: 0.74),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.62),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 0.80, alreadyP: 0.65),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 0.90, alreadyP: 0.52),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 0.30, alreadyP: 0.62),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.LJ:
            return {
              'AA' :ProgressInfo(allinP: 0.1, callP: 0.25, raiseP: 0.65),
              'KK' :ProgressInfo(allinP: 0.6, callP: 0.3,raiseP: 0.1),
              'QQ' :ProgressInfo(raiseP: 0.0, callP: 1.00),
              'JJ' :ProgressInfo(raiseP: 0.25, callP: 0.75, alreadyP: 0.52),
              'TT' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.88),
              '99' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.94),
              '88' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'AKs':ProgressInfo(allinP: 0.75, callP: 0.00, raiseP: 0.25),
              'AQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.55),
              'AJs':ProgressInfo(raiseP: 0.00, callP: 0.00),
              'ATs':ProgressInfo(raiseP: 0.00, callP: 0.00),
              'A9s':ProgressInfo(raiseP: 0.10, callP: 0.90, alreadyP: 0.61),
              'A8s':ProgressInfo(raiseP: 0.25, callP: 0.75, alreadyP: 0.74),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(raiseP: 0.35, callP: 0.65, alreadyP: 0.64),
              'A4s':ProgressInfo(raiseP: 0.40, callP: 0.60, alreadyP: 0.83),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(allinP: 0.30, callP: 0.70, alreadyP: 0.26),
              'KQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.87),
              'KJs':ProgressInfo(raiseP: 0.15, callP: 0.85, alreadyP: 0.57),



              'AQo':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.84),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'AJo':ProgressInfo(raiseP: 0.40, callP: 0.0 , alreadyP: 0.89),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.54),
              'J9s':ProgressInfo(raiseP: 0.0 , callP: 0.40, alreadyP: 0.53),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.42),
              'T8s':ProgressInfo(raiseP: 0.0 , callP: 0.45, alreadyP: 0.66),



              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 0.20, alreadyP: 0.70),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.59),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.67),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.50),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 0.25, alreadyP: 0.55),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.HJ:
            return {
              'AA' :ProgressInfo(raiseP: 0.80, callP: 0.20),
              'KK' :ProgressInfo(allinP: 0.8, callP: 0.1, raiseP: 0.1),
              'QQ' :ProgressInfo(raiseP: 0.1, callP: 0.9),
              'JJ' :ProgressInfo(allinP: 0.5, callP: 0.40, alreadyP: 0.14,raiseP: 0.1),
              'TT' :ProgressInfo(raiseP: 0.35, callP: 0.65, alreadyP: 0.63),
              '99' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '88' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'AKs':ProgressInfo(allinP: 0.35, callP: 0.15, raiseP: 0.5),
              'AQs':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              'AJs':ProgressInfo(raiseP: 0.00, callP: 0.00),
              'ATs':ProgressInfo(raiseP: 0.00, callP: 0.00),
              'A9s':ProgressInfo(raiseP: 1.00, callP: 0.00, alreadyP: 0.88),
              'A8s':ProgressInfo(raiseP: 0.40, callP: 0.60, alreadyP: 0.46),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.84),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(raiseP: 0.20, callP: 0.80, alreadyP: 0.76),
              'A4s':ProgressInfo(raiseP: 0.20, callP: 0.80, alreadyP: 0.73),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(allinP: 0.71, callP: 0.29),
              'KQs':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'KJs':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.67),
              'KTs':ProgressInfo(raiseP: 1.00, callP: 0.00, alreadyP: 0.79),


              'AQo':ProgressInfo(raiseP: 0.00, callP: 0.00),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.0 , callP: 0.85, alreadyP: 0.19),
              'J9s':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.0 , callP: 0.80, alreadyP: 0.23),
              'T8s':ProgressInfo(raiseP: 0.0 , callP: 0.00),



              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.71),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.47),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 0.50, alreadyP: 0.45),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 0.75, alreadyP: 0.39),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 0.40, alreadyP: 0.54),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.CO:
            return {
              'AA' :ProgressInfo(raiseP: 0.7, callP: 0.3),
              'KK' :ProgressInfo(allinP: 1.00, callP: 0.00),
              'QQ' :ProgressInfo(allinP: 0.3, callP: 0.55, raiseP: 0.15),
              'JJ' :ProgressInfo(allinP: 0.4, callP: 0.5, raiseP: 0.1),
              'TT' :ProgressInfo(allinP: 0.3, callP: 0.50, alreadyP: 0.30, raiseP: 0.2),
              '99' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.79),
              '88' :ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.91),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'AKs':ProgressInfo(allinP: 0.35, callP: 0.25, raiseP: 0.4),
              'AQs':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              'AJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'ATs':ProgressInfo(raiseP: 0.00, callP: 0.00),
              'A9s':ProgressInfo(raiseP: 0.00, callP: 0.00),
              'A8s':ProgressInfo(raiseP: 0.30, callP: 0.70, alreadyP: 0.74),
              'A7s':ProgressInfo(allinP: 1.00, callP: 0.00, alreadyP: 0.83),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(allinP: 0.65, callP: 0.35, alreadyP: 0.60),
              'A4s':ProgressInfo(allinP: 0.70, callP: 0.30, alreadyP: 0.67),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.78),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(allinP: 0.89, callP: 0.11),
              'KQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.44),
              'KJs':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.91),
              'KTs':ProgressInfo(raiseP: 0.75, callP: 0.25, alreadyP: 0.87),
              'K9s':ProgressInfo(raiseP: 1.00, callP: 0.00, alreadyP: 0.84),


              'AQo':ProgressInfo(raiseP: 0.20, callP: 0.80, alreadyP: 0.50),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.08),
              'J9s':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.0 , callP: 0.90, alreadyP: 0.00),
              'T8s':ProgressInfo(raiseP: 0.0 , callP: 0.50, alreadyP: 0.33),



              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.45),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.39),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.35),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.37),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.55),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.BTN:
            return {
              'AA' :ProgressInfo(raiseP: 0.50, callP: 0.50),
              'KK' :ProgressInfo(allinP: 0.85, callP: 0.00, raiseP: 0.15),
              'QQ' :ProgressInfo(allinP: 0.5, callP: 0.40, raiseP: 0.1),
              'JJ' :ProgressInfo(allinP: 0.3, callP: 0.6, raiseP: 0.1),
              'TT' :ProgressInfo(allinP: 0.25, callP: 0.75),
              '99' :ProgressInfo(allinP: 0.40, callP: 0.60, alreadyP: 0.38),
              '88' :ProgressInfo(allinP: 0.1, callP: 0.60, alreadyP: 0.66, raiseP: 0.3),
              '77' :ProgressInfo(allinP: 0.1, callP: 0.80, alreadyP: 0.85, raiseP: 0.1),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'AKs':ProgressInfo(allinP: 0.7, callP: 0.00, raiseP: 0.3),
              'AQs':ProgressInfo(raiseP: 0.1, callP: 0.9),
              'AJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'ATs':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.35),
              'A9s':ProgressInfo(raiseP: 0.00, callP: 0.00),
              'A8s':ProgressInfo(raiseP: 0.00, callP: 0.00),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(allinP: 1.00, callP: 0.00),
              'A4s':ProgressInfo(allinP: 0.70, callP: 0.30, alreadyP: 0.64),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.67),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(allinP: 1.00, callP: 0.00),
              'KQs':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              'KJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KTs':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.65),
              'K9s':ProgressInfo(raiseP: 0.00, callP: 0.00),
              'K6s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.76),


              'AQo':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.65, alreadyP: 0.55),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.73),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.62),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.56),
              'J9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.82),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              'T8s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.35),



              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '97s':ProgressInfo(raiseP: 0.0 , callP: 0.70, alreadyP: 0.28),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
              '86s':ProgressInfo(raiseP: 0.0 , callP: 0.60, alreadyP: 0.18),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.00),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.17),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.29),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.90),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            };
          case TournaPosition.SB:
            return {
              'AA' :ProgressInfo(raiseP: 0.00, callP: 1.00),
              'KK' :ProgressInfo(allinP: 0.50, callP: 0.50),
              'QQ' :ProgressInfo(allinP: 0.80, callP: 0.20),
              'JJ' :ProgressInfo(allinP: 0.35, callP: 0.65),
              'TT' :ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.66),
              '99' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '88' :ProgressInfo(raiseP: 0.00, callP: 0.00),
              '77' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '66' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '55' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '44' :ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '33' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '22' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'AKs':ProgressInfo(allinP: 0.66, callP: 0.34),
              'AQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
              'AJs':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.30),
              'ATs':ProgressInfo(allinP: 0.35, callP: 0.65, alreadyP: 0.67),
              'A9s':ProgressInfo(raiseP: 0.00, callP: 0.00),
              'A8s':ProgressInfo(raiseP: 0.00, callP: 0.00),
              'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'A5s':ProgressInfo(allinP: 0.90, callP: 0.10, alreadyP: 0.33),
              'A4s':ProgressInfo(allinP: 0.50, callP: 0.50, alreadyP: 0.60),
              'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'AKo':ProgressInfo(allinP: 1.00, callP: 0.00),
              'KQs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.61),
              'KJs':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.60),
              'KTs':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.53),
              'K9s':ProgressInfo(raiseP: 0.00, callP: 0.00),
              'K6s':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.72),


              'AQo':ProgressInfo(raiseP: 0.00, callP: 1.00, alreadyP: 0.61),
              'KQo':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.82),
              'QJs':ProgressInfo(raiseP: 0.0 , callP: 0.00, alreadyP: 0.00),
              'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'AJo':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.84),
              'KJo':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.90),
              'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTs':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.81),
              'J9s':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'ATo':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.89),
              'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              'T9s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.50),
              'T8s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.85),



              'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '98s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.30),
              '97s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.72),


              'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '87s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.40),
              '86s':ProgressInfo(raiseP: 0.0 , callP: 0.00),


              'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '76s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.51),


              'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '65s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.58),


              'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
              '54s':ProgressInfo(raiseP: 0.0 , callP: 1.00, alreadyP: 0.59),
              '53s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
              '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

              'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


              'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

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
            'AA' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'AKs':ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'AQs':ProgressInfo(raiseP: 0.3 , callP: 0.7 ),
            'AJs':ProgressInfo(raiseP: 0.53, callP: 0.47),
            'ATs':ProgressInfo(raiseP: 0.63, callP: 0.37),
            'A9s':ProgressInfo(raiseP: 0.5 , callP: 0.5 ),
            'A8s':ProgressInfo(raiseP: 0.24, callP: 0.32),
            'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
            'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'A5s':ProgressInfo(raiseP: 0.45, callP: 0.55),
            'A4s':ProgressInfo(raiseP: 0.26, callP: 0.38),
            'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.0),
            'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            'AKo':ProgressInfo(raiseP: 0.48, callP: 0.52),
            'KK' :ProgressInfo(raiseP: 0.75, callP: 0.25),
            'KQs':ProgressInfo(raiseP: 0.34, callP: 0.66),
            'KJs':ProgressInfo(raiseP: 0.66, callP: 0.34),
            'KTs':ProgressInfo(raiseP: 0.67, callP: 0.33),
            'K9s':ProgressInfo(raiseP: 0.14, callP: 0.0 ),


            'AQo':ProgressInfo(raiseP: 0.56, callP: 0.41),
            'KQo':ProgressInfo(raiseP: 0.27, callP: 0.0 ),
            'QQ' :ProgressInfo(raiseP: 0.52, callP: 0.48),
            'QJs':ProgressInfo(raiseP: 0.5 , callP: 0.5 ),
            'QTs':ProgressInfo(raiseP: 0.34, callP: 0.66),


            'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'JJ' :ProgressInfo(raiseP: 0.52, callP: 0.48),
            'JTs':ProgressInfo(raiseP: 0.24, callP: 0.76),


            'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'TT' :ProgressInfo(raiseP: 0.5 , callP: 0.5 ),
            'T9s':ProgressInfo(raiseP: 0.1 , callP: 0.42),
            'T8s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'T7s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'T6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'T5s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'T4s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'T3s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'T2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'K9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'Q9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'J9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'T9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '99' :ProgressInfo(raiseP: 0.35, callP: 0.65),
            '98s':ProgressInfo(raiseP: 0.0 , callP: 0.18),
            '97s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '96s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '95s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '94s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '93s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '92s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'K8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'Q8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'J8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'T8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '98o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '88' :ProgressInfo(raiseP: 0.33, callP: 0.67),
            '87s':ProgressInfo(raiseP: 0.0 , callP: 0.09),
            '86s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '85s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '84s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '83s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '82s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'K7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'Q7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'J7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'T7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '97o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '87o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '77' :ProgressInfo(raiseP: 0.31, callP: 0.69),
            '76s':ProgressInfo(raiseP: 0.0 , callP: 0.13),
            '75s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '74s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '73s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '72s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'K6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'Q6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'J6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'T6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '96o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '86o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '76o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '66' :ProgressInfo(raiseP: 0.25, callP: 0.64),
            '65s':ProgressInfo(raiseP: 0.2 , callP: 0.23),
            '64s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '63s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '62s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'K5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'Q5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'J5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'T5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '95o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '85o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '75o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '65o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '55' :ProgressInfo(raiseP: 0.00, callP: 0.40),
            '54s':ProgressInfo(raiseP: 0.11, callP: 0.23),
            '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'K4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'Q4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'J4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'T4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '94o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '84o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '74o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '64o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '54o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '44' :ProgressInfo(raiseP: 0.0 , callP: 0.3 ),
            '43s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '42s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'K3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'Q3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'J3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'T3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '93o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '83o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '73o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '63o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '53o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '43o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '33' :ProgressInfo(raiseP: 0.0 , callP: 0.39),
            '32s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'K2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'Q2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'J2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'T2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '92o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '82o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '72o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '62o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '52o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '42o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '32o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '22' :ProgressInfo(raiseP: 0.0 , callP: 0.43),
          };
      }

    } else if (tournaSelection.myTournaPosition == TournaPosition.LJ) {
      switch (tournaSelection.opponentTournaPosition) {
        case TournaPosition.UTG:
          return {
            'AA' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'AKs':ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'AQs':ProgressInfo(raiseP: 0.38, callP: 0.62),
            'AJs':ProgressInfo(raiseP: 0.44, callP: 0.56),
            'ATs':ProgressInfo(raiseP: 0.67, callP: 0.33),
            'A9s':ProgressInfo(raiseP: 0.5 , callP: 0.4 ),
            'A8s':ProgressInfo(raiseP: 0.36, callP: 0.54),
            'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.24),
            'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'A5s':ProgressInfo(raiseP: 0.44, callP: 0.56),
            'A4s':ProgressInfo(raiseP: 0.29, callP: 0.47),
            'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.0),
            'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            'AKo':ProgressInfo(raiseP: 0.5 , callP: 0.5 ),
            'KK' :ProgressInfo(raiseP: 0.86, callP: 0.14),
            'KQs':ProgressInfo(raiseP: 0.33, callP: 0.67),
            'KJs':ProgressInfo(raiseP: 0.55, callP: 0.45),
            'KTs':ProgressInfo(raiseP: 0.56, callP: 0.44),
            'K9s':ProgressInfo(raiseP: 0.36, callP: 0.00),
            'K8s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'K7s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'K6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'K5s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'K4s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'K3s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'K2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            'AQo':ProgressInfo(raiseP: 0.51, callP: 0.46),
            'KQo':ProgressInfo(raiseP: 0.36, callP: 0.0 ),
            'QQ' :ProgressInfo(raiseP: 0.5 , callP: 0.5 ),
            'QJs':ProgressInfo(raiseP: 0.5 , callP: 0.5 ),
            'QTs':ProgressInfo(raiseP: 0.33, callP: 0.67),
            'Q9s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'Q8s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'Q7s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'Q6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'Q5s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'Q4s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'Q3s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'Q2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            'AJo':ProgressInfo(raiseP: 0.15, callP: 0.0 ),

            'JJ' :ProgressInfo(raiseP: 0.5 , callP: 0.5 ),
            'JTs':ProgressInfo(raiseP: 0.3 , callP: 0.7 ),
            'J9s':ProgressInfo(raiseP: 0.0 , callP: 0.25),


            'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            'TT' :ProgressInfo(raiseP: 0.5 , callP: 0.5 ),
            'T9s':ProgressInfo(raiseP: 0.24, callP: 0.76),


            'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '99' :ProgressInfo(raiseP: 0.35, callP: 0.65),
            '98s':ProgressInfo(raiseP: 0.0 , callP: 0.26),


            'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '88' :ProgressInfo(raiseP: 0.31, callP: 0.69),
            '87s':ProgressInfo(raiseP: 0.10, callP: 0.15),
            '86s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '85s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '84s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '83s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '82s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'K7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'Q7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'J7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'T7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '97o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '87o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '77' :ProgressInfo(raiseP: 0.28, callP: 0.72),
            '76s':ProgressInfo(raiseP: 0.10, callP: 0.20),
            '75s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '74s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '73s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '72s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'K6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'Q6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'J6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'T6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '96o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '86o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '76o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '66' :ProgressInfo(raiseP: 0.25, callP: 0.75),
            '65s':ProgressInfo(raiseP: 0.20, callP: 0.26),
            '64s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '63s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '62s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'K5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'Q5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'J5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'T5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '95o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '85o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '75o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '65o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '55' :ProgressInfo(raiseP: 0.1 , callP: 0.6 ),
            '54s':ProgressInfo(raiseP: 0.10, callP: 0.25),
            '53s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '52s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'K4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'Q4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'J4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'T4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '94o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '84o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '74o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '64o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '54o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '44' :ProgressInfo(raiseP: 0.0 , callP: 0.49),
            '43s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '42s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'K3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'Q3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'J3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'T3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '93o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '83o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '73o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '63o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '53o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '43o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '33' :ProgressInfo(raiseP: 0.0 , callP: 0.48),
            '32s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'K2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'Q2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'J2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'T2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '92o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '82o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '72o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '62o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '52o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '42o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '32o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '22' :ProgressInfo(raiseP: 0.0 , callP: 0.59),
          };
        case TournaPosition.UTG1:
          return {
            'AA' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'KK' :ProgressInfo(raiseP: 1.00, callP: 0.0 ),
            'QQ' :ProgressInfo(raiseP: 0.51, callP: 0.49),
            'JJ' :ProgressInfo(raiseP: 0.53, callP: 0.47),
            'TT' :ProgressInfo(raiseP: 0.51, callP: 0.49),
            '99' :ProgressInfo(raiseP: 0.39, callP: 0.61),
            '88' :ProgressInfo(raiseP: 0.36, callP: 0.64),
            '77' :ProgressInfo(raiseP: 0.34, callP: 0.66),
            '66' :ProgressInfo(raiseP: 0.27, callP: 0.73),
            '55' :ProgressInfo(raiseP: 0.16, callP: 0.58),
            '44' :ProgressInfo(raiseP: 0.00, callP: 0.51),
            '33' :ProgressInfo(raiseP: 0.0 , callP: 0.46),
            '22' :ProgressInfo(raiseP: 0.0 , callP: 0.54),


            'AKs':ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'AQs':ProgressInfo(raiseP: 0.42, callP: 0.58),
            'AJs':ProgressInfo(raiseP: 0.42, callP: 0.58),
            'ATs':ProgressInfo(raiseP: 0.67, callP: 0.33),
            'A9s':ProgressInfo(raiseP: 0.63, callP: 0.37),
            'A8s':ProgressInfo(raiseP: 0.46, callP: 0.54),
            'A7s':ProgressInfo(raiseP: 0.00, callP: 0.30),
            'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'A5s':ProgressInfo(raiseP: 0.52, callP: 0.48),
            'A4s':ProgressInfo(raiseP: 0.31, callP: 0.54),
            'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.18),
            'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            'AKo':ProgressInfo(raiseP: 0.55, callP: 0.45),
            'KQs':ProgressInfo(raiseP: 0.25, callP: 0.75),
            'KJs':ProgressInfo(raiseP: 0.56, callP: 0.44),
            'KTs':ProgressInfo(raiseP: 0.6 , callP: 0.4 ),
            'K9s':ProgressInfo(raiseP: 0.58, callP: 0.15),

            'AQo':ProgressInfo(raiseP: 0.59, callP: 0.41),
            'KQo':ProgressInfo(raiseP: 0.42, callP: 0.09),
            'QJs':ProgressInfo(raiseP: 0.61, callP: 0.39),
            'QTs':ProgressInfo(raiseP: 0.4 , callP: 0.6 ),


            'AJo':ProgressInfo(raiseP: 0.23, callP: 0.12),
            'JTs':ProgressInfo(raiseP: 0.46, callP: 0.54),
            'J9s':ProgressInfo(raiseP: 0.00, callP: 0.28),


            'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'T9s':ProgressInfo(raiseP: 0.26, callP: 0.74),


            'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '98s':ProgressInfo(raiseP: 0.0 , callP: 0.29),


            'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '87s':ProgressInfo(raiseP: 0.08, callP: 0.14),


            'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'K7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'Q7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'J7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'T7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '97o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '87o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '76s':ProgressInfo(raiseP: 0.00, callP: 0.17),
            '75s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '74s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '73s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '72s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '65s':ProgressInfo(raiseP: 0.21, callP: 0.23),


            'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '54s':ProgressInfo(raiseP: 0.00, callP: 0.27),


            'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


            'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


            'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

          };
      }
    } else if (tournaSelection.myTournaPosition == TournaPosition.HJ) {
      switch (tournaSelection.opponentTournaPosition) {

        case TournaPosition.UTG:
          return {
            'AA' :ProgressInfo(raiseP: 1.0 , callP: 1.0 ),
            'KK' :ProgressInfo(raiseP: 0.85, callP: 0.15),
            'QQ' :ProgressInfo(raiseP: 0.45, callP: 0.55),
            'JJ' :ProgressInfo(raiseP: 0.45, callP: 0.55),
            'TT' :ProgressInfo(raiseP: 0.45, callP: 0.55),
            '99' :ProgressInfo(raiseP: 0.33, callP: 0.67),
            '88' :ProgressInfo(raiseP: 0.26, callP: 0.74),
            '77' :ProgressInfo(raiseP: 0.23, callP: 0.77),
            '66' :ProgressInfo(raiseP: 0.19, callP: 0.81),
            '55' :ProgressInfo(raiseP: 0.00, callP: 1.00),
            '44' :ProgressInfo(raiseP: 0.00, callP: 1.00),
            '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AKs':ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'AQs':ProgressInfo(raiseP: 0.41, callP: 0.59),
            'AJs':ProgressInfo(raiseP: 0.42, callP: 0.58),
            'ATs':ProgressInfo(raiseP: 0.67, callP: 0.33),
            'A9s':ProgressInfo(raiseP: 0.33, callP: 0.67),
            'A8s':ProgressInfo(raiseP: 0.42, callP: 0.58),
            'A7s':ProgressInfo(raiseP: 0.2 , callP: 0.8 ),
            'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.2 ),
            'A5s':ProgressInfo(raiseP: 0.44, callP: 0.56),
            'A4s':ProgressInfo(raiseP: 0.3 , callP: 0.7 ),
            'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.4 ),
            'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            'AKo':ProgressInfo(raiseP: 0.41, callP: 0.59),
            'KQs':ProgressInfo(raiseP: 0.2 , callP: 0.8 ),
            'KJs':ProgressInfo(raiseP: 0.4 , callP: 0.6 ),
            'KTs':ProgressInfo(raiseP: 0.5 , callP: 0.5 ),
            'K9s':ProgressInfo(raiseP: 0.5 , callP: 0.5 ),

            'AQo':ProgressInfo(raiseP: 0.36, callP: 0.64),
            'KQo':ProgressInfo(raiseP: 0.44, callP: 0.27),
            'QJs':ProgressInfo(raiseP: 0.4 , callP: 0.6 ),
            'QTs':ProgressInfo(raiseP: 0.3 , callP: 0.7 ),


            'AJo':ProgressInfo(raiseP: 0.26, callP: 0.24),
            'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'JTs':ProgressInfo(raiseP: 0.27, callP: 0.73),
            'J9s':ProgressInfo(raiseP: 0.25, callP: 0.75),


            'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'T9s':ProgressInfo(raiseP: 0.2 , callP: 0.8 ),
            'T8s':ProgressInfo(raiseP: 0.00, callP: 0.69),


            'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '98s':ProgressInfo(raiseP: 0.0 , callP: 0.54),


            'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '87s':ProgressInfo(raiseP: 0.13, callP: 0.3),


            'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '76s':ProgressInfo(raiseP: 0.12, callP: 0.32),


            'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '65s':ProgressInfo(raiseP: 0.27, callP: 0.56),


            'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '54s':ProgressInfo(raiseP: 0.09, callP: 0.47),

            'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '43s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


            'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


            'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

          };
        case TournaPosition.UTG1:
          return {
            'AA' :ProgressInfo(raiseP: 1.0 , callP: 1.0 ),
            'KK' :ProgressInfo(raiseP: 1.00, callP: 0.00),
            'QQ' :ProgressInfo(raiseP: 0.42, callP: 0.58),
            'JJ' :ProgressInfo(raiseP: 0.48, callP: 0.52),
            'TT' :ProgressInfo(raiseP: 0.46, callP: 0.54),
            '99' :ProgressInfo(raiseP: 0.39, callP: 0.61),
            '88' :ProgressInfo(raiseP: 0.31, callP: 0.69),
            '77' :ProgressInfo(raiseP: 0.28, callP: 0.72),
            '66' :ProgressInfo(raiseP: 0.22, callP: 0.78),
            '55' :ProgressInfo(raiseP: 0.16, callP: 0.84),
            '44' :ProgressInfo(raiseP: 0.00, callP: 1.00),
            '33' :ProgressInfo(raiseP: 0.0 , callP: 0.83),
            '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AKs':ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'AQs':ProgressInfo(raiseP: 0.5 , callP: 0.5),
            'AJs':ProgressInfo(raiseP: 0.38, callP: 0.62),
            'ATs':ProgressInfo(raiseP: 0.68, callP: 0.32),
            'A9s':ProgressInfo(raiseP: 0.52, callP: 0.48),
            'A8s':ProgressInfo(raiseP: 0.44, callP: 0.56),
            'A7s':ProgressInfo(raiseP: 0.32, callP: 0.68),
            'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.36),
            'A5s':ProgressInfo(raiseP: 0.44, callP: 0.56),
            'A4s':ProgressInfo(raiseP: 0.5 , callP: 0.5 ),
            'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.48),
            'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            'AKo':ProgressInfo(raiseP: 0.46, callP: 0.54),
            'KQs':ProgressInfo(raiseP: 0.15, callP: 0.85),
            'KJs':ProgressInfo(raiseP: 0.42, callP: 0.58),
            'KTs':ProgressInfo(raiseP: 0.49, callP: 0.51),
            'K9s':ProgressInfo(raiseP: 0.57, callP: 0.43),

            'AQo':ProgressInfo(raiseP: 0.47, callP: 0.53),
            'KQo':ProgressInfo(raiseP: 0.5 , callP: 0.38),
            'QJs':ProgressInfo(raiseP: 0.48, callP: 0.52),
            'QTs':ProgressInfo(raiseP: 0.34, callP: 0.66),
            'Q9s':ProgressInfo(raiseP: 0.0 , callP: 0.12),


            'AJo':ProgressInfo(raiseP: 0.27, callP: 0.43),
            'KJo':ProgressInfo(raiseP: 0.00, callP: 0.0 ),
            'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'JTs':ProgressInfo(raiseP: 0.43, callP: 0.57),
            'J9s':ProgressInfo(raiseP: 0.39, callP: 0.61),


            'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'T9s':ProgressInfo(raiseP: 0.24, callP: 0.76),
            'T8s':ProgressInfo(raiseP: 0.00, callP: 0.53),


            'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '98s':ProgressInfo(raiseP: 0.06, callP: 0.68),


            'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '87s':ProgressInfo(raiseP: 0.16, callP: 0.34),


            'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '76s':ProgressInfo(raiseP: 0.08, callP: 0.28),


            'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '65s':ProgressInfo(raiseP: 0.26, callP: 0.41),


            'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '54s':ProgressInfo(raiseP: 0.05, callP: 0.39),

            'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '43s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


            'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


            'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

          };
        case TournaPosition.LJ:
          return {
            'AA' :ProgressInfo(raiseP: 1.0 , callP: 1.0 ),
            'KK' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'QQ' :ProgressInfo(raiseP: 0.55, callP: 0.45),
            'JJ' :ProgressInfo(raiseP: 0.48, callP: 0.52),
            'TT' :ProgressInfo(raiseP: 0.44, callP: 0.56),
            '99' :ProgressInfo(raiseP: 0.33, callP: 0.67),
            '88' :ProgressInfo(raiseP: 0.31, callP: 0.69),
            '77' :ProgressInfo(raiseP: 0.27, callP: 0.73),
            '66' :ProgressInfo(raiseP: 0.25, callP: 0.75),
            '55' :ProgressInfo(raiseP: 0.23, callP: 0.77),
            '44' :ProgressInfo(raiseP: 0.21, callP: 0.79),
            '33' :ProgressInfo(raiseP: 0.0 , callP: 0.69),
            '22' :ProgressInfo(raiseP: 0.0 , callP: 0.72),

            'AKs':ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'AQs':ProgressInfo(raiseP: 0.63, callP: 0.37),
            'AJs':ProgressInfo(raiseP: 0.32, callP: 0.68),
            'ATs':ProgressInfo(raiseP: 0.49, callP: 0.51),
            'A9s':ProgressInfo(raiseP: 0.53, callP: 0.47),
            'A8s':ProgressInfo(raiseP: 0.43, callP: 0.57),
            'A7s':ProgressInfo(raiseP: 0.5 , callP: 0.5 ),
            'A6s':ProgressInfo(raiseP: 0.11, callP: 0.34),
            'A5s':ProgressInfo(raiseP: 0.54, callP: 0.46),
            'A4s':ProgressInfo(raiseP: 0.41, callP: 0.59),
            'A3s':ProgressInfo(raiseP: 0.33, callP: 0.53),
            'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            'AKo':ProgressInfo(raiseP: 0.58, callP: 0.42),
            'KQs':ProgressInfo(raiseP: 0.24, callP: 0.76),
            'KJs':ProgressInfo(raiseP: 0.52, callP: 0.48),
            'KTs':ProgressInfo(raiseP: 0.51, callP: 0.49),
            'K9s':ProgressInfo(raiseP: 0.68, callP: 0.32),
            'K8s':ProgressInfo(raiseP: 0.00, callP: 0.00),
            'K6s':ProgressInfo(raiseP: 0.00, callP: 0.00),

            'AQo':ProgressInfo(raiseP: 0.52, callP: 0.48),
            'KQo':ProgressInfo(raiseP: 0.64, callP: 0.36),
            'QJs':ProgressInfo(raiseP: 0.42, callP: 0.58),
            'QTs':ProgressInfo(raiseP: 0.41, callP: 0.59),
            'Q9s':ProgressInfo(raiseP: 0.26, callP: 0.18),


            'AJo':ProgressInfo(raiseP: 0.53, callP: 0.47),
            'KJo':ProgressInfo(raiseP: 0.00, callP: 0.00),
            'JTs':ProgressInfo(raiseP: 0.44, callP: 0.56),
            'J9s':ProgressInfo(raiseP: 0.47, callP: 0.53),


            'ATo':ProgressInfo(raiseP: 0.16, callP: 0.0 ),
            'T9s':ProgressInfo(raiseP: 0.34, callP: 0.66),
            'T8s':ProgressInfo(raiseP: 0.12, callP: 0.26),


            'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '98s':ProgressInfo(raiseP: 0.12, callP: 0.58),


            'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '87s':ProgressInfo(raiseP: 0.12, callP: 0.3 ),


            'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '76s':ProgressInfo(raiseP: 0.09, callP: 0.2 ),


            'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '65s':ProgressInfo(raiseP: 0.29, callP: 0.24),


            'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '54s':ProgressInfo(raiseP: 0.09, callP: 0.3 ),

            'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '43s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


            'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


            'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

          };
      }
    } else if (tournaSelection.myTournaPosition == TournaPosition.CO) {
      switch (tournaSelection.opponentTournaPosition) {

        case TournaPosition.UTG:
          return {
            'AA' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'KK' :ProgressInfo(raiseP: 0.87, callP: 0.13),
            'QQ' :ProgressInfo(raiseP: 0.42, callP: 0.58),
            'JJ' :ProgressInfo(raiseP: 0.45, callP: 0.55),
            'TT' :ProgressInfo(raiseP: 0.44, callP: 0.56),
            '99' :ProgressInfo(raiseP: 0.33, callP: 0.67),
            '88' :ProgressInfo(raiseP: 0.24, callP: 0.76),
            '77' :ProgressInfo(raiseP: 0.20, callP: 0.8 ),
            '66' :ProgressInfo(raiseP: 0.16, callP: 0.84),
            '55' :ProgressInfo(raiseP: 0.00, callP: 1.00),
            '44' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AKs':ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'AQs':ProgressInfo(raiseP: 0.57, callP: 0.43),
            'AJs':ProgressInfo(raiseP: 0.41, callP: 0.59),
            'ATs':ProgressInfo(raiseP: 0.61, callP: 0.39),
            'A9s':ProgressInfo(raiseP: 0.26, callP: 0.74),
            'A8s':ProgressInfo(raiseP: 0.34, callP: 0.66),
            'A7s':ProgressInfo(raiseP: 0.2 , callP: 0.8 ),
            'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.84),
            'A5s':ProgressInfo(raiseP: 0.43, callP: 0.57),
            'A4s':ProgressInfo(raiseP: 0.24, callP: 0.76),
            'A3s':ProgressInfo(raiseP: 0.00, callP: 1.0),
            'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.14),

            'AKo':ProgressInfo(raiseP: 0.36, callP: 0.64),
            'KQs':ProgressInfo(raiseP: 0.12, callP: 0.88),
            'KJs':ProgressInfo(raiseP: 0.45, callP: 0.55),
            'KTs':ProgressInfo(raiseP: 0.38, callP: 0.62),
            'K9s':ProgressInfo(raiseP: 0.44, callP: 0.56),
            'K8s':ProgressInfo(raiseP: 0.0 , callP: 0.36),
            'K7s':ProgressInfo(raiseP: 0.0 , callP: 0.00),
            'K6s':ProgressInfo(raiseP: 0.0 , callP: 0.29),

            'AQo':ProgressInfo(raiseP: 0.23, callP: 0.77),
            'KQo':ProgressInfo(raiseP: 0.47, callP: 0.53),
            'QJs':ProgressInfo(raiseP: 0.3 , callP: 0.7 ),
            'QTs':ProgressInfo(raiseP: 0.16, callP: 0.84),
            'Q9s':ProgressInfo(raiseP: 0.22, callP: 0.78),


            'AJo':ProgressInfo(raiseP: 0.34, callP: 0.66),
            'KJo':ProgressInfo(raiseP: 0.00, callP: 0.14),
            'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'JTs':ProgressInfo(raiseP: 0.4 , callP: 0.6 ),
            'J9s':ProgressInfo(raiseP: 0.2 , callP: 0.8 ),
            'J8s':ProgressInfo(raiseP: 0.0 , callP: 0.00),


            'ATo':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.00),
            'T9s':ProgressInfo(raiseP: 0.2 , callP: 0.8 ),
            'T8s':ProgressInfo(raiseP: 0.17, callP: 0.83),


            'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '98s':ProgressInfo(raiseP: 0.07, callP: 0.93),
            '97s':ProgressInfo(raiseP: 0.00, callP: 0.29),


            'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '87s':ProgressInfo(raiseP: 0.22, callP: 0.78),
            '86s':ProgressInfo(raiseP: 0.0 , callP: 0.19),


            'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '76s':ProgressInfo(raiseP: 0.16, callP: 0.84),


            'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '65s':ProgressInfo(raiseP: 0.32, callP: 0.68),


            'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '54s':ProgressInfo(raiseP: 0.14, callP: 0.86),

            'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '43s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


            'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


            'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

          };
        case TournaPosition.UTG1:
          return {
            'AA' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'KK' :ProgressInfo(raiseP: 1.00, callP: 0.00),
            'QQ' :ProgressInfo(raiseP: 0.41, callP: 0.59),
            'JJ' :ProgressInfo(raiseP: 0.47, callP: 0.53),
            'TT' :ProgressInfo(raiseP: 0.46, callP: 0.54),
            '99' :ProgressInfo(raiseP: 0.39, callP: 0.61),
            '88' :ProgressInfo(raiseP: 0.29, callP: 0.71),
            '77' :ProgressInfo(raiseP: 0.23, callP: 0.77),
            '66' :ProgressInfo(raiseP: 0.16, callP: 0.84),
            '55' :ProgressInfo(raiseP: 0.00, callP: 1.00),
            '44' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AKs':ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'AQs':ProgressInfo(raiseP: 0.76, callP: 0.24),
            'AJs':ProgressInfo(raiseP: 0.26, callP: 0.74),
            'ATs':ProgressInfo(raiseP: 0.6 , callP: 0.4 ),
            'A9s':ProgressInfo(raiseP: 0.49, callP: 0.51),
            'A8s':ProgressInfo(raiseP: 0.34, callP: 0.66),

            'A7s':ProgressInfo(raiseP: 0.32, callP: 0.68),
            'A6s':ProgressInfo(raiseP: 0.12, callP: 0.88),
            'A5s':ProgressInfo(raiseP: 0.48, callP: 0.52),
            'A4s':ProgressInfo(raiseP: 0.22, callP: 0.78),
            'A3s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.29),

            'AKo':ProgressInfo(raiseP: 0.43, callP: 0.57),
            'KQs':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'KJs':ProgressInfo(raiseP: 0.49, callP: 0.51),
            'KTs':ProgressInfo(raiseP: 0.36, callP: 0.64),
            'K9s':ProgressInfo(raiseP: 0.44, callP: 0.56),
            'K8s':ProgressInfo(raiseP: 0.19, callP: 0.37),
            'K7s':ProgressInfo(raiseP: 0.11, callP: 0.34),
            'K6s':ProgressInfo(raiseP: 0.08, callP: 0.27),

            'AQo':ProgressInfo(raiseP: 0.3 , callP: 0.7 ),
            'KQo':ProgressInfo(raiseP: 0.46, callP: 0.54),
            'QJs':ProgressInfo(raiseP: 0.36, callP: 0.64),
            'QTs':ProgressInfo(raiseP: 0.28, callP: 0.72),
            'Q9s':ProgressInfo(raiseP: 0.32, callP: 0.68),


            'AJo':ProgressInfo(raiseP: 0.34, callP: 0.66),
            'KJo':ProgressInfo(raiseP: 0.17, callP: 0.27),
            'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'JTs':ProgressInfo(raiseP: 0.47, callP: 0.53),
            'J9s':ProgressInfo(raiseP: 0.31, callP: 0.69),



            'ATo':ProgressInfo(raiseP: 0.16, callP: 0.13),
            'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.00),
            'T9s':ProgressInfo(raiseP: 0.21, callP: 0.79),
            'T8s':ProgressInfo(raiseP: 0.14, callP: 0.86),


            'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '98s':ProgressInfo(raiseP: 0.13, callP: 0.87),
            '97s':ProgressInfo(raiseP: 0.00, callP: 0.44),


            'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '87s':ProgressInfo(raiseP: 0.24, callP: 0.76),
            '86s':ProgressInfo(raiseP: 0.0 , callP: 0.23),


            'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '76s':ProgressInfo(raiseP: 0.19, callP: 0.63),


            'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '65s':ProgressInfo(raiseP: 0.34, callP: 0.66),


            'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '54s':ProgressInfo(raiseP: 0.16, callP: 0.84),

            'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '43s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


            'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


            'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

          };
        case TournaPosition.LJ:
          return {
            'AA' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'KK' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'QQ' :ProgressInfo(raiseP: 0.59, callP: 0.41),
            'JJ' :ProgressInfo(raiseP: 0.48, callP: 0.52),
            'TT' :ProgressInfo(raiseP: 0.4 , callP: 0.6 ),
            '99' :ProgressInfo(raiseP: 0.32, callP: 0.68),
            '88' :ProgressInfo(raiseP: 0.28, callP: 0.72),
            '77' :ProgressInfo(raiseP: 0.24, callP: 0.76),
            '66' :ProgressInfo(raiseP: 0.2 , callP: 0.8 ),
            '55' :ProgressInfo(raiseP: 0.00, callP: 1.00),
            '44' :ProgressInfo(raiseP: 0.00, callP: 1.00),
            '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AKs':ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'AQs':ProgressInfo(raiseP: 0.68, callP: 0.32),
            'AJs':ProgressInfo(raiseP: 0.33, callP: 0.67),
            'ATs':ProgressInfo(raiseP: 0.36, callP: 0.64),
            'A9s':ProgressInfo(raiseP: 0.49, callP: 0.51),
            'A8s':ProgressInfo(raiseP: 0.32, callP: 0.68),
            'A7s':ProgressInfo(raiseP: 0.38, callP: 0.62),
            'A6s':ProgressInfo(raiseP: 0.36, callP: 0.64),
            'A5s':ProgressInfo(raiseP: 0.47, callP: 0.53),
            'A4s':ProgressInfo(raiseP: 0.36, callP: 0.64),
            'A3s':ProgressInfo(raiseP: 0.33, callP: 0.67),
            'A2s':ProgressInfo(raiseP: 0.07, callP: 0.56),

            'AKo':ProgressInfo(raiseP: 0.59, callP: 0.41),
            'KQs':ProgressInfo(raiseP: 0.2 , callP: 0.8 ),
            'KJs':ProgressInfo(raiseP: 0.56, callP: 0.44),
            'KTs':ProgressInfo(raiseP: 0.49, callP: 0.51),
            'K9s':ProgressInfo(raiseP: 0.58, callP: 0.42),
            'K8s':ProgressInfo(raiseP: 0.26, callP: 0.37),
            'K7s':ProgressInfo(raiseP: 0.13, callP: 0.2 ),
            'K6s':ProgressInfo(raiseP: 0.22, callP: 0.39),

            'AQo':ProgressInfo(raiseP: 0.45, callP: 0.55),
            'KQo':ProgressInfo(raiseP: 0.47, callP: 0.53),
            'QJs':ProgressInfo(raiseP: 0.28, callP: 0.72),
            'QTs':ProgressInfo(raiseP: 0.24, callP: 0.76),
            'Q9s':ProgressInfo(raiseP: 0.55, callP: 0.45),


            'AJo':ProgressInfo(raiseP: 0.36, callP: 0.64),
            'KJo':ProgressInfo(raiseP: 0.27, callP: 0.42),
            'QJo':ProgressInfo(raiseP: 0.16, callP: 0.07),
            'JTs':ProgressInfo(raiseP: 0.4 , callP: 0.6 ),
            'J9s':ProgressInfo(raiseP: 0.37, callP: 0.63),



            'ATo':ProgressInfo(raiseP: 0.47, callP: 0.23),
            'T9s':ProgressInfo(raiseP: 0.3 , callP: 0.7 ),
            'T8s':ProgressInfo(raiseP: 0.3 , callP: 0.7 ),


            'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '98s':ProgressInfo(raiseP: 0.11, callP: 0.89),
            '97s':ProgressInfo(raiseP: 0.00, callP: 0.31),


            'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '87s':ProgressInfo(raiseP: 0.3 , callP: 0.7 ),
            '86s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


            'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '76s':ProgressInfo(raiseP: 0.2 , callP: 0.41),


            'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '65s':ProgressInfo(raiseP: 0.43, callP: 0.57),


            'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '54s':ProgressInfo(raiseP: 0.23, callP: 0.61),

            'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '43s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


            'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


            'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

          };
        case TournaPosition.HJ:
          return {
            'AA' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'KK' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'QQ' :ProgressInfo(raiseP: 0.65, callP: 0.35),
            'JJ' :ProgressInfo(raiseP: 0.44, callP: 0.56),
            'TT' :ProgressInfo(raiseP: 0.38, callP: 0.62),
            '99' :ProgressInfo(raiseP: 0.25, callP: 0.75),
            '88' :ProgressInfo(raiseP: 0.26, callP: 0.74),
            '77' :ProgressInfo(raiseP: 0.18, callP: 0.82),
            '66' :ProgressInfo(raiseP: 0.17, callP: 0.83),
            '55' :ProgressInfo(raiseP: 0.00, callP: 1.00),
            '44' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AKs':ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'AQs':ProgressInfo(raiseP: 0.90, callP: 0.10),
            'AJs':ProgressInfo(raiseP: 0.12, callP: 0.88),
            'ATs':ProgressInfo(raiseP: 0.09, callP: 0.91),
            'A9s':ProgressInfo(raiseP: 0.41, callP: 0.59),
            'A8s':ProgressInfo(raiseP: 0.36, callP: 0.64),
            'A7s':ProgressInfo(raiseP: 0.45, callP: 0.55),
            'A6s':ProgressInfo(raiseP: 0.44, callP: 0.56),
            'A5s':ProgressInfo(raiseP: 0.46, callP: 0.54),
            'A4s':ProgressInfo(raiseP: 0.34, callP: 0.66),
            'A3s':ProgressInfo(raiseP: 0.29, callP: 0.71),
            'A2s':ProgressInfo(raiseP: 0.25, callP: 0.75),

            'AKo':ProgressInfo(raiseP: 0.74, callP: 0.26),
            'KQs':ProgressInfo(raiseP: 0.26, callP: 0.74),
            'KJs':ProgressInfo(raiseP: 0.39, callP: 0.61),
            'KTs':ProgressInfo(raiseP: 0.30, callP: 0.70),
            'K9s':ProgressInfo(raiseP: 0.54, callP: 0.46),
            'K8s':ProgressInfo(raiseP: 0.38, callP: 0.62),
            'K7s':ProgressInfo(raiseP: 0.52, callP: 0.39),
            'K6s':ProgressInfo(raiseP: 0.29, callP: 0.56),
            'K5s':ProgressInfo(raiseP: 0.00, callP: 0.00),

            'AQo':ProgressInfo(raiseP: 0.31, callP: 0.69),
            'KQo':ProgressInfo(raiseP: 0.41, callP: 0.59),
            'QJs':ProgressInfo(raiseP: 0.22, callP: 0.78),
            'QTs':ProgressInfo(raiseP: 0.23, callP: 0.77),
            'Q9s':ProgressInfo(raiseP: 0.65, callP: 0.35),
            'Q8s':ProgressInfo(raiseP: 0.43, callP: 0.00),


            'AJo':ProgressInfo(raiseP: 0.50, callP: 0.50),
            'KJo':ProgressInfo(raiseP: 0.33, callP: 0.49),
            'QJo':ProgressInfo(raiseP: 0.28, callP: 0.23),
            'JTs':ProgressInfo(raiseP: 0.44, callP: 0.56),
            'J9s':ProgressInfo(raiseP: 0.50, callP: 0.50),
            'J8s':ProgressInfo(raiseP: 0.19, callP: 0.12),




            'ATo':ProgressInfo(raiseP: 0.59, callP: 0.41),
            'T9s':ProgressInfo(raiseP: 0.45, callP: 0.55),
            'T8s':ProgressInfo(raiseP: 0.45, callP: 0.55),


            'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '98s':ProgressInfo(raiseP: 0.13, callP: 0.87),
            '97s':ProgressInfo(raiseP: 0.00, callP: 0.38),


            'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '87s':ProgressInfo(raiseP: 0.28, callP: 0.72),
            '86s':ProgressInfo(raiseP: 0.0 , callP: 0.00),


            'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '76s':ProgressInfo(raiseP: 0.31, callP: 0.53),


            'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '65s':ProgressInfo(raiseP: 0.41, callP: 0.59),


            'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '54s':ProgressInfo(raiseP: 0.28, callP: 0.58),

            'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '43s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


            'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


            'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

          };
      }
    } else if (tournaSelection.myTournaPosition == TournaPosition.BTN) {
      switch (tournaSelection.opponentTournaPosition) {

        case TournaPosition.UTG:
          return {
            'AA' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'KK' :ProgressInfo(raiseP: 0.93, callP: 0.07),
            'QQ' :ProgressInfo(raiseP: 0.38, callP: 0.62),
            'JJ' :ProgressInfo(raiseP: 0.43, callP: 0.57),
            'TT' :ProgressInfo(raiseP: 0.43, callP: 0.57),
            '99' :ProgressInfo(raiseP: 0.32, callP: 0.68),
            '88' :ProgressInfo(raiseP: 0.24, callP: 0.76),
            '77' :ProgressInfo(raiseP: 0.15, callP: 0.85),
            '66' :ProgressInfo(raiseP: 0.09, callP: 0.91),
            '55' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '44' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AKs':ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'AQs':ProgressInfo(raiseP: 0.53, callP: 0.47),
            'AJs':ProgressInfo(raiseP: 0.31, callP: 0.69),
            'ATs':ProgressInfo(raiseP: 0.71, callP: 0.29),
            'A9s':ProgressInfo(raiseP: 0.09, callP: 0.91),
            'A8s':ProgressInfo(raiseP: 0.17, callP: 0.83),
            'A7s':ProgressInfo(raiseP: 0.2 , callP: 0.8 ),
            'A6s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'A5s':ProgressInfo(raiseP: 0.44, callP: 0.56),
            'A4s':ProgressInfo(raiseP: 0.21, callP: 0.79),
            'A3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'A2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AKo':ProgressInfo(raiseP: 0.37, callP: 0.63),
            'KQs':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'KJs':ProgressInfo(raiseP: 0.47, callP: 0.53),
            'KTs':ProgressInfo(raiseP: 0.18, callP: 0.82),
            'K9s':ProgressInfo(raiseP: 0.25, callP: 0.75),
            'K8s':ProgressInfo(raiseP: 0.21, callP: 0.79),
            'K7s':ProgressInfo(raiseP: 0.10, callP: 0.9 ),
            'K6s':ProgressInfo(raiseP: 0.18, callP: 0.82),
            'K5s':ProgressInfo(raiseP: 0.0 , callP: 0.8 ),

            'AQo':ProgressInfo(raiseP: 0.12, callP: 0.88),
            'KQo':ProgressInfo(raiseP: 0.37, callP: 0.63),
            'QJs':ProgressInfo(raiseP: 0.38, callP: 0.62),
            'QTs':ProgressInfo(raiseP: 0.25, callP: 0.75),
            'Q9s':ProgressInfo(raiseP: 0.24, callP: 0.76),
            'Q8s':ProgressInfo(raiseP: 0.2 , callP: 0.4 ),


            'AJo':ProgressInfo(raiseP: 0.27, callP: 0.73),
            'KJo':ProgressInfo(raiseP: 0.15, callP: 0.45),
            'QJo':ProgressInfo(raiseP: 0.00, callP: 0.34),
            'JTs':ProgressInfo(raiseP: 0.44, callP: 0.56),
            'J9s':ProgressInfo(raiseP: 0.13, callP: 0.87),
            'J8s':ProgressInfo(raiseP: 0.09, callP: 0.91),


            'ATo':ProgressInfo(raiseP: 0.33, callP: 0.57),
            'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.19),
            'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.33),
            'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.55),
            'T9s':ProgressInfo(raiseP: 0.16, callP: 0.84),
            'T8s':ProgressInfo(raiseP: 0.11, callP: 0.89),
            'T7s':ProgressInfo(raiseP: 0.0 , callP: 0.74),


            'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '98s':ProgressInfo(raiseP: 0.08, callP: 0.92),
            '97s':ProgressInfo(raiseP: 0.00, callP: 1.0 ),


            'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '87s':ProgressInfo(raiseP: 0.24, callP: 0.76),
            '86s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),


            'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '76s':ProgressInfo(raiseP: 0.24, callP: 0.76),
            '75s':ProgressInfo(raiseP: 0.0 , callP: 0.61),


            'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '65s':ProgressInfo(raiseP: 0.31, callP: 0.69),
            '64s':ProgressInfo(raiseP: 0.0 , callP: 0.92),


            'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '54s':ProgressInfo(raiseP: 0.23, callP: 0.77),
            '53s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '43s':ProgressInfo(raiseP: 0.0 , callP: 0.2 ),


            'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


            'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

          };
        case TournaPosition.UTG1:
          return {
            'AA' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'KK' :ProgressInfo(raiseP: 1.00, callP: 0.00),
            'QQ' :ProgressInfo(raiseP: 0.37, callP: 0.63),
            'JJ' :ProgressInfo(raiseP: 0.42, callP: 0.58),
            'TT' :ProgressInfo(raiseP: 0.46, callP: 0.54),
            '99' :ProgressInfo(raiseP: 0.35, callP: 0.65),
            '88' :ProgressInfo(raiseP: 0.28, callP: 0.72),
            '77' :ProgressInfo(raiseP: 0.24, callP: 0.76),
            '66' :ProgressInfo(raiseP: 0.10, callP: 0.90),
            '55' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '44' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AKs':ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'AQs':ProgressInfo(raiseP: 0.67, callP: 0.33),
            'AJs':ProgressInfo(raiseP: 0.24, callP: 0.76),
            'ATs':ProgressInfo(raiseP: 0.56, callP: 0.44),
            'A9s':ProgressInfo(raiseP: 0.43, callP: 0.57),
            'A8s':ProgressInfo(raiseP: 0.31, callP: 0.69),
            'A7s':ProgressInfo(raiseP: 0.24, callP: 0.76),
            'A6s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'A5s':ProgressInfo(raiseP: 0.54, callP: 0.46),
            'A4s':ProgressInfo(raiseP: 0.19, callP: 0.81),
            'A3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'A2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AKo':ProgressInfo(raiseP: 0.42, callP: 0.58),
            'KQs':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'KJs':ProgressInfo(raiseP: 0.46, callP: 0.54),
            'KTs':ProgressInfo(raiseP: 0.41, callP: 0.59),
            'K9s':ProgressInfo(raiseP: 0.25, callP: 0.75),
            'K8s':ProgressInfo(raiseP: 0.12, callP: 0.88),
            'K7s':ProgressInfo(raiseP: 0.18, callP: 0.82),
            'K6s':ProgressInfo(raiseP: 0.28, callP: 0.72),
            'K5s':ProgressInfo(raiseP: 0.07, callP: 0.93),
            'K4s':ProgressInfo(raiseP: 0.00, callP: 0.17),

            'AQo':ProgressInfo(raiseP: 0.23, callP: 0.77),
            'KQo':ProgressInfo(raiseP: 0.33, callP: 0.67),
            'QJs':ProgressInfo(raiseP: 0.27, callP: 0.73),
            'QTs':ProgressInfo(raiseP: 0.25, callP: 0.75),
            'Q9s':ProgressInfo(raiseP: 0.21, callP: 0.79),
            'Q8s':ProgressInfo(raiseP: 0.25, callP: 0.75),


            'AJo':ProgressInfo(raiseP: 0.18, callP: 0.82),
            'KJo':ProgressInfo(raiseP: 0.26, callP: 0.71),
            'QJo':ProgressInfo(raiseP: 0.19, callP: 0.47),
            'JTs':ProgressInfo(raiseP: 0.62, callP: 0.38),
            'J9s':ProgressInfo(raiseP: 0.25, callP: 0.75),
            'J8s':ProgressInfo(raiseP: 0.09, callP: 0.91),


            'ATo':ProgressInfo(raiseP: 0.40, callP: 0.60),
            'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.21),
            'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.36),
            'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.57),
            'T9s':ProgressInfo(raiseP: 0.22, callP: 0.78),
            'T8s':ProgressInfo(raiseP: 0.11, callP: 0.89),
            'T7s':ProgressInfo(raiseP: 0.0 , callP: 0.87),


            'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '98s':ProgressInfo(raiseP: 0.13, callP: 0.87),
            '97s':ProgressInfo(raiseP: 0.00, callP: 1.0 ),
            '96s':ProgressInfo(raiseP: 0.00, callP: 0.28),


            'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '87s':ProgressInfo(raiseP: 0.20, callP: 0.80),
            '86s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),


            'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '76s':ProgressInfo(raiseP: 0.23, callP: 0.77),
            '75s':ProgressInfo(raiseP: 0.0 , callP: 0.69),


            'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '65s':ProgressInfo(raiseP: 0.35, callP: 0.75),
            '64s':ProgressInfo(raiseP: 0.0 , callP: 0.76),


            'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '54s':ProgressInfo(raiseP: 0.19, callP: 0.81),
            '53s':ProgressInfo(raiseP: 0.0 , callP: 0.98),

            'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '43s':ProgressInfo(raiseP: 0.0 , callP: 0.00),


            'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


            'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

          };
        case TournaPosition.LJ:
          return {
            'AA' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'KK' :ProgressInfo(raiseP: 1.00, callP: 0.00),
            'QQ' :ProgressInfo(raiseP: 0.64, callP: 0.36),
            'JJ' :ProgressInfo(raiseP: 0.47, callP: 0.53),
            'TT' :ProgressInfo(raiseP: 0.41, callP: 0.59),
            '99' :ProgressInfo(raiseP: 0.31, callP: 0.69),
            '88' :ProgressInfo(raiseP: 0.24, callP: 0.76),
            '77' :ProgressInfo(raiseP: 0.19, callP: 0.81),
            '66' :ProgressInfo(raiseP: 0.13, callP: 0.87),
            '55' :ProgressInfo(raiseP: 0.06, callP: 0.94),
            '44' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AKs':ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'AQs':ProgressInfo(raiseP: 0.78, callP: 0.22),
            'AJs':ProgressInfo(raiseP: 0.23, callP: 0.77),
            'ATs':ProgressInfo(raiseP: 0.35, callP: 0.65),
            'A9s':ProgressInfo(raiseP: 0.41, callP: 0.59),
            'A8s':ProgressInfo(raiseP: 0.31, callP: 0.69),
            'A7s':ProgressInfo(raiseP: 0.25, callP: 0.75),
            'A6s':ProgressInfo(raiseP: 0.25, callP: 0.75),
            'A5s':ProgressInfo(raiseP: 0.48, callP: 0.52),
            'A4s':ProgressInfo(raiseP: 0.35, callP: 0.65),
            'A3s':ProgressInfo(raiseP: 0.23, callP: 0.77),
            'A2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AKo':ProgressInfo(raiseP: 0.62, callP: 0.38),
            'KQs':ProgressInfo(raiseP: 0.19, callP: 0.81),
            'KJs':ProgressInfo(raiseP: 0.49, callP: 0.51),
            'KTs':ProgressInfo(raiseP: 0.52, callP: 0.48),
            'K9s':ProgressInfo(raiseP: 0.40, callP: 0.60),
            'K8s':ProgressInfo(raiseP: 0.13, callP: 0.87),
            'K7s':ProgressInfo(raiseP: 0.38, callP: 0.62),
            'K6s':ProgressInfo(raiseP: 0.36, callP: 0.64),
            'K5s':ProgressInfo(raiseP: 0.15, callP: 0.85),
            'K4s':ProgressInfo(raiseP: 0.00, callP: 0.10),

            'AQo':ProgressInfo(raiseP: 0.39, callP: 0.61),
            'KQo':ProgressInfo(raiseP: 0.28, callP: 0.72),
            'QJs':ProgressInfo(raiseP: 0.31, callP: 0.69),
            'QTs':ProgressInfo(raiseP: 0.18, callP: 0.82),
            'Q9s':ProgressInfo(raiseP: 0.20, callP: 0.80),
            'Q8s':ProgressInfo(raiseP: 0.50, callP: 0.50),


            'AJo':ProgressInfo(raiseP: 0.22, callP: 0.78),
            'KJo':ProgressInfo(raiseP: 0.31, callP: 0.69),
            'QJo':ProgressInfo(raiseP: 0.35, callP: 0.50),
            'JTs':ProgressInfo(raiseP: 0.59, callP: 0.41),
            'J9s':ProgressInfo(raiseP: 0.26, callP: 0.74),
            'J8s':ProgressInfo(raiseP: 0.30, callP: 0.70),


            'ATo':ProgressInfo(raiseP: 0.49, callP: 0.51),
            'KTo':ProgressInfo(raiseP: 0.15, callP: 0.30),
            'QTo':ProgressInfo(raiseP: 0.11, callP: 0.32),
            'JTo':ProgressInfo(raiseP: 0.00, callP: 0.40),
            'T9s':ProgressInfo(raiseP: 0.29, callP: 0.71),
            'T8s':ProgressInfo(raiseP: 0.15, callP: 0.85),
            'T7s':ProgressInfo(raiseP: 0.0 , callP: 0.38),


            'A9o':ProgressInfo(raiseP: 0.11, callP: 0.0 ),
            '98s':ProgressInfo(raiseP: 0.12, callP: 0.88),
            '97s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            '96s':ProgressInfo(raiseP: 0.00, callP: 0.07),


            'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '87s':ProgressInfo(raiseP: 0.30, callP: 0.70),
            '86s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),


            'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '76s':ProgressInfo(raiseP: 0.38, callP: 0.62),
            '75s':ProgressInfo(raiseP: 0.0 , callP: 0.40),


            'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '65s':ProgressInfo(raiseP: 0.47, callP: 0.53),
            '64s':ProgressInfo(raiseP: 0.0 , callP: 0.43),


            'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '54s':ProgressInfo(raiseP: 0.30, callP: 0.70),
            '53s':ProgressInfo(raiseP: 0.0 , callP: 0.54),

            'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '43s':ProgressInfo(raiseP: 0.0 , callP: 0.00),


            'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


            'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

          };
        case TournaPosition.HJ:
          return {
            'AA' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'KK' :ProgressInfo(raiseP: 1.00, callP: 0.00),
            'QQ' :ProgressInfo(raiseP: 0.83, callP: 0.17),
            'JJ' :ProgressInfo(raiseP: 0.40, callP: 0.60),
            'TT' :ProgressInfo(raiseP: 0.36, callP: 0.64),
            '99' :ProgressInfo(raiseP: 0.27, callP: 0.73),
            '88' :ProgressInfo(raiseP: 0.26, callP: 0.74),
            '77' :ProgressInfo(raiseP: 0.18, callP: 0.82),
            '66' :ProgressInfo(raiseP: 0.13, callP: 0.87),
            '55' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '44' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AKs':ProgressInfo(raiseP: 1.00, callP: 0.0 ),
            'AQs':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'AJs':ProgressInfo(raiseP: 0.18, callP: 0.82),
            'ATs':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'A9s':ProgressInfo(raiseP: 0.14, callP: 0.86),
            'A8s':ProgressInfo(raiseP: 0.40, callP: 0.60),
            'A7s':ProgressInfo(raiseP: 0.37, callP: 0.63),
            'A6s':ProgressInfo(raiseP: 0.23, callP: 0.77),
            'A5s':ProgressInfo(raiseP: 0.45, callP: 0.55),
            'A4s':ProgressInfo(raiseP: 0.36, callP: 0.64),
            'A3s':ProgressInfo(raiseP: 0.22, callP: 0.78),
            'A2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AKo':ProgressInfo(raiseP: 0.84, callP: 0.16),
            'KQs':ProgressInfo(raiseP: 0.33, callP: 0.67),
            'KJs':ProgressInfo(raiseP: 0.28, callP: 0.72),
            'KTs':ProgressInfo(raiseP: 0.41, callP: 0.59),
            'K9s':ProgressInfo(raiseP: 0.35, callP: 0.65),
            'K8s':ProgressInfo(raiseP: 0.27, callP: 0.73),
            'K7s':ProgressInfo(raiseP: 0.33, callP: 0.67),
            'K6s':ProgressInfo(raiseP: 0.29, callP: 0.71),
            'K5s':ProgressInfo(raiseP: 0.36, callP: 0.64),
            'K4s':ProgressInfo(raiseP: 0.10, callP: 0.90),
            'K3s':ProgressInfo(raiseP: 0.00, callP: 0.09),

            'AQo':ProgressInfo(raiseP: 0.27, callP: 0.73),
            'KQo':ProgressInfo(raiseP: 0.27, callP: 0.73),
            'QJs':ProgressInfo(raiseP: 0.11, callP: 0.89),
            'QTs':ProgressInfo(raiseP: 0.29, callP: 0.71),
            'Q9s':ProgressInfo(raiseP: 0.26, callP: 0.74),
            'Q8s':ProgressInfo(raiseP: 0.48, callP: 0.52),
            'Q7s':ProgressInfo(raiseP: 0.00, callP: 0.29),
            'Q6s':ProgressInfo(raiseP: 0.46, callP: 0.33),


            'AJo':ProgressInfo(raiseP: 0.35, callP: 0.65),
            'KJo':ProgressInfo(raiseP: 0.26, callP: 0.74),
            'QJo':ProgressInfo(raiseP: 0.44, callP: 0.56),
            'JTs':ProgressInfo(raiseP: 0.56, callP: 0.44),
            'J9s':ProgressInfo(raiseP: 0.42, callP: 0.58),
            'J8s':ProgressInfo(raiseP: 0.45, callP: 0.55),
            'J7s':ProgressInfo(raiseP: 0.09, callP: 0.00),


            'ATo':ProgressInfo(raiseP: 0.32, callP: 0.68),
            'KTo':ProgressInfo(raiseP: 0.27, callP: 0.49),
            'QTo':ProgressInfo(raiseP: 0.17, callP: 0.43),
            'JTo':ProgressInfo(raiseP: 0.18, callP: 0.49),
            'T9s':ProgressInfo(raiseP: 0.36, callP: 0.64),
            'T8s':ProgressInfo(raiseP: 0.33, callP: 0.67),
            'T7s':ProgressInfo(raiseP: 0.26, callP: 0.49),


            'A9o':ProgressInfo(raiseP: 0.47, callP: 0.0 ),
            '98s':ProgressInfo(raiseP: 0.15, callP: 0.85),
            '97s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            '96s':ProgressInfo(raiseP: 0.00, callP: 0.39),


            'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '87s':ProgressInfo(raiseP: 0.31, callP: 0.69),
            '86s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),


            'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '76s':ProgressInfo(raiseP: 0.41, callP: 0.59),
            '75s':ProgressInfo(raiseP: 0.0 , callP: 0.57),


            'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '65s':ProgressInfo(raiseP: 0.44, callP: 0.56),
            '64s':ProgressInfo(raiseP: 0.0 , callP: 0.44),


            'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '54s':ProgressInfo(raiseP: 0.36, callP: 0.64),
            '53s':ProgressInfo(raiseP: 0.0 , callP: 0.60),

            'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '43s':ProgressInfo(raiseP: 0.0 , callP: 0.00),


            'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


            'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

          };
        case TournaPosition.CO:
          return {
            'AA' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'KK' :ProgressInfo(raiseP: 1.00, callP: 0.00),
            'QQ' :ProgressInfo(raiseP: 0.90, callP: 0.10),
            'JJ' :ProgressInfo(raiseP: 0.68, callP: 0.32),
            'TT' :ProgressInfo(raiseP: 0.48, callP: 0.52),
            '99' :ProgressInfo(raiseP: 0.31, callP: 0.69),
            '88' :ProgressInfo(raiseP: 0.26, callP: 0.74),
            '77' :ProgressInfo(raiseP: 0.24, callP: 0.76),
            '66' :ProgressInfo(raiseP: 0.22, callP: 0.78),
            '55' :ProgressInfo(raiseP: 0.10, callP: 0.90),
            '44' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AKs':ProgressInfo(raiseP: 1.00, callP: 0.0 ),
            'AQs':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'AJs':ProgressInfo(raiseP: 0.29, callP: 0.71),
            'ATs':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'A9s':ProgressInfo(raiseP: 0.06, callP: 0.94),
            'A8s':ProgressInfo(raiseP: 0.19, callP: 0.81),
            'A7s':ProgressInfo(raiseP: 0.37, callP: 0.63),
            'A6s':ProgressInfo(raiseP: 0.33, callP: 0.67),
            'A5s':ProgressInfo(raiseP: 0.55, callP: 0.45),
            'A4s':ProgressInfo(raiseP: 0.49, callP: 0.51),
            'A3s':ProgressInfo(raiseP: 0.39, callP: 0.61),
            'A2s':ProgressInfo(raiseP: 0.18, callP: 0.82),

            'AKo':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'KQs':ProgressInfo(raiseP: 0.38, callP: 0.67),
            'KJs':ProgressInfo(raiseP: 0.54, callP: 0.46),
            'KTs':ProgressInfo(raiseP: 0.37, callP: 0.63),
            'K9s':ProgressInfo(raiseP: 0.37, callP: 0.63),
            'K8s':ProgressInfo(raiseP: 0.44, callP: 0.56),
            'K7s':ProgressInfo(raiseP: 0.38, callP: 0.62),
            'K6s':ProgressInfo(raiseP: 0.37, callP: 0.63),
            'K5s':ProgressInfo(raiseP: 0.26, callP: 0.74),
            'K4s':ProgressInfo(raiseP: 0.27, callP: 0.73),
            'K3s':ProgressInfo(raiseP: 0.17, callP: 0.83),

            'AQo':ProgressInfo(raiseP: 0.39, callP: 0.61),
            'KQo':ProgressInfo(raiseP: 0.36, callP: 0.64),
            'QJs':ProgressInfo(raiseP: 0.15, callP: 0.85),
            'QTs':ProgressInfo(raiseP: 0.31, callP: 0.69),
            'Q9s':ProgressInfo(raiseP: 0.36, callP: 0.64),
            'Q8s':ProgressInfo(raiseP: 0.36, callP: 0.64),
            'Q7s':ProgressInfo(raiseP: 0.42, callP: 0.52),
            'Q6s':ProgressInfo(raiseP: 0.50, callP: 0.50),
            'Q5s':ProgressInfo(raiseP: 0.08, callP: 0.38),


            'AJo':ProgressInfo(raiseP: 0.45, callP: 0.55),
            'KJo':ProgressInfo(raiseP: 0.32, callP: 0.68),
            'QJo':ProgressInfo(raiseP: 0.43, callP: 0.57),
            'JTs':ProgressInfo(raiseP: 0.60, callP: 0.40),
            'J9s':ProgressInfo(raiseP: 0.38, callP: 0.62),
            'J8s':ProgressInfo(raiseP: 0.24, callP: 0.76),
            'J7s':ProgressInfo(raiseP: 0.58, callP: 0.15),


            'ATo':ProgressInfo(raiseP: 0.39, callP: 0.61),
            'KTo':ProgressInfo(raiseP: 0.47, callP: 0.53),
            'QTo':ProgressInfo(raiseP: 0.48, callP: 0.52),
            'JTo':ProgressInfo(raiseP: 0.38, callP: 0.62),
            'T9s':ProgressInfo(raiseP: 0.46, callP: 0.54),
            'T8s':ProgressInfo(raiseP: 0.42, callP: 0.58),
            'T7s':ProgressInfo(raiseP: 0.26, callP: 0.74),


            'A9o':ProgressInfo(raiseP: 0.61, callP: 0.39),
            '98s':ProgressInfo(raiseP: 0.33, callP: 0.67),
            '97s':ProgressInfo(raiseP: 0.16, callP: 0.84),
            '96s':ProgressInfo(raiseP: 0.00, callP: 0.28),


            'A8o':ProgressInfo(raiseP: 0.38, callP: 0.0 ),
            '87s':ProgressInfo(raiseP: 0.37, callP: 0.63),
            '86s':ProgressInfo(raiseP: 0.09, callP: 0.91),


            'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '76s':ProgressInfo(raiseP: 0.45, callP: 0.55),
            '75s':ProgressInfo(raiseP: 0.0 , callP: 0.51),


            'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '65s':ProgressInfo(raiseP: 0.52, callP: 0.48),
            '64s':ProgressInfo(raiseP: 0.0 , callP: 0.54),


            'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '54s':ProgressInfo(raiseP: 0.48, callP: 0.52),
            '53s':ProgressInfo(raiseP: 0.0 , callP: 0.38),

            'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '43s':ProgressInfo(raiseP: 0.0 , callP: 0.00),


            'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


            'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

          };
      }
    } else if (tournaSelection.myTournaPosition == TournaPosition.SB) {
      switch (tournaSelection.opponentTournaPosition) {

        case TournaPosition.UTG:
          return {
            'AA' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'KK' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'QQ' :ProgressInfo(raiseP: 0.82, callP: 0.18),
            'JJ' :ProgressInfo(raiseP: 0.56, callP: 0.44),
            'TT' :ProgressInfo(raiseP: 0.31, callP: 0.69),
            '99' :ProgressInfo(raiseP: 0.13, callP: 0.87),
            '88' :ProgressInfo(raiseP: 0.11, callP: 0.89),
            '77' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '66' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '55' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '44' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AKs':ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'AQs':ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'AJs':ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'ATs':ProgressInfo(raiseP: 0.8 , callP: 0.2 ),
            'A9s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'A8s':ProgressInfo(raiseP: 0.25, callP: 0.75),
            'A7s':ProgressInfo(raiseP: 0.24, callP: 0.76),
            'A6s':ProgressInfo(raiseP: 0.17, callP: 0.83),
            'A5s':ProgressInfo(raiseP: 0.37, callP: 0.63),
            'A4s':ProgressInfo(raiseP: 0.25, callP: 0.75),
            'A3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'A2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AKo':ProgressInfo(raiseP: 0.65, callP: 0.35),
            'KQs':ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'KJs':ProgressInfo(raiseP: 0.8 , callP: 0.2 ),
            'KTs':ProgressInfo(raiseP: 0.23, callP: 0.77),
            'K9s':ProgressInfo(raiseP: 0.12, callP: 0.88),
            'K8s':ProgressInfo(raiseP: 0.0 , callP: 0.89),
            'K7s':ProgressInfo(raiseP: 0.0 , callP: 0.58),
            'K6s':ProgressInfo(raiseP: 0.0 , callP: 0.55),
            'K5s':ProgressInfo(raiseP: 0.0 , callP: 0.1 ),

            'AQo':ProgressInfo(raiseP: 0.18, callP: 0.82),
            'KQo':ProgressInfo(raiseP: 0.13, callP: 0.87),
            'QJs':ProgressInfo(raiseP: 0.35, callP: 0.65),
            'QTs':ProgressInfo(raiseP: 0.15, callP: 0.85),
            'Q9s':ProgressInfo(raiseP: 0.08, callP: 0.92),



            'AJo':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.33),
            'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.06),
            'JTs':ProgressInfo(raiseP: 0.34, callP: 0.66),
            'J9s':ProgressInfo(raiseP: 0.19, callP: 0.81),
            'J8s':ProgressInfo(raiseP: 0.0 , callP: 0.41),


            'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.2 ),
            'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.2 ),
            'T9s':ProgressInfo(raiseP: 0.32, callP: 0.68),
            'T8s':ProgressInfo(raiseP: 0.15, callP: 0.85),
            'T7s':ProgressInfo(raiseP: 0.0 , callP: 0.09),


            'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '98s':ProgressInfo(raiseP: 0.2 , callP: 0.8 ),
            '97s':ProgressInfo(raiseP: 0.0 , callP: 0.51),


            'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '87s':ProgressInfo(raiseP: 0.31, callP: 0.69),
            '86s':ProgressInfo(raiseP: 0.0 , callP: 0.42),


            'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '76s':ProgressInfo(raiseP: 0.22, callP: 0.78),
            '75s':ProgressInfo(raiseP: 0.0 , callP: 0.07 ),


            'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '65s':ProgressInfo(raiseP: 0.35, callP: 0.65),



            'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '54s':ProgressInfo(raiseP: 0.16, callP: 0.84),
            '53s':ProgressInfo(raiseP: 0.0 , callP: 0.09),

            'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),



            'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


            'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

          };
        case TournaPosition.UTG1:
          return {
            'AA' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'KK' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'QQ' :ProgressInfo(raiseP: 1.00, callP: 0.00),
            'JJ' :ProgressInfo(raiseP: 0.59, callP: 0.41),
            'TT' :ProgressInfo(raiseP: 0.44, callP: 0.56),
            '99' :ProgressInfo(raiseP: 0.25, callP: 0.75),
            '88' :ProgressInfo(raiseP: 0.11, callP: 0.89),
            '77' :ProgressInfo(raiseP: 0.00, callP: 1.00),
            '66' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '55' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '44' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AKs':ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'AQs':ProgressInfo(raiseP: 0.91, callP: 0.09),
            'AJs':ProgressInfo(raiseP: 0.90, callP: 0.10),
            'ATs':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'A9s':ProgressInfo(raiseP: 0.11, callP: 0.89),
            'A8s':ProgressInfo(raiseP: 0.24, callP: 0.76),
            'A7s':ProgressInfo(raiseP: 0.23, callP: 0.77),
            'A6s':ProgressInfo(raiseP: 0.10, callP: 0.90),
            'A5s':ProgressInfo(raiseP: 0.54, callP: 0.46),
            'A4s':ProgressInfo(raiseP: 0.21, callP: 0.79),
            'A3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'A2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AKo':ProgressInfo(raiseP: 0.68, callP: 0.32),
            'KQs':ProgressInfo(raiseP: 0.94, callP: 0.06),
            'KJs':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'KTs':ProgressInfo(raiseP: 0.37, callP: 0.63),
            'K9s':ProgressInfo(raiseP: 0.11, callP: 0.89),
            'K8s':ProgressInfo(raiseP: 0.06, callP: 0.94),
            'K7s':ProgressInfo(raiseP: 0.21, callP: 0.70),
            'K6s':ProgressInfo(raiseP: 0.21, callP: 0.76),
            'K5s':ProgressInfo(raiseP: 0.00, callP: 0.24),

            'AQo':ProgressInfo(raiseP: 0.35, callP: 0.65),
            'KQo':ProgressInfo(raiseP: 0.14, callP: 0.86),
            'QJs':ProgressInfo(raiseP: 0.72, callP: 0.28),
            'QTs':ProgressInfo(raiseP: 0.19, callP: 0.81),
            'Q9s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'Q8s':ProgressInfo(raiseP: 0.00, callP: 0.20),



            'AJo':ProgressInfo(raiseP: 0.10, callP: 0.90),
            'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.56),
            'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.28),
            'JTs':ProgressInfo(raiseP: 0.37, callP: 0.63),
            'J9s':ProgressInfo(raiseP: 0.29, callP: 0.71),
            'J8s':ProgressInfo(raiseP: 0.0 , callP: 0.41),


            'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.56),
            'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.07),
            'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.17),
            'T9s':ProgressInfo(raiseP: 0.38, callP: 0.62),
            'T8s':ProgressInfo(raiseP: 0.17, callP: 0.83),



            'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '98s':ProgressInfo(raiseP: 0.28, callP: 0.72),
            '97s':ProgressInfo(raiseP: 0.0 , callP: 0.68),


            'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '87s':ProgressInfo(raiseP: 0.31, callP: 0.69),
            '86s':ProgressInfo(raiseP: 0.0 , callP: 0.44),


            'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '76s':ProgressInfo(raiseP: 0.28, callP: 0.72),



            'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '65s':ProgressInfo(raiseP: 0.30, callP: 0.70),



            'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '54s':ProgressInfo(raiseP: 0.14, callP: 0.86),
            '53s':ProgressInfo(raiseP: 0.0 , callP: 0.06),

            'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),



            'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


            'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

          };
        case TournaPosition.LJ:
          return {
            'AA' :ProgressInfo(raiseP: 1.00, callP: 0.0 ),
            'KK' :ProgressInfo(raiseP: 1.00, callP: 0.0 ),
            'QQ' :ProgressInfo(raiseP: 1.00, callP: 0.00),
            'JJ' :ProgressInfo(raiseP: 0.70, callP: 0.30),
            'TT' :ProgressInfo(raiseP: 0.59, callP: 0.41),
            '99' :ProgressInfo(raiseP: 0.33, callP: 0.67),
            '88' :ProgressInfo(raiseP: 0.16, callP: 0.84),
            '77' :ProgressInfo(raiseP: 0.00, callP: 1.00),
            '66' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '55' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '44' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AKs':ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'AQs':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'AJs':ProgressInfo(raiseP: 0.81, callP: 0.19),
            'ATs':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'A9s':ProgressInfo(raiseP: 0.21, callP: 0.79),
            'A8s':ProgressInfo(raiseP: 0.30, callP: 0.70),
            'A7s':ProgressInfo(raiseP: 0.09, callP: 0.91),
            'A6s':ProgressInfo(raiseP: 0.26, callP: 0.74),
            'A5s':ProgressInfo(raiseP: 0.51, callP: 0.49),
            'A4s':ProgressInfo(raiseP: 0.10, callP: 0.90),
            'A3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'A2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AKo':ProgressInfo(raiseP: 0.85, callP: 0.15),
            'KQs':ProgressInfo(raiseP: 0.86, callP: 0.14),
            'KJs':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'KTs':ProgressInfo(raiseP: 0.40, callP: 0.60),
            'K9s':ProgressInfo(raiseP: 0.27, callP: 0.73),
            'K8s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'K7s':ProgressInfo(raiseP: 0.27, callP: 0.73),
            'K6s':ProgressInfo(raiseP: 0.25, callP: 0.75),
            'K5s':ProgressInfo(raiseP: 0.00, callP: 0.37),

            'AQo':ProgressInfo(raiseP: 0.47, callP: 0.53),
            'KQo':ProgressInfo(raiseP: 0.18, callP: 0.82),
            'QJs':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'QTs':ProgressInfo(raiseP: 0.50, callP: 0.50),
            'Q9s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'Q8s':ProgressInfo(raiseP: 0.00, callP: 0.48),



            'AJo':ProgressInfo(raiseP: 0.08, callP: 0.92),
            'KJo':ProgressInfo(raiseP: 0.18, callP: 0.82),
            'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.54),
            'JTs':ProgressInfo(raiseP: 0.62, callP: 0.38),
            'J9s':ProgressInfo(raiseP: 0.35, callP: 0.65),
            'J8s':ProgressInfo(raiseP: 0.15, callP: 0.85),


            'ATo':ProgressInfo(raiseP: 0.10, callP: 0.90),
            'KTo':ProgressInfo(raiseP: 0.00, callP: 0.10),
            'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.20),
            'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.23),
            'T9s':ProgressInfo(raiseP: 0.41, callP: 0.59),
            'T8s':ProgressInfo(raiseP: 0.15, callP: 0.85),



            'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '98s':ProgressInfo(raiseP: 0.24, callP: 0.76),
            '97s':ProgressInfo(raiseP: 0.07, callP: 0.93),


            'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '87s':ProgressInfo(raiseP: 0.43, callP: 0.57),
            '86s':ProgressInfo(raiseP: 0.0 , callP: 0.36),


            'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '76s':ProgressInfo(raiseP: 0.22, callP: 0.78),



            'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '65s':ProgressInfo(raiseP: 0.34, callP: 0.66),



            'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '54s':ProgressInfo(raiseP: 0.22, callP: 0.78),

            'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),



            'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


            'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

          };
        case TournaPosition.HJ:
          return {
            'AA' :ProgressInfo(raiseP: 1.00, callP: 0.0 ),
            'KK' :ProgressInfo(raiseP: 1.00, callP: 0.0 ),
            'QQ' :ProgressInfo(raiseP: 1.00, callP: 0.00),
            'JJ' :ProgressInfo(raiseP: 0.80, callP: 0.20),
            'TT' :ProgressInfo(raiseP: 0.65, callP: 0.35),
            '99' :ProgressInfo(raiseP: 0.45, callP: 0.55),
            '88' :ProgressInfo(raiseP: 0.25, callP: 0.75),
            '77' :ProgressInfo(raiseP: 0.09, callP: 0.91),
            '66' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '55' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '44' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AKs':ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'AQs':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'AJs':ProgressInfo(raiseP: 0.84, callP: 0.16),
            'ATs':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'A9s':ProgressInfo(raiseP: 0.33, callP: 0.67),
            'A8s':ProgressInfo(raiseP: 0.44, callP: 0.56),
            'A7s':ProgressInfo(raiseP: 0.11, callP: 0.89),
            'A6s':ProgressInfo(raiseP: 0.11, callP: 0.89),
            'A5s':ProgressInfo(raiseP: 0.57, callP: 0.43),
            'A4s':ProgressInfo(raiseP: 0.26, callP: 0.74),
            'A3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'A2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AKo':ProgressInfo(raiseP: 0.89, callP: 0.11),
            'KQs':ProgressInfo(raiseP: 0.86, callP: 0.14),
            'KJs':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'KTs':ProgressInfo(raiseP: 0.83, callP: 0.17),
            'K9s':ProgressInfo(raiseP: 0.28, callP: 0.72),
            'K8s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'K7s':ProgressInfo(raiseP: 0.20, callP: 0.80),
            'K6s':ProgressInfo(raiseP: 0.40, callP: 0.60),
            'K5s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'K4s':ProgressInfo(raiseP: 0.00, callP: 0.48),

            'AQo':ProgressInfo(raiseP: 0.61, callP: 0.39),
            'KQo':ProgressInfo(raiseP: 0.29, callP: 0.71),
            'QJs':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'QTs':ProgressInfo(raiseP: 0.81, callP: 0.19),
            'Q9s':ProgressInfo(raiseP: 0.16, callP: 0.84),
            'Q8s':ProgressInfo(raiseP: 0.17, callP: 0.83),
            'Q6s':ProgressInfo(raiseP: 0.00, callP: 0.33),
            'Q5s':ProgressInfo(raiseP: 0.00, callP: 0.08),



            'AJo':ProgressInfo(raiseP: 0.28, callP: 0.72),
            'KJo':ProgressInfo(raiseP: 0.25, callP: 0.75),
            'QJo':ProgressInfo(raiseP: 0.00, callP: 0.87),
            'JTs':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'J9s':ProgressInfo(raiseP: 0.46, callP: 0.54),
            'J8s':ProgressInfo(raiseP: 0.24, callP: 0.76),
            'J7s':ProgressInfo(raiseP: 0.00, callP: 0.27),


            'ATo':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'KTo':ProgressInfo(raiseP: 0.00, callP: 0.39),
            'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.39),
            'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.39),
            'T9s':ProgressInfo(raiseP: 0.61, callP: 0.39),
            'T8s':ProgressInfo(raiseP: 0.23, callP: 0.77),
            'T7s':ProgressInfo(raiseP: 0.00, callP: 0.27),



            'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '98s':ProgressInfo(raiseP: 0.32, callP: 0.68),
            '97s':ProgressInfo(raiseP: 0.15, callP: 0.85),


            'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '87s':ProgressInfo(raiseP: 0.45, callP: 0.55),
            '86s':ProgressInfo(raiseP: 0.09, callP: 0.62),


            'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '76s':ProgressInfo(raiseP: 0.44, callP: 0.56),



            'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '65s':ProgressInfo(raiseP: 0.46, callP: 0.54),



            'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '54s':ProgressInfo(raiseP: 0.19, callP: 0.81),

            'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),



            'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


            'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

          };
        case TournaPosition.CO:
          return {
            'AA' :ProgressInfo(raiseP: 1.00, callP: 0.0 ),
            'KK' :ProgressInfo(raiseP: 1.00, callP: 0.0 ),
            'QQ' :ProgressInfo(raiseP: 1.00, callP: 0.00),
            'JJ' :ProgressInfo(raiseP: 0.91, callP: 0.09),
            'TT' :ProgressInfo(raiseP: 0.65, callP: 0.35),
            '99' :ProgressInfo(raiseP: 0.59, callP: 0.41),
            '88' :ProgressInfo(raiseP: 0.55, callP: 0.45),
            '77' :ProgressInfo(raiseP: 0.30, callP: 0.70),
            '66' :ProgressInfo(raiseP: 0.15, callP: 0.85),
            '55' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '44' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AKs':ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'AQs':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'AJs':ProgressInfo(raiseP: 0.91, callP: 0.09),
            'ATs':ProgressInfo(raiseP: 0.90, callP: 0.10),
            'A9s':ProgressInfo(raiseP: 0.71, callP: 0.29),
            'A8s':ProgressInfo(raiseP: 0.54, callP: 0.46),
            'A7s':ProgressInfo(raiseP: 0.33, callP: 0.67),
            'A6s':ProgressInfo(raiseP: 0.14, callP: 0.86),
            'A5s':ProgressInfo(raiseP: 0.68, callP: 0.32),
            'A4s':ProgressInfo(raiseP: 0.39, callP: 0.61),
            'A3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'A2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),


            'AKo':ProgressInfo(raiseP: 0.92, callP: 0.08),
            'KQs':ProgressInfo(raiseP: 0.89, callP: 0.11),
            'KJs':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'KTs':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'K9s':ProgressInfo(raiseP: 0.32, callP: 0.68),
            'K8s':ProgressInfo(raiseP: 0.24, callP: 0.76),
            'K7s':ProgressInfo(raiseP: 0.26, callP: 0.74),
            'K6s':ProgressInfo(raiseP: 0.40, callP: 0.60),
            'K5s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'K4s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'K3s':ProgressInfo(raiseP: 0.00, callP: 0.67),

            'AQo':ProgressInfo(raiseP: 0.53, callP: 0.47),
            'KQo':ProgressInfo(raiseP: 0.59, callP: 0.41),
            'QJs':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'QTs':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'Q9s':ProgressInfo(raiseP: 0.34, callP: 0.66),
            'Q8s':ProgressInfo(raiseP: 0.15, callP: 0.85),
            'Q7s':ProgressInfo(raiseP: 0.00, callP: 0.47),
            'Q6s':ProgressInfo(raiseP: 0.00, callP: 0.84),
            'Q5s':ProgressInfo(raiseP: 0.00, callP: 0.40),



            'AJo':ProgressInfo(raiseP: 0.55, callP: 0.45),
            'KJo':ProgressInfo(raiseP: 0.20, callP: 0.80),
            'QJo':ProgressInfo(raiseP: 0.13, callP: 0.87),
            'JTs':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'J9s':ProgressInfo(raiseP: 0.44, callP: 0.56),
            'J8s':ProgressInfo(raiseP: 0.28, callP: 0.72),
            'J7s':ProgressInfo(raiseP: 0.00, callP: 0.13),


            'ATo':ProgressInfo(raiseP: 0.11, callP: 0.89),
            'KTo':ProgressInfo(raiseP: 0.17, callP: 0.83),
            'QTo':ProgressInfo(raiseP: 0.09, callP: 0.67),
            'JTo':ProgressInfo(raiseP: 0.15, callP: 0.70),
            'T9s':ProgressInfo(raiseP: 0.78, callP: 0.22),
            'T8s':ProgressInfo(raiseP: 0.52, callP: 0.48),
            'T7s':ProgressInfo(raiseP: 0.07, callP: 0.66),



            'A9o':ProgressInfo(raiseP: 0.0 , callP: 0.66),
            '98s':ProgressInfo(raiseP: 0.46, callP: 0.54),
            '97s':ProgressInfo(raiseP: 0.19, callP: 0.81),


            'A8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '87s':ProgressInfo(raiseP: 0.52, callP: 0.48),
            '86s':ProgressInfo(raiseP: 0.18, callP: 0.82),


            'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '76s':ProgressInfo(raiseP: 0.53, callP: 0.47),
            '75s':ProgressInfo(raiseP: 0.00, callP: 0.09),



            'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '65s':ProgressInfo(raiseP: 0.49, callP: 0.51),



            'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '54s':ProgressInfo(raiseP: 0.26, callP: 0.74),

            'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),



            'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


            'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

          };
        case TournaPosition.BTN:
          return {
            'AA' :ProgressInfo(raiseP: 1.00, callP: 0.0 ),
            'KK' :ProgressInfo(raiseP: 1.00, callP: 0.0 ),
            'QQ' :ProgressInfo(raiseP: 1.00, callP: 0.00),
            'JJ' :ProgressInfo(raiseP: 1.00, callP: 0.00),
            'TT' :ProgressInfo(raiseP: 0.80, callP: 0.20),
            '99' :ProgressInfo(raiseP: 0.47, callP: 0.53),
            '88' :ProgressInfo(raiseP: 0.58, callP: 0.42),
            '77' :ProgressInfo(raiseP: 0.65, callP: 0.35),
            '66' :ProgressInfo(raiseP: 0.30, callP: 0.70),
            '55' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '44' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AKs':ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'AQs':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'AJs':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'ATs':ProgressInfo(raiseP: 0.70, callP: 0.30),
            'A9s':ProgressInfo(raiseP: 0.88, callP: 0.12),
            'A8s':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'A7s':ProgressInfo(raiseP: 0.70, callP: 0.30),
            'A6s':ProgressInfo(raiseP: 0.30, callP: 0.70),
            'A5s':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'A4s':ProgressInfo(raiseP: 0.92, callP: 0.08),
            'A3s':ProgressInfo(raiseP: 0.45, callP: 0.55),
            'A2s':ProgressInfo(raiseP: 0.11, callP: 0.89),


            'AKo':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'KQs':ProgressInfo(raiseP: 0.81, callP: 0.19),
            'KJs':ProgressInfo(raiseP: 0.82, callP: 0.18),
            'KTs':ProgressInfo(raiseP: 0.94, callP: 0.06),
            'K9s':ProgressInfo(raiseP: 0.89, callP: 0.11),
            'K8s':ProgressInfo(raiseP: 0.22, callP: 0.78),
            'K7s':ProgressInfo(raiseP: 0.34, callP: 0.66),
            'K6s':ProgressInfo(raiseP: 0.77, callP: 0.23),
            'K5s':ProgressInfo(raiseP: 0.45, callP: 0.55),
            'K4s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'K3s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'K2s':ProgressInfo(raiseP: 0.00, callP: 1.00),

            'AQo':ProgressInfo(raiseP: 0.42, callP: 0.58),
            'KQo':ProgressInfo(raiseP: 0.92, callP: 0.08),
            'QJs':ProgressInfo(raiseP: 0.89, callP: 0.11),
            'QTs':ProgressInfo(raiseP: 0.92, callP: 0.08),
            'Q9s':ProgressInfo(raiseP: 0.55, callP: 0.45),
            'Q8s':ProgressInfo(raiseP: 0.18, callP: 0.82),
            'Q7s':ProgressInfo(raiseP: 0.09, callP: 0.91),
            'Q6s':ProgressInfo(raiseP: 0.52, callP: 0.48),
            'Q5s':ProgressInfo(raiseP: 0.16, callP: 0.84),
            'Q4s':ProgressInfo(raiseP: 0.00, callP: 0.56),



            'AJo':ProgressInfo(raiseP: 0.74, callP: 0.26),
            'KJo':ProgressInfo(raiseP: 0.56, callP: 0.44),
            'QJo':ProgressInfo(raiseP: 0.35, callP: 0.65),
            'JTs':ProgressInfo(raiseP: 0.93, callP: 0.07),
            'J9s':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'J8s':ProgressInfo(raiseP: 0.32, callP: 0.68),
            'J7s':ProgressInfo(raiseP: 0.14, callP: 0.86),
            'J6s':ProgressInfo(raiseP: 0.00, callP: 0.13),


            'ATo':ProgressInfo(raiseP: 0.71, callP: 0.29),
            'KTo':ProgressInfo(raiseP: 0.26, callP: 0.74),
            'QTo':ProgressInfo(raiseP: 0.35, callP: 0.65),
            'JTo':ProgressInfo(raiseP: 0.31, callP: 0.69),
            'T9s':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'T8s':ProgressInfo(raiseP: 0.61, callP: 0.39),
            'T7s':ProgressInfo(raiseP: 0.21, callP: 0.79),



            'A9o':ProgressInfo(raiseP: 0.15, callP: 0.85),
            'K9o':ProgressInfo(raiseP: 0.00, callP: 0.37),
            'J9o':ProgressInfo(raiseP: 0.00, callP: 0.27),
            'T9o':ProgressInfo(raiseP: 0.00, callP: 0.33),
            '98s':ProgressInfo(raiseP: 0.70, callP: 0.30),
            '97s':ProgressInfo(raiseP: 0.44, callP: 0.56),
            '96s':ProgressInfo(raiseP: 0.00, callP: 0.44),


            'A8o':ProgressInfo(raiseP: 0.06, callP: 0.94),
            '87s':ProgressInfo(raiseP: 0.83, callP: 0.17),
            '86s':ProgressInfo(raiseP: 0.39, callP: 0.61),


            'A7o':ProgressInfo(raiseP: 0.0 , callP: 0.17),
            '76s':ProgressInfo(raiseP: 0.72, callP: 0.28),
            '75s':ProgressInfo(raiseP: 0.00, callP: 0.23),



            'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '65s':ProgressInfo(raiseP: 0.68, callP: 0.32),
            '64s':ProgressInfo(raiseP: 0.00, callP: 0.15),



            'A5o':ProgressInfo(raiseP: 0.0 , callP: 0.17),
            '54s':ProgressInfo(raiseP: 0.46, callP: 0.54),

            'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),



            'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


            'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

          };
      }
    } else if (tournaSelection.myTournaPosition == TournaPosition.BB) {
      switch (tournaSelection.opponentTournaPosition) {
        case TournaPosition.UTG:
          return {
            'AA' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'AKs':ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'AQs':ProgressInfo(raiseP: 0.19, callP: 0.81),
            'AJs':ProgressInfo(raiseP: 0.20, callP: 0.8 ),
            'ATs':ProgressInfo(raiseP: 0.41, callP: 0.59),
            'A9s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'A8s':ProgressInfo(raiseP: 0.21, callP: 0.79),
            'A7s':ProgressInfo(raiseP: 0.26, callP: 0.74),
            'A6s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'A5s':ProgressInfo(raiseP: 0.45, callP: 0.55),
            'A4s':ProgressInfo(raiseP: 0.5 , callP: 0.5 ),
            'A3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'A2s':ProgressInfo(raiseP: 0.14, callP: 0.86),

            'AKo':ProgressInfo(raiseP: 0.46, callP: 0.54),
            'KK' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'KQs':ProgressInfo(raiseP: 0.57, callP: 0.43),
            'KJs':ProgressInfo(raiseP: 0.16, callP: 0.84),
            'KTs':ProgressInfo(raiseP: 0.14, callP: 0.86),
            'K9s':ProgressInfo(raiseP: 0.1 , callP: 0.9 ),
            'K8s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'K7s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'K6s':ProgressInfo(raiseP: 0.11, callP: 0.89),
            'K5s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'K4s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'K3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'K2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AQo':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'KQo':ProgressInfo(raiseP: 0.11, callP: 0.89),
            'QQ' :ProgressInfo(raiseP: 0.72, callP: 0.28),
            'QJs':ProgressInfo(raiseP: 0.51, callP: 0.49),
            'QTs':ProgressInfo(raiseP: 0.2 , callP: 0.8 ),
            'Q9s':ProgressInfo(raiseP: 0.3 , callP: 0.7 ),
            'Q8s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'Q7s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'Q6s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'Q5s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'Q4s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'Q3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'Q2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AJo':ProgressInfo(raiseP: 0.15, callP: 0.85),
            'KJo':ProgressInfo(raiseP: 0.09, callP: 0.91),
            'QJo':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'JJ' :ProgressInfo(raiseP: 0.22, callP: 0.78),
            'JTs':ProgressInfo(raiseP: 0.2 , callP: 0.8 ),
            'J9s':ProgressInfo(raiseP: 0.23, callP: 0.77),
            'J8s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J7s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J6s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J5s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J4s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'ATo':ProgressInfo(raiseP: 0.13, callP: 0.87),
            'KTo':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'QTo':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'JTo':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'TT' :ProgressInfo(raiseP: 0.05, callP: 0.95),
            'T9s':ProgressInfo(raiseP: 0.33, callP: 0.67),
            'T8s':ProgressInfo(raiseP: 0.34, callP: 0.66),
            'T7s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T6s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T5s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T4s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A9o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'K9o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'Q9o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J9o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T9o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '99' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '98s':ProgressInfo(raiseP: 0.29, callP: 0.71),
            '97s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '96s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '95s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '94s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '93s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '92s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A8o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'K8o':ProgressInfo(raiseP: 0.0 , callP: 0.69),
            'Q8o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'J8o':ProgressInfo(raiseP: 0.0 , callP: 0.2 ),
            'T8o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '98o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '88' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '87s':ProgressInfo(raiseP: 0.54, callP: 0.46),
            '86s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '85s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '84s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '83s':ProgressInfo(raiseP: 0.0 , callP: 0.56),
            '82s':ProgressInfo(raiseP: 0.0 , callP: 0.54),

            'A7o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'K7o':ProgressInfo(raiseP: 0.0 , callP: 0.32),
            'Q7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'J7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'T7o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '97o':ProgressInfo(raiseP: 0.0 , callP: 0.28),
            '87o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '77' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '76s':ProgressInfo(raiseP: 0.41, callP: 0.59),
            '75s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '74s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '73s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '72s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

            'A6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'K6o':ProgressInfo(raiseP: 0.0 , callP: 0.3 ),
            'Q6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'J6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'T6o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '96o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '86o':ProgressInfo(raiseP: 0.0 , callP: 0.52),
            '76o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '66' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '65s':ProgressInfo(raiseP: 0.45, callP: 0.55),
            '64s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '63s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '62s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A5o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'K5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'Q5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'J5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'T5o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '95o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '85o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '75o':ProgressInfo(raiseP: 0.0 , callP: 0.24),
            '65o':ProgressInfo(raiseP: 0.0 , callP: 0.85),
            '55' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '54s':ProgressInfo(raiseP: 0.38, callP: 0.62),
            '53s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '52s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A4o':ProgressInfo(raiseP: 0.0 , callP: 0.82),
            'K4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'Q4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'J4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'T4o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '94o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '84o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '74o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '64o':ProgressInfo(raiseP: 0.0 , callP: 0.00),
            '54o':ProgressInfo(raiseP: 0.0 , callP: 0.64),
            '44' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '43s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '42s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.11),
            'K3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'Q3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'J3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'T3o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '93o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '83o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '73o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '63o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '53o':ProgressInfo(raiseP: 0.0 , callP: 0.13),
            '43o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '32s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'K2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'Q2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'J2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            'T2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '92o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '82o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '72o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '62o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '52o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '42o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '32o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          };
        case TournaPosition.UTG1:
          return {
            'AA' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'KK' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'QQ' :ProgressInfo(raiseP: 0.87, callP: 0.28),
            'JJ' :ProgressInfo(raiseP: 0.27, callP: 0.78),
            'TT' :ProgressInfo(raiseP: 0.09, callP: 0.95),
            '99' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '88' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '77' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '66' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '55' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '44' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),


            'AKs':ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'AQs':ProgressInfo(raiseP: 0.34, callP: 0.66),
            'AJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'ATs':ProgressInfo(raiseP: 0.32, callP: 0.68),
            'A9s':ProgressInfo(raiseP: 0.13, callP: 0.87),
            'A8s':ProgressInfo(raiseP: 0.35, callP: 0.65),
            'A7s':ProgressInfo(raiseP: 0.29, callP: 0.71),
            'A6s':ProgressInfo(raiseP: 0.14, callP: 0.86),
            'A5s':ProgressInfo(raiseP: 0.43, callP: 0.57),
            'A4s':ProgressInfo(raiseP: 0.31, callP: 0.69),
            'A3s':ProgressInfo(raiseP: 0.19, callP: 0.81),
            'A2s':ProgressInfo(raiseP: 0.00, callP: 1.00),

            'AKo':ProgressInfo(raiseP: 0.54, callP: 0.46),
            'KQs':ProgressInfo(raiseP: 0.37, callP: 0.63),
            'KJs':ProgressInfo(raiseP: 0.32, callP: 0.68),
            'KTs':ProgressInfo(raiseP: 0.21, callP: 0.79),
            'K9s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'K8s':ProgressInfo(raiseP: 0.06, callP: 0.94),
            'K7s':ProgressInfo(raiseP: 0.19, callP: 0.81),
            'K6s':ProgressInfo(raiseP: 0.23, callP: 0.77),
            'K5s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'K4s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'K3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'K2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AQo':ProgressInfo(raiseP: 0.05, callP: 0.95),
            'KQo':ProgressInfo(raiseP: 0.14, callP: 0.86),
            'QJs':ProgressInfo(raiseP: 0.56, callP: 0.44),
            'QTs':ProgressInfo(raiseP: 0.17, callP: 0.83),
            'Q9s':ProgressInfo(raiseP: 0.31, callP: 0.69),
            'Q8s':ProgressInfo(raiseP: 0.10, callP: 0.90),
            'Q7s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'Q6s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'Q5s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'Q4s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'Q3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'Q2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AJo':ProgressInfo(raiseP: 0.16, callP: 0.84),
            'KJo':ProgressInfo(raiseP: 0.10, callP: 0.90),
            'QJo':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'JTs':ProgressInfo(raiseP: 0.28, callP: 0.72),
            'J9s':ProgressInfo(raiseP: 0.34, callP: 0.66),
            'J8s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J7s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J6s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J5s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J4s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'ATo':ProgressInfo(raiseP: 0.22, callP: 0.78),
            'KTo':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'QTo':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'JTo':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T9s':ProgressInfo(raiseP: 0.40, callP: 0.60),
            'T8s':ProgressInfo(raiseP: 0.32, callP: 0.68),
            'T7s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T6s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T5s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T4s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A9o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'K9o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'Q9o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J9o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T9o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '98s':ProgressInfo(raiseP: 0.26, callP: 0.74),
            '97s':ProgressInfo(raiseP: 0.17, callP: 0.83),
            '96s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '95s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '94s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '93s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '92s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A8o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'K8o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            'Q8o':ProgressInfo(raiseP: 0.0 , callP: 0.5 ),
            'J8o':ProgressInfo(raiseP: 0.0 , callP: 0.67),
            'T8o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '98o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '87s':ProgressInfo(raiseP: 0.38, callP: 0.62),
            '86s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '85s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '84s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '83s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '82s':ProgressInfo(raiseP: 0.0 , callP: 1.00),


            'A7o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'K7o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '97o':ProgressInfo(raiseP: 0.0 , callP: 0.91),
            '87o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '76s':ProgressInfo(raiseP: 0.35, callP: 0.65),
            '75s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '74s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '73s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),


            'A6o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'K6o':ProgressInfo(raiseP: 0.0 , callP: 0.69),
            '86o':ProgressInfo(raiseP: 0.0 , callP: 0.64),
            '76o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '65s':ProgressInfo(raiseP: 0.48, callP: 0.52),
            '64s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '63s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '62s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A5o':ProgressInfo(raiseP: 0.00, callP: 1.00),
            '75o':ProgressInfo(raiseP: 0.0 , callP: 0.41),
            '65o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '54s':ProgressInfo(raiseP: 0.38, callP: 0.62),
            '53s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '52s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A4o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '64o':ProgressInfo(raiseP: 0.0 , callP: 0.08),
            '54o':ProgressInfo(raiseP: 0.0 , callP: 0.94),
            '43s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '42s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A3o':ProgressInfo(raiseP: 0.0 , callP: 0.70),
            '53o':ProgressInfo(raiseP: 0.0 , callP: 0.15),
            '32s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
            '32o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

          };
        case TournaPosition.LJ:
          return {
            'AA' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'KK' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'QQ' :ProgressInfo(raiseP: 1.00, callP: 0.00),
            'JJ' :ProgressInfo(raiseP: 0.48, callP: 0.52),
            'TT' :ProgressInfo(raiseP: 0.12, callP: 0.88),
            '99' :ProgressInfo(raiseP: 0.06, callP: 0.94),
            '88' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '77' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '66' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '55' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '44' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),


            'AKs':ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'AQs':ProgressInfo(raiseP: 0.45, callP: 0.55),
            'AJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'ATs':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'A9s':ProgressInfo(raiseP: 0.39, callP: 0.61),
            'A8s':ProgressInfo(raiseP: 0.26, callP: 0.74),
            'A7s':ProgressInfo(raiseP: 0.11, callP: 0.89),
            'A6s':ProgressInfo(raiseP: 0.15, callP: 0.85),
            'A5s':ProgressInfo(raiseP: 0.36, callP: 0.64),
            'A4s':ProgressInfo(raiseP: 0.17, callP: 0.83),
            'A3s':ProgressInfo(raiseP: 0.13, callP: 0.87),
            'A2s':ProgressInfo(raiseP: 0.28, callP: 0.72),

            'AKo':ProgressInfo(raiseP: 0.74, callP: 0.26),
            'KQs':ProgressInfo(raiseP: 0.13, callP: 0.87),
            'KJs':ProgressInfo(raiseP: 0.43, callP: 0.57),
            'KTs':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'K9s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'K8s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'K7s':ProgressInfo(raiseP: 0.39, callP: 0.61),
            'K6s':ProgressInfo(raiseP: 0.44, callP: 0.56),
            'K5s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'K4s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'K3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'K2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AQo':ProgressInfo(raiseP: 0.16, callP: 0.84),
            'KQo':ProgressInfo(raiseP: 0.11, callP: 0.89),
            'QJs':ProgressInfo(raiseP: 0.66, callP: 0.34),
            'QTs':ProgressInfo(raiseP: 0.31, callP: 0.69),
            'Q9s':ProgressInfo(raiseP: 0.33, callP: 0.67),
            'Q8s':ProgressInfo(raiseP: 0.36, callP: 0.64),
            'Q7s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'Q6s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'Q5s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'Q4s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'Q3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'Q2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AJo':ProgressInfo(raiseP: 0.11, callP: 0.89),
            'KJo':ProgressInfo(raiseP: 0.09, callP: 0.91),
            'QJo':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            'JTs':ProgressInfo(raiseP: 0.46, callP: 0.54),
            'J9s':ProgressInfo(raiseP: 0.47, callP: 0.53),
            'J8s':ProgressInfo(raiseP: 0.12, callP: 0.88),
            'J7s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J6s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J5s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J4s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'ATo':ProgressInfo(raiseP: 0.32, callP: 0.68),
            'KTo':ProgressInfo(raiseP: 0.10, callP: 0.90),
            'QTo':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'JTo':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T9s':ProgressInfo(raiseP: 0.58, callP: 0.42),
            'T8s':ProgressInfo(raiseP: 0.34, callP: 0.66),
            'T7s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T6s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T5s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T4s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A9o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'K9o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'Q9o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J9o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T9o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '98s':ProgressInfo(raiseP: 0.30, callP: 0.70),
            '97s':ProgressInfo(raiseP: 0.18, callP: 0.82),
            '96s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '95s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '94s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '93s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '92s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A8o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'K8o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            'Q8o':ProgressInfo(raiseP: 0.0 , callP: 0.80),
            'J8o':ProgressInfo(raiseP: 0.0 , callP: 0.91),
            'T8o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '98o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '87s':ProgressInfo(raiseP: 0.41, callP: 0.59),
            '86s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            '85s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '84s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '83s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '82s':ProgressInfo(raiseP: 0.0 , callP: 1.00),


            'A7o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'K7o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '97o':ProgressInfo(raiseP: 0.0 , callP: 0.91),
            '87o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '76s':ProgressInfo(raiseP: 0.33, callP: 0.67),
            '75s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '74s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '73s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),


            'A6o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'K6o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            'Q6o':ProgressInfo(raiseP: 0.0 , callP: 0.09),
            '86o':ProgressInfo(raiseP: 0.0 , callP: 0.52),
            '76o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '65s':ProgressInfo(raiseP: 0.50, callP: 0.50),
            '64s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '63s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '62s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A5o':ProgressInfo(raiseP: 0.06, callP: 0.94),
            'K5o':ProgressInfo(raiseP: 0.00, callP: 0.28),
            '75o':ProgressInfo(raiseP: 0.0 , callP: 0.39),
            '65o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '54s':ProgressInfo(raiseP: 0.45, callP: 0.55),
            '53s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '52s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A4o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '64o':ProgressInfo(raiseP: 0.0 , callP: 0.15),
            '54o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '43s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '42s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A3o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '53o':ProgressInfo(raiseP: 0.0 , callP: 0.12),
            '32s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A2o':ProgressInfo(raiseP: 0.0 , callP: 0.90),
            '32o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

          };
        case TournaPosition.HJ:
          return {
            'AA' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'KK' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'QQ' :ProgressInfo(raiseP: 1.00, callP: 0.00),
            'JJ' :ProgressInfo(raiseP: 0.86, callP: 0.14),
            'TT' :ProgressInfo(raiseP: 0.37, callP: 0.63),
            '99' :ProgressInfo(raiseP: 0.05, callP: 0.95),
            '88' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '77' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '66' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '55' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '44' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),


            'AKs':ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'AQs':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'AJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'ATs':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'A9s':ProgressInfo(raiseP: 0.12, callP: 0.88),
            'A8s':ProgressInfo(raiseP: 0.54, callP: 0.46),
            'A7s':ProgressInfo(raiseP: 0.16, callP: 0.84),
            'A6s':ProgressInfo(raiseP: 0.09, callP: 0.91),
            'A5s':ProgressInfo(raiseP: 0.24, callP: 0.76),
            'A4s':ProgressInfo(raiseP: 0.27, callP: 0.73),
            'A3s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'A2s':ProgressInfo(raiseP: 0.00, callP: 1.00),

            'AKo':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'KQs':ProgressInfo(raiseP: 0.05, callP: 0.95),
            'KJs':ProgressInfo(raiseP: 0.33, callP: 0.67),
            'KTs':ProgressInfo(raiseP: 0.21, callP: 0.79),
            'K9s':ProgressInfo(raiseP: 0.35, callP: 0.65),
            'K8s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'K7s':ProgressInfo(raiseP: 0.30, callP: 0.70),
            'K6s':ProgressInfo(raiseP: 0.46, callP: 0.54),
            'K5s':ProgressInfo(raiseP: 0.14, callP: 0.86),
            'K4s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'K3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'K2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AQo':ProgressInfo(raiseP: 0.14, callP: 0.86),
            'KQo':ProgressInfo(raiseP: 0.17, callP: 0.83),
            'QJs':ProgressInfo(raiseP: 0.27, callP: 0.73),
            'QTs':ProgressInfo(raiseP: 0.25, callP: 0.75),
            'Q9s':ProgressInfo(raiseP: 0.39, callP: 0.61),
            'Q8s':ProgressInfo(raiseP: 0.43, callP: 0.57),
            'Q7s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'Q6s':ProgressInfo(raiseP: 0.08, callP: 0.92),
            'Q5s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'Q4s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'Q3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'Q2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AJo':ProgressInfo(raiseP: 0.11, callP: 0.89),
            'KJo':ProgressInfo(raiseP: 0.18, callP: 0.82),
            'QJo':ProgressInfo(raiseP: 0.12, callP: 0.88),
            'JTs':ProgressInfo(raiseP: 0.81, callP: 0.19),
            'J9s':ProgressInfo(raiseP: 0.85, callP: 0.15),
            'J8s':ProgressInfo(raiseP: 0.41, callP: 0.59),
            'J7s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J6s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J5s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J4s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),


            'ATo':ProgressInfo(raiseP: 0.08, callP: 0.92),
            'KTo':ProgressInfo(raiseP: 0.12, callP: 0.88),
            'QTo':ProgressInfo(raiseP: 0.06, callP: 0.94),
            'JTo':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T9s':ProgressInfo(raiseP: 0.77, callP: 0.23),
            'T8s':ProgressInfo(raiseP: 0.53, callP: 0.47),
            'T7s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T6s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T5s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T4s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A9o':ProgressInfo(raiseP: 0.23, callP: 0.77),
            'K9o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'Q9o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J9o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T9o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '98s':ProgressInfo(raiseP: 0.29, callP: 0.71),
            '97s':ProgressInfo(raiseP: 0.37, callP: 0.63),
            '96s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '95s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '94s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '93s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '92s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A8o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'K8o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            'Q8o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            'J8o':ProgressInfo(raiseP: 0.0 , callP: 0.91),
            'T8o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '98o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '87s':ProgressInfo(raiseP: 0.53, callP: 0.47),
            '86s':ProgressInfo(raiseP: 0.35, callP: 0.65),
            '85s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '84s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '83s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '82s':ProgressInfo(raiseP: 0.0 , callP: 1.00),


            'A7o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'K7o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            'Q7o':ProgressInfo(raiseP: 0.0 , callP: 0.43),
            'T7o':ProgressInfo(raiseP: 0.0 , callP: 0.15),
            '97o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '87o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '76s':ProgressInfo(raiseP: 0.55, callP: 0.45),
            '75s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '74s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '73s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '72s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),


            'A6o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'K6o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            'Q6o':ProgressInfo(raiseP: 0.0 , callP: 0.41),
            '86o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '76o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '65s':ProgressInfo(raiseP: 0.61, callP: 0.39),
            '64s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '63s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '62s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A5o':ProgressInfo(raiseP: 0.13, callP: 0.87),
            'K5o':ProgressInfo(raiseP: 0.00, callP: 1.00),
            '75o':ProgressInfo(raiseP: 0.0 , callP: 0.44),
            '65o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '54s':ProgressInfo(raiseP: 0.46, callP: 0.54),
            '53s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '52s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A4o':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'K4o':ProgressInfo(raiseP: 0.0 , callP: 0.39),
            '64o':ProgressInfo(raiseP: 0.0 , callP: 0.32),
            '54o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '43s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '42s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A3o':ProgressInfo(raiseP: 0.00, callP: 1.00),
            '53o':ProgressInfo(raiseP: 0.0 , callP: 0.55),
            '32s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A2o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '32o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

          };
        case TournaPosition.CO:
          return {
            'AA' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'KK' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'QQ' :ProgressInfo(raiseP: 1.00, callP: 0.00),
            'JJ' :ProgressInfo(raiseP: 1.00, callP: 0.00),
            'TT' :ProgressInfo(raiseP: 0.70, callP: 0.30),
            '99' :ProgressInfo(raiseP: 0.21, callP: 0.79),
            '88' :ProgressInfo(raiseP: 0.09, callP: 0.91),
            '77' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '66' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '55' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '44' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),


            'AKs':ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'AQs':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'AJs':ProgressInfo(raiseP: 0.36, callP: 0.64),
            'ATs':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'A9s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'A8s':ProgressInfo(raiseP: 0.26, callP: 0.74),
            'A7s':ProgressInfo(raiseP: 0.17, callP: 0.83),
            'A6s':ProgressInfo(raiseP: 0.07, callP: 0.93),
            'A5s':ProgressInfo(raiseP: 0.40, callP: 0.60),
            'A4s':ProgressInfo(raiseP: 0.33, callP: 0.67),
            'A3s':ProgressInfo(raiseP: 0.22, callP: 0.78),
            'A2s':ProgressInfo(raiseP: 0.00, callP: 1.00),

            'AKo':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'KQs':ProgressInfo(raiseP: 0.56, callP: 0.44),
            'KJs':ProgressInfo(raiseP: 0.09, callP: 0.91),
            'KTs':ProgressInfo(raiseP: 0.13, callP: 0.87),
            'K9s':ProgressInfo(raiseP: 0.16, callP: 0.84),
            'K8s':ProgressInfo(raiseP: 0.40, callP: 0.60),
            'K7s':ProgressInfo(raiseP: 0.32, callP: 0.68),
            'K6s':ProgressInfo(raiseP: 0.37, callP: 0.63),
            'K5s':ProgressInfo(raiseP: 0.23, callP: 0.77),
            'K4s':ProgressInfo(raiseP: 0.13, callP: 0.87),
            'K3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'K2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AQo':ProgressInfo(raiseP: 0.50, callP: 0.50),
            'KQo':ProgressInfo(raiseP: 0.24, callP: 0.76),
            'QJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'QTs':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'Q9s':ProgressInfo(raiseP: 0.23, callP: 0.77),
            'Q8s':ProgressInfo(raiseP: 0.39, callP: 0.61),
            'Q7s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'Q6s':ProgressInfo(raiseP: 0.38, callP: 0.62),
            'Q5s':ProgressInfo(raiseP: 0.11, callP: 0.89),
            'Q4s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'Q3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'Q2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AJo':ProgressInfo(raiseP: 0.16, callP: 0.84),
            'KJo':ProgressInfo(raiseP: 0.21, callP: 0.79),
            'QJo':ProgressInfo(raiseP: 0.13, callP: 0.87),
            'JTs':ProgressInfo(raiseP: 0.92, callP: 0.08),
            'J9s':ProgressInfo(raiseP: 0.67, callP: 0.33),
            'J8s':ProgressInfo(raiseP: 0.61, callP: 0.39),
            'J7s':ProgressInfo(raiseP: 0.40, callP: 0.60),
            'J6s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J5s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J4s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),


            'ATo':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'KTo':ProgressInfo(raiseP: 0.19, callP: 0.81),
            'QTo':ProgressInfo(raiseP: 0.21, callP: 0.79),
            'JTo':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T9s':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'T8s':ProgressInfo(raiseP: 0.67, callP: 0.33),
            'T7s':ProgressInfo(raiseP: 0.52, callP: 0.48),
            'T6s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T5s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T4s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),


            'A9o':ProgressInfo(raiseP: 0.06, callP: 0.94),
            'K9o':ProgressInfo(raiseP: 0.14, callP: 0.86),
            'Q9o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J9o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T9o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '98s':ProgressInfo(raiseP: 0.55, callP: 0.45),
            '97s':ProgressInfo(raiseP: 0.52, callP: 0.48),
            '96s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '95s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '94s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '93s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '92s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A8o':ProgressInfo(raiseP: 0.20, callP: 0.80),
            'K8o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            'Q8o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            'J8o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            'T8o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '98o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '87s':ProgressInfo(raiseP: 0.61, callP: 0.39),
            '86s':ProgressInfo(raiseP: 0.50, callP: 0.50),
            '85s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '84s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '83s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '82s':ProgressInfo(raiseP: 0.0 , callP: 1.00),


            'A7o':ProgressInfo(raiseP: 0.08, callP: 0.92),
            'K7o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            'Q7o':ProgressInfo(raiseP: 0.0 , callP: 0.84),
            'J7o':ProgressInfo(raiseP: 0.0 , callP: 0.82),
            'T7o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '97o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '87o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '76s':ProgressInfo(raiseP: 0.65, callP: 0.35),
            '75s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '74s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '73s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '72s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),


            'A6o':ProgressInfo(raiseP: 0.09, callP: 0.91),
            'K6o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            'Q6o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            'J6o':ProgressInfo(raiseP: 0.0 , callP: 0.10),
            '96o':ProgressInfo(raiseP: 0.0 , callP: 0.12),
            '86o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '76o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '65s':ProgressInfo(raiseP: 0.63, callP: 0.37),
            '64s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '63s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '62s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A5o':ProgressInfo(raiseP: 0.14, callP: 0.86),
            'K5o':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'Q5o':ProgressInfo(raiseP: 0.00, callP: 0.69),
            '75o':ProgressInfo(raiseP: 0.0 , callP: 0.48),
            '65o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '54s':ProgressInfo(raiseP: 0.45, callP: 0.55),
            '53s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '52s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A4o':ProgressInfo(raiseP: 0.11, callP: 0.89),
            'K4o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            'Q4o':ProgressInfo(raiseP: 0.0 , callP: 0.23),
            '64o':ProgressInfo(raiseP: 0.0 , callP: 0.52),
            '54o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '43s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '42s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A3o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            'K3o':ProgressInfo(raiseP: 0.0 , callP: 0.67),
            '53o':ProgressInfo(raiseP: 0.0 , callP: 0.66),
            '43o':ProgressInfo(raiseP: 0.0 , callP: 0.28),
            '32s':ProgressInfo(raiseP: 0.0 , callP: 1.00),

            'A2o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            'K2o':ProgressInfo(raiseP: 0.0 , callP: 0.28),


          };
        case TournaPosition.BTN:
          return {
            'AA' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'KK' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'QQ' :ProgressInfo(raiseP: 1.00, callP: 0.00),
            'JJ' :ProgressInfo(raiseP: 1.00, callP: 0.00),
            'TT' :ProgressInfo(raiseP: 1.00, callP: 0.00),
            '99' :ProgressInfo(raiseP: 0.62, callP: 0.38),
            '88' :ProgressInfo(raiseP: 0.34, callP: 0.66),
            '77' :ProgressInfo(raiseP: 0.15, callP: 0.85),
            '66' :ProgressInfo(raiseP: 0.00, callP: 1.00),
            '55' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '44' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),


            'AKs':ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'AQs':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'AJs':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'ATs':ProgressInfo(raiseP: 0.65, callP: 0.35),
            'A9s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'A8s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'A7s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'A6s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'A5s':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'A4s':ProgressInfo(raiseP: 0.54, callP: 0.46),
            'A3s':ProgressInfo(raiseP: 0.33, callP: 0.67),
            'A2s':ProgressInfo(raiseP: 0.00, callP: 1.00),

            'AKo':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'KQs':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'KJs':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'KTs':ProgressInfo(raiseP: 0.35, callP: 0.65),
            'K9s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'K8s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'K7s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'K6s':ProgressInfo(raiseP: 0.24, callP: 0.76),
            'K5s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'K4s':ProgressInfo(raiseP: 0.05, callP: 0.95),
            'K3s':ProgressInfo(raiseP: 0.05, callP: 0.95),
            'K2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AQo':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'KQo':ProgressInfo(raiseP: 0.45, callP: 0.55),
            'QJs':ProgressInfo(raiseP: 0.27, callP: 0.73),
            'QTs':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'Q9s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'Q8s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'Q7s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'Q6s':ProgressInfo(raiseP: 0.21, callP: 0.79),
            'Q5s':ProgressInfo(raiseP: 0.24, callP: 0.76),
            'Q4s':ProgressInfo(raiseP: 0.25, callP: 0.75),
            'Q3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'Q2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'AJo':ProgressInfo(raiseP: 0.38, callP: 0.62),
            'KJo':ProgressInfo(raiseP: 0.15, callP: 0.85),
            'QJo':ProgressInfo(raiseP: 0.10, callP: 0.90),
            'JTs':ProgressInfo(raiseP: 0.44, callP: 0.56),
            'J9s':ProgressInfo(raiseP: 0.18, callP: 0.82),
            'J8s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'J7s':ProgressInfo(raiseP: 0.54, callP: 0.46),
            'J6s':ProgressInfo(raiseP: 0.29, callP: 0.71),
            'J5s':ProgressInfo(raiseP: 0.43, callP: 0.57),
            'J4s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'J2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),


            'ATo':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'KTo':ProgressInfo(raiseP: 0.08, callP: 0.92),
            'QTo':ProgressInfo(raiseP: 0.20, callP: 0.80),
            'JTo':ProgressInfo(raiseP: 0.11, callP: 0.89),
            'T9s':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'T8s':ProgressInfo(raiseP: 0.65, callP: 0.35),
            'T7s':ProgressInfo(raiseP: 0.55, callP: 0.45),
            'T6s':ProgressInfo(raiseP: 0.67, callP: 0.33),
            'T5s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T4s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            'T2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),


            'A9o':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'K9o':ProgressInfo(raiseP: 0.14, callP: 0.86),
            'Q9o':ProgressInfo(raiseP: 0.13, callP: 0.87),
            'J9o':ProgressInfo(raiseP: 0.23, callP: 0.77),
            'T9o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '98s':ProgressInfo(raiseP: 1.00, callP: 0.00),
            '97s':ProgressInfo(raiseP: 0.72, callP: 0.28),
            '96s':ProgressInfo(raiseP: 0.57, callP: 0.43),
            '95s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '94s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '93s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '92s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A8o':ProgressInfo(raiseP: 0.08, callP: 0.92),
            'K8o':ProgressInfo(raiseP: 0.12, callP: 0.88),
            'Q8o':ProgressInfo(raiseP: 0.10, callP: 0.90),
            'J8o':ProgressInfo(raiseP: 0.19, callP: 0.81),
            'T8o':ProgressInfo(raiseP: 0.10, callP: 0.90),
            '98o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '87s':ProgressInfo(raiseP: 1.00, callP: 0.00),
            '86s':ProgressInfo(raiseP: 0.82, callP: 0.18),
            '85s':ProgressInfo(raiseP: 0.05, callP: 0.95),
            '84s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '83s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '82s':ProgressInfo(raiseP: 0.0 , callP: 1.00),


            'A7o':ProgressInfo(raiseP: 0.14, callP: 0.86),
            'K7o':ProgressInfo(raiseP: 0.18, callP: 0.82),
            'Q7o':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'J7o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            'T7o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '97o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '87o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '76s':ProgressInfo(raiseP: 1.00, callP: 0.00),
            '75s':ProgressInfo(raiseP: 0.50, callP: 0.50),
            '74s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '73s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '72s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),


            'A6o':ProgressInfo(raiseP: 0.22, callP: 0.78),
            'K6o':ProgressInfo(raiseP: 0.28, callP: 0.72),
            'Q6o':ProgressInfo(raiseP: 0.16, callP: 0.84),
            'J6o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            'T6o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '96o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '86o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '76o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '65s':ProgressInfo(raiseP: 0.83, callP: 0.17),
            '64s':ProgressInfo(raiseP: 0.12, callP: 0.88),
            '63s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '62s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A5o':ProgressInfo(raiseP: 0.05, callP: 0.95),
            'K5o':ProgressInfo(raiseP: 0.22, callP: 0.78),
            'Q5o':ProgressInfo(raiseP: 0.06, callP: 0.94),
            'J5o':ProgressInfo(raiseP: 0.00, callP: 1.00),

            '85o':ProgressInfo(raiseP: 0.0 , callP: 0.47),
            '75o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '65o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '54s':ProgressInfo(raiseP: 0.71, callP: 0.29),
            '53s':ProgressInfo(raiseP: 0.10, callP: 0.90),
            '52s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A4o':ProgressInfo(raiseP: 0.21, callP: 0.79),
            'K4o':ProgressInfo(raiseP: 0.12, callP: 0.88),
            'Q4o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            'J4o':ProgressInfo(raiseP: 0.0 , callP: 0.91),
            '64o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '54o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '43s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '42s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),


            'A3o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            'K3o':ProgressInfo(raiseP: 0.0 , callP: 1.0),
            'Q3o':ProgressInfo(raiseP: 0.0 , callP: 1.0),
            'J3o':ProgressInfo(raiseP: 0.0 , callP: 0.19),
            '53o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '43o':ProgressInfo(raiseP: 0.0 , callP: 0.80),
            '32s':ProgressInfo(raiseP: 0.0 , callP: 1.00),

            'A2o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            'K2o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            'K2o':ProgressInfo(raiseP: 0.0 , callP: 0.89),


          };
        case TournaPosition.SB:
          return {
            'AA' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'KK' :ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'QQ' :ProgressInfo(raiseP: 1.00, callP: 0.00),
            'JJ' :ProgressInfo(raiseP: 1.00, callP: 0.00),
            'TT' :ProgressInfo(raiseP: 0.34, callP: 0.66),
            '99' :ProgressInfo(raiseP: 0.00, callP: 1.00),
            '88' :ProgressInfo(raiseP: 0.00, callP: 1.00),
            '77' :ProgressInfo(raiseP: 0.00, callP: 1.00),
            '66' :ProgressInfo(raiseP: 0.00, callP: 1.00),
            '55' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '44' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),


            'AKs':ProgressInfo(raiseP: 1.0 , callP: 0.0 ),
            'AQs':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'AJs':ProgressInfo(raiseP: 0.70, callP: 0.30),
            'ATs':ProgressInfo(raiseP: 0.33, callP: 0.67),
            'A9s':ProgressInfo(raiseP: 0.06, callP: 0.94),
            'A8s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'A7s':ProgressInfo(raiseP: 0.09, callP: 0.91),
            'A6s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'A5s':ProgressInfo(raiseP: 0.67, callP: 0.33),
            'A4s':ProgressInfo(raiseP: 0.40, callP: 0.60),
            'A3s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'A2s':ProgressInfo(raiseP: 0.00, callP: 1.00),


            'AKo':ProgressInfo(raiseP: 1.00, callP: 0.00),
            'KQs':ProgressInfo(raiseP: 0.39, callP: 0.61),
            'KJs':ProgressInfo(raiseP: 0.40, callP: 0.60),
            'KTs':ProgressInfo(raiseP: 0.47, callP: 0.53),
            'K9s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'K8s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'K7s':ProgressInfo(raiseP: 0.08, callP: 0.92),
            'K6s':ProgressInfo(raiseP: 0.28, callP: 0.72),
            'K5s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'K4s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'K3s':ProgressInfo(raiseP: 0.06, callP: 0.94),
            'K2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),


            'AQo':ProgressInfo(raiseP: 0.39, callP: 0.61),
            'KQo':ProgressInfo(raiseP: 0.18, callP: 0.82),
            'QJs':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'QTs':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'Q9s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'Q8s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'Q7s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            'Q6s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'Q5s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'Q4s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'Q3s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            'Q2s':ProgressInfo(raiseP: 0.0 , callP: 1.00),


            'AJo':ProgressInfo(raiseP: 0.16, callP: 0.84),
            'KJo':ProgressInfo(raiseP: 0.10, callP: 0.90),
            'QJo':ProgressInfo(raiseP: 0.08, callP: 0.92),
            'JTs':ProgressInfo(raiseP: 0.19, callP: 0.81),
            'J9s':ProgressInfo(raiseP: 0.07, callP: 0.93),
            'J8s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'J7s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'J6s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'J5s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'J4s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'J3s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'J2s':ProgressInfo(raiseP: 0.12, callP: 0.88),


            'ATo':ProgressInfo(raiseP: 0.11, callP: 0.89),
            'KTo':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'QTo':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'JTo':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'T9s':ProgressInfo(raiseP: 0.50, callP: 0.50),
            'T8s':ProgressInfo(raiseP: 0.15, callP: 0.85),
            'T7s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'T6s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'T5s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'T4s':ProgressInfo(raiseP: 0.08, callP: 0.92),
            'T3s':ProgressInfo(raiseP: 0.28, callP: 0.72),
            'T2s':ProgressInfo(raiseP: 0.33, callP: 0.67),


            'A9o':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'K9o':ProgressInfo(raiseP: 0.10, callP: 0.90),
            'Q9o':ProgressInfo(raiseP: 0.24, callP: 0.76),
            'J9o':ProgressInfo(raiseP: 0.25, callP: 0.75),
            'T9o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '98s':ProgressInfo(raiseP: 0.70, callP: 0.30),
            '97s':ProgressInfo(raiseP: 0.28, callP: 0.72),
            '96s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            '95s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '94s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '93s':ProgressInfo(raiseP: 0.08, callP: 0.92),
            '92s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A8o':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'K8o':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'Q8o':ProgressInfo(raiseP: 0.29, callP: 0.71),
            'J8o':ProgressInfo(raiseP: 0.34, callP: 0.66),
            'T8o':ProgressInfo(raiseP: 0.21, callP: 0.79),
            '98o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '87s':ProgressInfo(raiseP: 0.60, callP: 0.40),
            '86s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            '85s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            '84s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            '83s':ProgressInfo(raiseP: 0.00, callP: 0.74),



            'A7o':ProgressInfo(raiseP: 0.07, callP: 0.93),
            'K7o':ProgressInfo(raiseP: 0.08, callP: 0.92),
            'Q7o':ProgressInfo(raiseP: 0.00, callP: 0.24),
            'J7o':ProgressInfo(raiseP: 0.34, callP: 0.20),
            'T7o':ProgressInfo(raiseP: 0.45, callP: 0.55),
            '97o':ProgressInfo(raiseP: 0.10, callP: 0.73),
            '87o':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '76s':ProgressInfo(raiseP: 0.49, callP: 0.51),
            '75s':ProgressInfo(raiseP: 0.0 , callP: 1.00),
            '74s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '73s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),



            'A6o':ProgressInfo(raiseP: 0.32, callP: 0.68),
            'K6o':ProgressInfo(raiseP: 0.29, callP: 0.71),
            'Q6o':ProgressInfo(raiseP: 0.29, callP: 0.18),
            '86o':ProgressInfo(raiseP: 0.0 , callP: 0.11),
            '76o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '65s':ProgressInfo(raiseP: 0.42, callP: 0.58),
            '64s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            '63s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '62s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

            'A5o':ProgressInfo(raiseP: 0.00, callP: 1.00),
            'K5o':ProgressInfo(raiseP: 0.42, callP: 0.58),
            'Q5o':ProgressInfo(raiseP: 0.26, callP: 0.00),
            '65o':ProgressInfo(raiseP: 0.0 , callP: 0.70),
            '54s':ProgressInfo(raiseP: 0.41, callP: 0.59),
            '53s':ProgressInfo(raiseP: 0.00, callP: 1.00),
            '52s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),


            'A4o':ProgressInfo(raiseP: 0.06, callP: 0.94),
            'K4o':ProgressInfo(raiseP: 0.25, callP: 0.00),
            '54o':ProgressInfo(raiseP: 0.0 , callP: 0.68),
            '43s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
            '42s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),


            'A3o':ProgressInfo(raiseP: 0.32, callP: 0.68),
            '32s':ProgressInfo(raiseP: 0.0 , callP: 1.00),

            'A2o':ProgressInfo(raiseP: 0.60, callP: 0.40),



          };

      }
    }
  }
  //스택,내포지션만 선택됨
  else if (tournaSelection.myTournaPosition != TournaPosition.none) {
    switch (tournaSelection.myTournaPosition) {
      case TournaPosition.UTG:
        return {
          'AA' :ProgressInfo(callP: 0.0, raiseP: 1.0),
          'AKs':ProgressInfo(callP: 0.0, raiseP: 1.0),
          'AQs':ProgressInfo(callP: 0.0, raiseP: 1.0),
          'AJs':ProgressInfo(callP: 0.0, raiseP: 1.0),
          'ATs':ProgressInfo(callP: 0.0, raiseP: 1.0),
          'A9s':ProgressInfo(callP: 0.0, raiseP: 1.0),
          'A8s':ProgressInfo(callP: 0.0, raiseP: 1.0),
          'A7s':ProgressInfo(callP: 0.0, raiseP: 1.0),
          'A6s':ProgressInfo(callP: 0.0, raiseP: 1.0),
          'A5s':ProgressInfo(callP: 0.0, raiseP: 1.0),
          'A4s':ProgressInfo(callP: 0.0, raiseP: 1.0),
          'A3s':ProgressInfo(callP: 0.0, raiseP: 0.4),
          'AKo':ProgressInfo(callP: 0.0, raiseP: 1.0),
          'KK' :ProgressInfo(callP: 0.0, raiseP: 1.0),
          'KQs':ProgressInfo(callP: 0.0, raiseP: 1.0),
          'KJs':ProgressInfo(callP: 0.0, raiseP: 1.0),
          'KTs':ProgressInfo(callP: 0.0, raiseP: 1.0),
          'K9s':ProgressInfo(callP: 0.0, raiseP: 1.0),
          'K8s':ProgressInfo(callP: 0.0, raiseP: 0.4),
          'AQo':ProgressInfo(callP: 0.0, raiseP: 1.0),
          'KQo':ProgressInfo(callP: 0.0, raiseP: 1.0),
          'QQ' :ProgressInfo(callP: 0.0, raiseP: 1.0),
          'QJs':ProgressInfo(callP: 0.0, raiseP: 1.0),
          'QTs':ProgressInfo(callP: 0.0, raiseP: 1.0),
          'Q9s':ProgressInfo(callP: 0.0, raiseP: 1.0),
          'AJo':ProgressInfo(callP: 0.0, raiseP: 1.0),
          'KJo':ProgressInfo(callP: 0.0, raiseP: 0.3),
          'QJo':ProgressInfo(callP: 0.0, raiseP: 0.0),
          'JJ' :ProgressInfo(callP: 0.0, raiseP: 1.0),
          'JTs':ProgressInfo(callP: 0.0, raiseP: 1.0),
          'J9s':ProgressInfo(callP: 0.0, raiseP: 1.0),
          'ATo':ProgressInfo(callP: 0.0, raiseP: 0.3),
          'JTo':ProgressInfo(callP: 0.0, raiseP: 0.0),
          'TT' :ProgressInfo(callP: 0.0, raiseP: 1.0),
          'T9s':ProgressInfo(callP: 0.0, raiseP: 1.0),
          'T8s':ProgressInfo(callP: 0.0, raiseP: 0.7),
          '99' :ProgressInfo(callP: 0.0, raiseP: 1.0),
          '98s':ProgressInfo(callP: 0.0, raiseP: 0.5),
          '88' :ProgressInfo(callP: 0.0, raiseP: 1.0),
          '87s':ProgressInfo(callP: 0.0, raiseP: 0.3),
          '77' :ProgressInfo(callP: 0.0, raiseP: 1.0),
          '76s':ProgressInfo(callP: 0.0, raiseP: 0.2),
          '66' :ProgressInfo(callP: 0.0, raiseP: 1.0),
          '65s':ProgressInfo(callP: 0.0, raiseP: 0.2),
          '55' :ProgressInfo(callP: 0.0, raiseP: 1.0),
          '44' :ProgressInfo(callP: 0.0, raiseP: 0.6),
          '33' :ProgressInfo(callP: 0.0, raiseP: 0.5),
          '22' :ProgressInfo(callP: 0.0, raiseP: 0.5),
        };
      case TournaPosition.UTG1:
        return {
          'AA' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'AKs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'AQs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'AJs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'ATs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A9s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A8s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A7s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A6s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A5s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A4s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A3s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'AKo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KK' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KQs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KJs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KTs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K9s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K8s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K7s':ProgressInfo(callP: 0.0 , raiseP: 0.3 ),
          'K6s':ProgressInfo(callP: 0.0 , raiseP: 0.2 ),
          'AQo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KQo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'QQ' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'QJs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'QTs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'Q9s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'AJo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KJo':ProgressInfo(callP: 0.0 , raiseP: 0.7 ),
          'QJo':ProgressInfo(callP: 0.0 , raiseP: 0.4 ),
          'JJ' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'JTs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'J9s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'J8s':ProgressInfo(callP: 0.0 , raiseP: 0.1 ),
          'ATo':ProgressInfo(callP: 0.0 , raiseP: 0.9 ),
          'KTo':ProgressInfo(callP: 0.0 , raiseP: 0.0 ),
          'JTo':ProgressInfo(callP: 0.0 , raiseP: 0.2 ),
          'TT' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'T9s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'T8s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '99' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '98s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '88' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '87s':ProgressInfo(callP: 0.0 , raiseP: 0.5 ),
          '77' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '76s':ProgressInfo(callP: 0.0 , raiseP: 0.3 ),
          '66' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '65s':ProgressInfo(callP: 0.0 , raiseP: 0.3 ),
          '55' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '44' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '33' :ProgressInfo(callP: 0.0 , raiseP: 0.7 ),
          '22' :ProgressInfo(callP: 0.0 , raiseP: 0.7 ),
        };
      case TournaPosition.LJ:
        return {
          'AA' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'AKs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'AQs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'AJs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'ATs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A9s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A8s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A7s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A6s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A5s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A4s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A3s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A2s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'AKo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KK' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KQs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KJs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KTs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K9s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K8s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K7s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K6s':ProgressInfo(callP: 0.0 , raiseP: 0.5 ),
          'AQo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KQo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'QQ' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'QJs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'QTs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'Q9s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'Q8s':ProgressInfo(callP: 0.0 , raiseP: 0.45 ),
          'AJo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KJo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'QJo':ProgressInfo(callP: 0.0 , raiseP: 0.8 ),
          'JJ' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'JTs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'J9s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'J8s':ProgressInfo(callP: 0.0 , raiseP: 0.7 ),
          'ATo':ProgressInfo(callP: 0.0 , raiseP: 0.9 ),
          'KTo':ProgressInfo(callP: 0.0 , raiseP: 0.5 ),
          'QTo':ProgressInfo(callP: 0.0 , raiseP: 0.3 ),
          'JTo':ProgressInfo(callP: 0.0 , raiseP: 0.5 ),
          'TT' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'T9s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'T8s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '99' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '98s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '97s':ProgressInfo(callP: 0.0 , raiseP: 0.4 ),
          '88' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '87s':ProgressInfo(callP: 0.0 , raiseP: 0.6 ),
          '77' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '76s':ProgressInfo(callP: 0.0 , raiseP: 0.4 ),
          '66' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '65s':ProgressInfo(callP: 0.0 , raiseP: 0.35 ),
          '55' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '44' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '33' :ProgressInfo(callP: 0.0 , raiseP: 0.75 ),
          '22' :ProgressInfo(callP: 0.0 , raiseP: 0.7 ),
        };
      case TournaPosition.HJ:
        return {
          'AA' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'AKs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'AQs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'AJs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'ATs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A9s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A8s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A7s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A6s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A5s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A4s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A3s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A2s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'AKo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KK' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KQs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KJs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KTs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K9s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K8s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K7s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K6s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K5s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K4s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'AQo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KQo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'QQ' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'QJs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'QTs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'Q9s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'Q8s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'Q7s':ProgressInfo(callP: 0.0 , raiseP: 0.62),
          'Q6s':ProgressInfo(callP: 0.0 , raiseP: 0.64),
          'AJo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KJo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'QJo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'JJ' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'JTs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'J9s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'J8s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'J7s':ProgressInfo(callP: 0.0 , raiseP: 0.38),
          'ATo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KTo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'QTo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'JTo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'TT' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'T9s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'T8s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'T7s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A9o':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '99' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '98s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '97s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A8o':ProgressInfo(callP: 0.0 , raiseP: 0.2 ),
          '88' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '87s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '86s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '77' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '76s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '66' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '65s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '55' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '54s':ProgressInfo(callP: 0.0 , raiseP: 0.5 ),
          '44' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '33' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '22' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
        };
      case TournaPosition.CO:
        return {
          'AA' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'AKs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'AQs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'AJs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'ATs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A9s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A8s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A7s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A6s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A5s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A4s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A3s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A2s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),

          'AKo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KK' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KQs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KJs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KTs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K9s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K8s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K7s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K6s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K5s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K4s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K3s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K2s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),

          'AQo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KQo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'QQ' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'QJs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'QTs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'Q9s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'Q8s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'Q7s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'Q6s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'Q5s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'Q4s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'Q3s':ProgressInfo(callP: 0.0 , raiseP: 0.15),

          'AJo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KJo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'QJo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'JJ' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'JTs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'J9s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'J8s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'J7s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'J6s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'J5s':ProgressInfo(callP: 0.0 , raiseP: 0.45),

          'ATo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KTo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'QTo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'JTo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'TT' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'T9s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'T8s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'T7s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'T6s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),

          'A9o':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K9o':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'Q9o':ProgressInfo(callP: 0.0 , raiseP: 0.45 ),
          'J9o':ProgressInfo(callP: 0.0 , raiseP: 0.6 ),
          'T9o':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '99' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '98s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '97s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '96s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),

          'A8o':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '98o':ProgressInfo(callP: 0.0 , raiseP: 0.15 ),
          '88' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '87s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '86s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),

          '85s':ProgressInfo(callP: 0.0 , raiseP: 0.5 ),

          'A7o':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '77' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '76s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '75s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),

          '66' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '65s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '64s':ProgressInfo(callP: 0.0 , raiseP: 0.45),

          'A5o':ProgressInfo(callP: 0.0 , raiseP: 0.6 ),
          '55' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '54s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),

          '44' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '33' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '22' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
        };
      case TournaPosition.BTN:
        return {
          'AA' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'AKs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'AQs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'AJs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'ATs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A9s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A8s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A7s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A6s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A5s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A4s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A3s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A2s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),

          'AKo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KK' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KQs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KJs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KTs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K9s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K8s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K7s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K6s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K5s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K4s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K3s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K2s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),

          'AQo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KQo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'QQ' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'QJs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'QTs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'Q9s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'Q8s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'Q7s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'Q6s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'Q5s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'Q4s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'Q3s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'Q2s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),

          'AJo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KJo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'QJo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'JJ' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'JTs':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'J9s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'J8s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'J7s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'J6s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'J5s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'J4s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'J3s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'J2s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),


          'ATo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'KTo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'QTo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'JTo':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'TT' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'T9s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'T8s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'T7s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'T6s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'T5s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'T4s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'T3s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),

          'A9o':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K9o':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'Q9o':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'J9o':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'T9o':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '99' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '98s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '97s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '96s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '95s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),

          'A8o':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K8o':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'Q8o':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'J8o':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'T8o':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '98o':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '88' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '87s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '86s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '86s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '85s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '84s':ProgressInfo(callP: 0.0 , raiseP: 0.6 ),

          'A7o':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K7o':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'Q7o':ProgressInfo(callP: 0.0 , raiseP: 0.62),
          'J7o':ProgressInfo(callP: 0.0 , raiseP: 0.00),
          'T7o':ProgressInfo(callP: 0.0 , raiseP: 0.6 ),
          '97o':ProgressInfo(callP: 0.0 , raiseP: 0.85),
          '87o':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '77' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '76s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '75s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '74s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),

          'A6o':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K6o':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '76o':ProgressInfo(callP: 0.0 , raiseP: 0.34),
          '66' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '65s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '65s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '64s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '63s':ProgressInfo(callP: 0.0 , raiseP: 0.83),

          'A5o':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'K5o':ProgressInfo(callP: 0.0 , raiseP: 0.9 ),
          '55' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '54s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '53s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),

          'A4o':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '44' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '43s':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),

          'A3o':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '33' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          'A2o':ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
          '22' :ProgressInfo(callP: 0.0 , raiseP: 1.0 ),
        };
      case TournaPosition.SB:
        return {
          'AA' :ProgressInfo(raiseP: 0.3 , callP: 0.7 ),
          'AKs':ProgressInfo(raiseP: 0.5, callP: 0.5),
          'AQs':ProgressInfo(raiseP: 0.25, callP: 0.75),
          'AJs':ProgressInfo(raiseP: 0.6 , callP: 0.4 ),
          'ATs':ProgressInfo(raiseP: 0.65, callP: 0.35),
          'A9s':ProgressInfo(raiseP: 0.5, callP: 0.5),
          'A8s':ProgressInfo(raiseP: 0.45, callP: 0.55),
          'A7s':ProgressInfo(raiseP: 0.3, callP: 0.7),
          'A6s':ProgressInfo(raiseP: 0.1, callP: 0.9),
          'A5s':ProgressInfo(raiseP: 0.35, callP: 0.65),
          'A4s':ProgressInfo(raiseP: 0.15, callP: 0.85),
          'A3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          'A2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

          'AKo':ProgressInfo(raiseP: 0.2, callP: 0.8),
          'KK' :ProgressInfo(raiseP: 0.25, callP: 0.75),
          'KQs':ProgressInfo(raiseP: 0.6, callP: 0.4),
          'KJs':ProgressInfo(raiseP: 0.6, callP: 0.4),
          'KTs':ProgressInfo(raiseP: 0.5, callP: 0.5),
          'K9s':ProgressInfo(raiseP: 0.2, callP: 0.8),
          'K8s':ProgressInfo(raiseP: 0.2, callP: 0.8),
          'K7s':ProgressInfo(raiseP: 0.15, callP: 0.85),
          'K6s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          'K5s':ProgressInfo(raiseP: 0.00, callP: 1.00),
          'K4s':ProgressInfo(raiseP: 0.00, callP: 1.00),
          'K3s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          'K2s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

          'AQo':ProgressInfo(raiseP: 0.3 , callP: 0.7 ),
          'KQo':ProgressInfo(raiseP: 0.15, callP: 0.85),
          'QQ' :ProgressInfo(raiseP: 0.25, callP: 0.75),
          'QJs':ProgressInfo(raiseP: 0.6, callP: 0.4),
          'QTs':ProgressInfo(raiseP: 0.5 , callP: 0.5 ),
          'Q9s':ProgressInfo(raiseP: 0.1, callP: 0.9),
          'Q8s':ProgressInfo(raiseP: 0.1, callP: 0.9),
          'Q7s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          'Q6s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          'Q5s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          'Q4s':ProgressInfo(raiseP: 0.10, callP: 0.90),
          'Q3s':ProgressInfo(raiseP: 0.10, callP: 0.90),
          'Q2s':ProgressInfo(raiseP: 0.1, callP: 0.9),

          'AJo':ProgressInfo(raiseP: 0.15, callP: 0.85),
          'KJo':ProgressInfo(raiseP: 0.1, callP: 0.9),
          'QJo':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          'JJ' :ProgressInfo(raiseP: 0.3, callP: 0.7),
          'JTs':ProgressInfo(raiseP: 0.5, callP: 0.5),
          'J9s':ProgressInfo(raiseP: 0.2, callP: 0.8),
          'J8s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          'J7s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          'J6s':ProgressInfo(raiseP: 0.2, callP: 0.8),
          'J5s':ProgressInfo(raiseP: 0.15, callP: 0.85),
          'J4s':ProgressInfo(raiseP: 0.2, callP: 0.8),
          'J3s':ProgressInfo(raiseP: 0.15, callP: 0.85),
          'J2s':ProgressInfo(raiseP: 0.15, callP: 0.85),

          'ATo':ProgressInfo(raiseP: 0.15, callP: 0.85),
          'KTo':ProgressInfo(raiseP: 0.0, callP: 1.0),
          'QTo':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          'JTo':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          'TT' :ProgressInfo(raiseP: 0.3, callP: 0.7),
          'T9s':ProgressInfo(raiseP: 0.3, callP: 0.7),
          'T8s':ProgressInfo(raiseP: 0.1, callP: 0.9),
          'T7s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          'T6s':ProgressInfo(raiseP: 0.2, callP: 0.8),
          'T5s':ProgressInfo(raiseP: 0.2, callP: 0.8),
          'T4s':ProgressInfo(raiseP: 0.2, callP: 0.8),
          'T3s':ProgressInfo(raiseP: 0.2, callP: 0.8),
          'T2s':ProgressInfo(raiseP: 0.1, callP: 0.9),

          'A9o':ProgressInfo(raiseP: 0.15, callP: 0.85),
          'K9o':ProgressInfo(raiseP: 0.20, callP: 0.80),
          'Q9o':ProgressInfo(raiseP: 0.15, callP: 0.85),
          'J9o':ProgressInfo(raiseP: 0.15, callP: 0.85),
          'T9o':ProgressInfo(raiseP: 0.1, callP: 0.9),
          '99' :ProgressInfo(raiseP: 0.25, callP: 0.75),
          '98s':ProgressInfo(raiseP: 0.1, callP: 0.9),
          '97s':ProgressInfo(raiseP: 0.00, callP: 1.00),
          '96s':ProgressInfo(raiseP: 0.1, callP: 0.9),
          '95s':ProgressInfo(raiseP: 0.25, callP: 0.75),
          '94s':ProgressInfo(raiseP: 0.2 , callP: 0.8 ),
          '93s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          '92s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

          'A8o':ProgressInfo(raiseP: 0.15, callP: 0.85),
          'K8o':ProgressInfo(raiseP: 0.15, callP: 0.85),
          'Q8o':ProgressInfo(raiseP: 0.2, callP: 0.8),
          'J8o':ProgressInfo(raiseP: 0.2, callP: 0.8),
          'T8o':ProgressInfo(raiseP: 0.2, callP: 0.8),
          '98o':ProgressInfo(raiseP: 0.2, callP: 0.8),
          '88' :ProgressInfo(raiseP: 0.2, callP: 0.8),
          '87s':ProgressInfo(raiseP: 0.15, callP: 0.85),
          '86s':ProgressInfo(raiseP: 0.2, callP: 0.8),
          '85s':ProgressInfo(raiseP: 0.15, callP: 0.85),
          '84s':ProgressInfo(raiseP: 0.25, callP: 0.75),
          '83s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          '82s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

          'A7o':ProgressInfo(raiseP: 0.2, callP: 0.8),
          'K7o':ProgressInfo(raiseP: 0.1, callP: 0.9),
          'Q7o':ProgressInfo(raiseP: 0.1, callP: 0.9),
          'J7o':ProgressInfo(raiseP: 0.15, callP: 0.85),
          'T7o':ProgressInfo(raiseP: 0.2, callP: 0.8),
          '97o':ProgressInfo(raiseP: 0.15, callP: 0.85),
          '87o':ProgressInfo(raiseP: 0.14, callP: 0.86),
          '77' :ProgressInfo(raiseP: 0.15, callP: 0.85),
          '76s':ProgressInfo(raiseP: 0.2 , callP: 0.8 ),
          '75s':ProgressInfo(raiseP: 0.10, callP: 0.90),
          '74s':ProgressInfo(raiseP: 0.2 , callP: 0.8 ),
          '73s':ProgressInfo(raiseP: 0.1, callP: 0.9),
          '72s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

          'A6o':ProgressInfo(raiseP: 0.20, callP: 0.80),
          'K6o':ProgressInfo(raiseP: 0.20, callP: 0.80),
          'Q6o':ProgressInfo(raiseP: 0.1, callP: 0.9),
          'J6o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          'T6o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          '96o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          '86o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          '76o':ProgressInfo(raiseP: 0.00, callP: 1.00),
          '66' :ProgressInfo(raiseP: 0.00, callP: 1.00),
          '65s':ProgressInfo(raiseP: 0.25, callP: 0.75),
          '64s':ProgressInfo(raiseP: 0.25, callP: 0.75),
          '63s':ProgressInfo(raiseP: 0.2, callP: 0.8),
          '62s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

          'A5o':ProgressInfo(raiseP: 0.1, callP: 0.9),
          'K5o':ProgressInfo(raiseP: 0.15, callP: 0.85),
          'Q5o':ProgressInfo(raiseP: 0.00, callP: 1.00),
          'J5o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          'T5o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          '95o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          '85o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          '75o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          '65o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          '55' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          '54s':ProgressInfo(raiseP: 0.25, callP: 0.75),
          '53s':ProgressInfo(raiseP: 0.25, callP: 0.75),
          '52s':ProgressInfo(raiseP: 0.25, callP: 0.75),

          'A4o':ProgressInfo(raiseP: 0.1, callP: 0.9),
          'K4o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          'Q4o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          'J4o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          'T4o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          '94o':ProgressInfo(raiseP: 0.0 , callP: 0.3),
          '84o':ProgressInfo(raiseP: 0.0 , callP: 0.75),
          '74o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          '64o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          '54o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          '44' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          '43s':ProgressInfo(raiseP: 0.15, callP: 0.85),
          '42s':ProgressInfo(raiseP: 0.15, callP: 0.85),

          'A3o':ProgressInfo(raiseP: 0.1, callP: 0.9),
          'K3o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          'Q3o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          'J3o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          'T3o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          '93o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          '83o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          '73o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          '63o':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          '53o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          '43o':ProgressInfo(raiseP: 0.0 , callP: 0.15),
          '33' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          '32s':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),

          'A2o':ProgressInfo(raiseP: 0.0, callP: 1.0),
          'K2o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          'Q2o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          'J2o':ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          'T2o':ProgressInfo(raiseP: 0.0 , callP: 0.5 ),

          '22' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
        };
    }
  }
  //4벳팟위한 수딧좀 붙여놓고 얼레디 들어감.
  return {
    'AA' :ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'KK' :ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'QQ' :ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'JJ' :ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'TT' :ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    '99' :ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    '88' :ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    '77' :ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    '66' :ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    '55' :ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    '44' :ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    '33' :ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    '22' :ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),

    'AKs':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'AQs':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'AJs':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'ATs':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'A9s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'A8s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'A7s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'A6s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'A5s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'A4s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'A3s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'A2s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),

    'AKo':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'KQs':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'KJs':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'KTs':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'K9s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'K8s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'K7s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'K6s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),

    'AQo':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'KQo':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'QJs':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'QTs':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'Q9s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),

    'AJo':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'KJo':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'QJo':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'JTs':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'J9s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'J8s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),

    'ATo':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'KTo':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'QTo':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'JTo':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'T9s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'T8s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    'T7s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),

    '98s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    '97s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    '96s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),

    '87s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    '86s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),

    '76s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    '75s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),

    '65s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    '64s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),

    '54s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    '53s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    '52s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),

    '43s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),
    '42s':ProgressInfo(raiseP: 0.0, callP: 0.0, alreadyP: 0.0),


  };
}