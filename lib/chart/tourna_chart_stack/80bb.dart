import '../common/progress_info_model.dart';
import '../constarants/selection.dart';

Map<String, ProgressInfo> eightyStack(Selection tournaSelection) {
  //스택, 내 포지션,상대 포지션,상대 액션 선택됨
  if (tournaSelection.opponentAction != OpponentAction.none &&
      tournaSelection.myTournaPosition != TournaPosition.none &&
      tournaSelection.opponentTournaPosition != TournaPosition.none) {
    //raise pot
    if (tournaSelection.opponentAction == OpponentAction.raise) {
      if(tournaSelection.myTournaPosition == TournaPosition.SB && tournaSelection.opponentTournaPosition == TournaPosition.BB){
        return {
          'AA' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00, alreadyProgress: 0.40),
          'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00, alreadyProgress: 0.30),
          'QQ' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00, alreadyProgress: 0.30),
          'JJ' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00, alreadyProgress: 0.30),
          'TT' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00, alreadyProgress: 0.40),
          '99' :ProgressInfo(raiseProgress: 0.40, callProgress: 0.60, alreadyProgress: 0.25),
          '88' :ProgressInfo(raiseProgress: 0.15, callProgress: 0.85, alreadyProgress: 0.20),
          '77' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.15),
          '66' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.00),
          '55' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.00),
          '44' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.00),
          '33' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.00),
          '22' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.00),

          'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00, alreadyProgress: 0.35),
          'AQs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00, alreadyProgress: 0.35),
          'AJs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00, alreadyProgress: 0.75),
          'ATs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00, alreadyProgress: 0.70),
          'A9s':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60, alreadyProgress: 0.90),
          'A8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.50),
          'A7s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.00),
          'A6s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.40),
          'A5s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.50),
          'A4s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.00),
          'A3s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.00),
          'A2s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.00),

          'AKo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00, alreadyProgress: 0.30),
          'KQs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00, alreadyProgress: 0.70),
          'KJs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00, alreadyProgress: 0.70),
          'KTs':ProgressInfo(raiseProgress: 0.70, callProgress: 0.30, alreadyProgress: 0.60),
          'K9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.50),
          'K8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.15),
          'K7s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.00),
          'K6s':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65, alreadyProgress: 0.00),
          'K5s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.00),
          'K4s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.00),
          'K3s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.00),
          'K2s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.00),

          'AQo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00, alreadyProgress: 0.40),
          'KQo':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65, alreadyProgress: 0.25),
          'QJs':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.90),
          'QTs':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65, alreadyProgress: 0.70),
          'Q9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.00),
          'Q8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.00),
          'Q7s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.00),
          'Q6s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.00),
          'Q5s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.00),
          'Q4s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.15),
          'Q3s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.10),
          'Q2s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.33),

          'AJo':ProgressInfo(raiseProgress: 0.50, callProgress: 0.50, alreadyProgress: 0.15),
          'KJo':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85, alreadyProgress: 0.15),
          'QJo':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.00),
          'JTs':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75, alreadyProgress: 0.75),
          'J9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.25),
          'J8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.00),
          'J7s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.00),
          'J6s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.25),
          'J5s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.40),
          'J4s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.50),
          'J3s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.00),
          'J2s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.00),

          'ATo':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.15),
          'KTo':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80, alreadyProgress: 0.15),
          'QTo':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85, alreadyProgress: 0.00),
          'JTo':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.00),
          'T9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.25),
          'T8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.00),
          'T7s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.00),
          'T6s':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65, alreadyProgress: 0.50),
          'T5s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.00),
          'T4s':ProgressInfo(raiseProgress: 0.50, callProgress: 0.50, alreadyProgress: 0.30),
          'T3s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.50),
          'T2s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.40),

          'A9o':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70, alreadyProgress: 0.20),
          'K9o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.15),
          'Q9o':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85, alreadyProgress: 0.20),
          'J9o':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85, alreadyProgress: 0.20),
          'T9o':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85, alreadyProgress: 0.20),
          '98s':ProgressInfo(raiseProgress: 0.50, callProgress: 0.50, alreadyProgress: 0.00),
          '97s':ProgressInfo(raiseProgress: 0.50, callProgress: 0.50, alreadyProgress: 0.20),
          '96s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.00),
          '95s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.40),
          '94s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.15),
          '93s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '92s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),

          'A8o':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60, alreadyProgress: 0.15),
          'K8o':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70, alreadyProgress: 0.30),
          'Q8o':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85, alreadyProgress: 0.30),
          'J8o':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85, alreadyProgress: 0.30),
          'T8o':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85, alreadyProgress: 0.30),
          '98o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.30),
          '87s':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75, alreadyProgress: 0.15),
          '86s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.15),
          '85s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.15),
          '84s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.50, alreadyProgress: 0.20),
          '83s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '82s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),

          'A7o':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75, alreadyProgress: 0.20),
          'K7o':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75, alreadyProgress: 0.20),
          'Q7o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          'J7o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          'T7o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '97o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.50, alreadyProgress: 0.20),
          '87o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.50, alreadyProgress: 0.15),
          '76s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.40),
          '75s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.00),
          '74s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.40),
          '73s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '72s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),

          'A6o':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85, alreadyProgress: 0.30),
          'K6o':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70, alreadyProgress: 0.30),
          'Q6o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          'J6o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          'T6o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '96o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '86o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '76o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '65s':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60, alreadyProgress: 0.40),
          '64s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.25),
          '63s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.50),
          '62s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),

          'A5o':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75, alreadyProgress: 0.10),
          'K5o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.30, alreadyProgress: 0.10),
          'Q5o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          'J5o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          'T5o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '95o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '85o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '75o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '65o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '54s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.50),
          '53s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.25),
          '52s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),

          'A4o':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75, alreadyProgress: 0.15),
          'K4o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          'Q4o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          'J4o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          'T4o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '94o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '84o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '74o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '64o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '54o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '43s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00, alreadyProgress: 0.25),
          '42s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),

          'A3o':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85, alreadyProgress: 0.15),
          'K3o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          'Q3o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          'J3o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          'T3o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '93o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '83o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '73o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '63o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '53o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '43o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '32s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),

          'A2o':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75, alreadyProgress: 0.15),
          'K2o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          'Q2o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          'J2o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          'T2o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '92o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '82o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '72o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '62o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '52o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '42o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
          '32o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00, alreadyProgress: 0.00),
        };
      }
    }
    //3bet pot
    else if (tournaSelection.opponentAction == OpponentAction.threeBet) {
      if (tournaSelection.myTournaPosition == TournaPosition.UTG) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.UTG1:
            return {};
          case TournaPosition.LJ:
            return {};
          case TournaPosition.HJ:
            return {};
          case TournaPosition.CO:
            return {};
          case TournaPosition.BTN:
            return {};
          case TournaPosition.SB:
            return {};
          case TournaPosition.BB:
            return {};
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.UTG1) {
        switch (tournaSelection.opponentTournaPosition) {

          case TournaPosition.LJ:
            return {};
          case TournaPosition.HJ:
            return {};
          case TournaPosition.CO:
            return {};
          case TournaPosition.BTN:
            return {};
          case TournaPosition.SB:
            return {};
          case TournaPosition.BB:
            return {};
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.LJ) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.HJ:
            return {};
          case TournaPosition.CO:
            return {};
          case TournaPosition.BTN:
            return {};
          case TournaPosition.SB:
            return {};
          case TournaPosition.BB:
            return {};
        }
      }
      else if (tournaSelection.myTournaPosition == TournaPosition.HJ) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.CO:
            return {};
          case TournaPosition.BTN:
            return {};
          case TournaPosition.SB:
            return {};
          case TournaPosition.BB:
            return {};
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.CO) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.BTN:
            return {};
          case TournaPosition.SB:
            return {};
          case TournaPosition.BB:
            return {};
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.BTN) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.SB:
            return {};
          case TournaPosition.BB:
            return {};
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.SB) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.BB:
            return {};
        }
      }
    }
    //4bet pot
    else if (tournaSelection.opponentAction == OpponentAction.fourBet) {
      if (tournaSelection.myTournaPosition == TournaPosition.UTG1) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.UTG:
            return {};
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.LJ) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.UTG:
            return {};
          case TournaPosition.UTG1:
            return {};
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.HJ) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.UTG:
            return {};
          case TournaPosition.UTG1:
            return {};
          case TournaPosition.LJ:
            return {};
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.CO) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.UTG:
            return {};
          case TournaPosition.UTG1:
            return {};
          case TournaPosition.LJ:
            return {};
          case TournaPosition.HJ:
            return {};
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.BTN) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.UTG:
            return {};
          case TournaPosition.UTG1:
            return {};
          case TournaPosition.LJ:
            return {};
          case TournaPosition.HJ:
            return {};
          case TournaPosition.CO:
            return {};
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.SB) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.UTG:
            return {};
          case TournaPosition.UTG1:
            return {};
          case TournaPosition.LJ:
            return {};
          case TournaPosition.HJ:
            return {};
          case TournaPosition.CO:
            return {};
          case TournaPosition.BTN:
            return {};
        }
      } else if (tournaSelection.myTournaPosition == TournaPosition.BB) {
        switch (tournaSelection.opponentTournaPosition) {
          case TournaPosition.UTG:
            return {};
          case TournaPosition.UTG1:
            return {};
          case TournaPosition.LJ:
            return {};
          case TournaPosition.HJ:
            return {};
          case TournaPosition.CO:
            return {};
          case TournaPosition.BTN:
            return {};
          case TournaPosition.SB:
            return {};

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
          return {};
      }

    } else if (tournaSelection.myTournaPosition == TournaPosition.LJ) {
      switch (tournaSelection.opponentTournaPosition) {
        case TournaPosition.UTG:
          return {};
        case TournaPosition.UTG1:
          return {};
      }
    } else if (tournaSelection.myTournaPosition == TournaPosition.HJ) {
      switch (tournaSelection.opponentTournaPosition) {

        case TournaPosition.UTG:
          return {};
        case TournaPosition.UTG1:
          return {};
        case TournaPosition.LJ:
          return {};
      }
    } else if (tournaSelection.myTournaPosition == TournaPosition.CO) {
      switch (tournaSelection.opponentTournaPosition) {

        case TournaPosition.UTG:
          return {};
        case TournaPosition.UTG1:
          return {};
        case TournaPosition.LJ:
          return {};
        case TournaPosition.HJ:
          return {};
      }
    } else if (tournaSelection.myTournaPosition == TournaPosition.BTN) {
      switch (tournaSelection.opponentTournaPosition) {

        case TournaPosition.UTG:
          return {};
        case TournaPosition.UTG1:
          return {};
        case TournaPosition.LJ:
          return {};
        case TournaPosition.HJ:
          return {};
        case TournaPosition.CO:
          return {};
      }
    } else if (tournaSelection.myTournaPosition == TournaPosition.SB) {
      switch (tournaSelection.opponentTournaPosition) {

        case TournaPosition.UTG:
          return {};
        case TournaPosition.UTG1:
          return {};
        case TournaPosition.LJ:
          return {};
        case TournaPosition.HJ:
          return {};
        case TournaPosition.CO:
          return {};
        case TournaPosition.BTN:
          return {};
      }
    } else if (tournaSelection.myTournaPosition == TournaPosition.BB) {
      switch (tournaSelection.opponentTournaPosition) {
        case TournaPosition.UTG:
          return {};
        case TournaPosition.UTG1:
          return {};
        case TournaPosition.LJ:
          return {};
        case TournaPosition.HJ:
          return {};
        case TournaPosition.CO:
          return {};
        case TournaPosition.BTN:
          return {};
        case TournaPosition.SB:
          return {};

      }
    }
  }
  //스택,내포지션만 선택됨
  else if (tournaSelection.myTournaPosition != TournaPosition.none) {
    switch (tournaSelection.myTournaPosition) {
      case TournaPosition.UTG:
        return {
          'AA' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'KK' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'QQ' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'JJ' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'TT' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          '99' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          '88' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          '77' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          '66' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          '55' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          '44' :ProgressInfo(raiseProgress: 0.4 , callProgress: 0.0 ),
          '33' :ProgressInfo(raiseProgress: 0.3 , callProgress: 0.0 ),
          '22' :ProgressInfo(raiseProgress: 0.2 , callProgress: 0.0 ),


          'AKs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'AQs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'AJs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'ATs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'A9s':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'A8s':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'A7s':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'A6s':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'A5s':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'A4s':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'A3s':ProgressInfo(raiseProgress: 0.75, callProgress: 0.0 ),

          'AKo':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'KQs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'KJs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'KTs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'K9s':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'K8s':ProgressInfo(raiseProgress: 0.8 , callProgress: 0.0 ),


          'AQo':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'KQo':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'QJs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'QTs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'Q9s':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),

          'AJo':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'KJo':ProgressInfo(raiseProgress: 0.50, callProgress: 0.0 ),
          'QJo':ProgressInfo(raiseProgress: 0.15, callProgress: 0.0 ),
          'JTs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'J9s':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),


          'ATo':ProgressInfo(raiseProgress: 0.3 , callProgress: 0.0 ),
          'T9s':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'T8s':ProgressInfo(raiseProgress: 0.8 , callProgress: 0.0 ),


          'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
          '98s':ProgressInfo(raiseProgress: 0.6 , callProgress: 0.0 ),


          'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
          '87s':ProgressInfo(raiseProgress: 0.3 , callProgress: 0.0 ),


          'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
          '76s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.0 ),



        };
      case TournaPosition.UTG1:
        return {
          'AA' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'KK' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'QQ' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'JJ' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'TT' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          '99' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          '88' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          '77' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          '66' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          '55' :ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          '44' :ProgressInfo(raiseProgress: 0.85, callProgress: 0.0 ),
          '33' :ProgressInfo(raiseProgress: 0.70, callProgress: 0.0 ),
          '22' :ProgressInfo(raiseProgress: 0.60, callProgress: 0.0 ),


          'AKs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'AQs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'AJs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'ATs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'A9s':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'A8s':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'A7s':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'A6s':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'A5s':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'A4s':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'A3s':ProgressInfo(raiseProgress: 1.0, callProgress: 0.0 ),

          'AKo':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'KQs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'KJs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'KTs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'K9s':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'K8s':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'K7s':ProgressInfo(raiseProgress: 0.6 , callProgress: 0.0 ),
          'K6s':ProgressInfo(raiseProgress: 0.5 , callProgress: 0.0 ),


          'AQo':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'KQo':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'QJs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'QTs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'Q9s':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),

          'AJo':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'KJo':ProgressInfo(raiseProgress: 0.90, callProgress: 0.0 ),
          'QJo':ProgressInfo(raiseProgress: 0.50, callProgress: 0.0 ),
          'JTs':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'J9s':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'J8s':ProgressInfo(raiseProgress: .2 , callProgress: 0.0 ),


          'ATo':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'KTo':ProgressInfo(raiseProgress: 0.20, callProgress: 0.0 ),
          'JTo':ProgressInfo(raiseProgress: 0.20, callProgress: 0.0 ),
          'T9s':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),
          'T8s':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),


          'A9o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
          '98s':ProgressInfo(raiseProgress: 1.0 , callProgress: 0.0 ),


          'A8o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
          '87s':ProgressInfo(raiseProgress: 0.4 , callProgress: 0.0 ),


          'A7o':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
          '76s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.0 ),



        };
      case TournaPosition.LJ:
        return {
          'AA' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'QQ' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'JJ' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'TT' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '99' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '88' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '77' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '66' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '55' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '44' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '33' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '22' :ProgressInfo(raiseProgress: 0.80, callProgress: 0.00),


          'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'AQs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'AJs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'ATs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'A9s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'A8s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'A7s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'A6s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'A5s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'A4s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'A3s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'A2s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),

          'AKo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'KQs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'KJs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'KTs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'K9s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'K8s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'K7s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'K6s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),


          'AQo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'KQo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'QJs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'QTs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'Q9s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'Q8s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),


          'AJo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'KJo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'QJo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'JTs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'J9s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'J8s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),


          'ATo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'KTo':ProgressInfo(raiseProgress: 0.80, callProgress: 0.00),
          'QTo':ProgressInfo(raiseProgress: 0.40, callProgress: 0.00),
          'JTo':ProgressInfo(raiseProgress: 0.50, callProgress: 0.00),
          'T9s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'T8s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),


          'A9o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
          '98s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '97s':ProgressInfo(raiseProgress: 0.30, callProgress: 0.00),


          'A8o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
          '87s':ProgressInfo(raiseProgress: 0.35, callProgress: 0.00),


          'A7o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
          '76s':ProgressInfo(raiseProgress: 0.30, callProgress: 0.00),


          'A6o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),




        };
      case TournaPosition.HJ:
        return {
          'AA' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'QQ' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'JJ' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'TT' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '99' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '88' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '77' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '66' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '55' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '44' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '33' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '22' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),


          'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'AQs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'AJs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'ATs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'A9s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'A8s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'A7s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'A6s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'A5s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'A4s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'A3s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'A2s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),

          'AKo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'KQs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'KJs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'KTs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'K9s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'K8s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'K7s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'K6s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'K5s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'K4s':ProgressInfo(raiseProgress: 0.80, callProgress: 0.00),


          'AQo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'KQo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'QJs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'QTs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'Q9s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'Q8s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'Q7s':ProgressInfo(raiseProgress: 0.70, callProgress: 0.00),
          'Q6s':ProgressInfo(raiseProgress: 0.20, callProgress: 0.00),


          'AJo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'KJo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'QJo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'JTs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'J9s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'J8s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),


          'ATo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'KTo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'QTo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'JTo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'T9s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'T8s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'T7s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),


          'A9o':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '98s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '97s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),


          'A8o':ProgressInfo(raiseProgress: 0.30, callProgress: 0.00),
          '87s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '86s':ProgressInfo(raiseProgress: 0.25, callProgress: 0.00),


          'A7o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
          '76s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),


          'A6o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
          '65s':ProgressInfo(raiseProgress: 0.30, callProgress: 0.00),




        };
      case TournaPosition.CO:
        return {
          'AA' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'QQ' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'JJ' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'TT' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '99' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '88' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '77' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '66' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '55' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '44' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '33' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '22' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),


          'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'AQs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'AJs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'ATs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'A9s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'A8s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'A7s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'A6s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'A5s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'A4s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'A3s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'A2s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),

          'AKo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'KQs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'KJs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'KTs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'K9s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'K8s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'K7s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'K6s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'K5s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'K4s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'K3s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'K2s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),

          'AQo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'KQo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'QJs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'QTs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'Q9s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'Q8s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'Q7s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'Q6s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'Q5s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'Q4s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'Q3s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
          'Q2s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),

          'AJo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'KJo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'QJo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'JTs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'J9s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'J8s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'J7s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'J6s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'J5s':ProgressInfo(raiseProgress: 0.60, callProgress: 0.00),


          'ATo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'KTo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'QTo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'JTo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'T9s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'T8s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'T7s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'T6s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),


          'A9o':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'K9o':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'Q9o':ProgressInfo(raiseProgress: 0.60, callProgress: 0.00),
          'J9o':ProgressInfo(raiseProgress: 0.80, callProgress: 0.00),
          'T9o':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '98s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '97s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '96s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),


          'A8o':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '87s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '86s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '85s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.00),


          'A7o':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '76s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '75s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),


          'A6o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
          '65s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),


          'A5o':ProgressInfo(raiseProgress: 0.60, callProgress: 0.00),
          '54s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),



        };
      case TournaPosition.BTN:
        return {
          'AA' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'QQ' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'JJ' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'TT' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '99' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '88' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '77' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '66' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '55' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '44' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '33' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '22' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),


          'AKs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'AQs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'AJs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'ATs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'A9s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'A8s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'A7s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'A6s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'A5s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'A4s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'A3s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'A2s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),

          'AKo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'KQs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'KJs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'KTs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'K9s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'K8s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'K7s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'K6s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'K5s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'K4s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'K3s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'K2s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),

          'AQo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'KQo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'QJs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'QTs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'Q9s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'Q8s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'Q7s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'Q6s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'Q5s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'Q4s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'Q3s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'Q2s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),

          'AJo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'KJo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'QJo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'JTs':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'J9s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'J8s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'J7s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'J6s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'J5s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'J4s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'J3s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'J2s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),

          'ATo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'KTo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'QTo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'JTo':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'T9s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'T8s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'T7s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'T6s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'T5s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'T4s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'T3s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'T2s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),

          'A9o':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'K9o':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'Q9o':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'J9o':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'T9o':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '98s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '97s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '96s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '95s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),


          'A8o':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'K8o':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'Q8o':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'J8o':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'T8o':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '98o':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '87s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '86s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '85s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '84s':ProgressInfo(raiseProgress: 0.25, callProgress: 0.00),


          'A7o':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'K7o':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'Q7o':ProgressInfo(raiseProgress: 0.80, callProgress: 0.00),
          'J7o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
          'T7o':ProgressInfo(raiseProgress: 0.70, callProgress: 0.00),
          '97o':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '87o':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '76s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '75s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '74s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),

          'A6o':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'K6o':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'Q6o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
          'J6o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
          'T6o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
          '96o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
          '86o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
          '76o':ProgressInfo(raiseProgress: 0.25, callProgress: 0.00),
          '65s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '64s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),

          'A5o':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          'K5o':ProgressInfo(raiseProgress: 0.75, callProgress: 0.00),

          '54s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '53s':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '52s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),

          'A4o':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
          '43s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.00),
          '42s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),

          'A3o':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),


          'A2o':ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),

        };
      case TournaPosition.SB:
        return {
          'AA' :ProgressInfo(raiseProgress: 0.40, callProgress: 0.60),
          'KK' :ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),
          'QQ' :ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),
          'JJ' :ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),
          'TT' :ProgressInfo(raiseProgress: 0.40, callProgress: 0.60),
          '99' :ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
          '88' :ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
          '77' :ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
          '66' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          '55' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          '44' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          '33' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          '22' :ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),


          'AKs':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),
          'AQs':ProgressInfo(raiseProgress: 0.35, callProgress: 0.65),
          'AJs':ProgressInfo(raiseProgress: 0.75, callProgress: 0.25),
          'ATs':ProgressInfo(raiseProgress: 0.70, callProgress: 0.30),
          'A9s':ProgressInfo(raiseProgress: 0.90, callProgress: 0.10),
          'A8s':ProgressInfo(raiseProgress: 0.50, callProgress: 0.50),
          'A7s':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60),
          'A6s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'A5s':ProgressInfo(raiseProgress: 0.50, callProgress: 0.50),
          'A4s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'A3s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'A2s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),

          'AKo':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),
          'KQs':ProgressInfo(raiseProgress: 0.70, callProgress: 0.30),
          'KJs':ProgressInfo(raiseProgress: 0.70, callProgress: 0.30),
          'KTs':ProgressInfo(raiseProgress: 0.60, callProgress: 0.40),
          'K9s':ProgressInfo(raiseProgress: 0.50, callProgress: 0.50),
          'K8s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
          'K7s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'K6s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'K5s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'K4s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'K3s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'K2s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),

          'AQo':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60),
          'KQo':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
          'QJs':ProgressInfo(raiseProgress: 0.90, callProgress: 0.10),
          'QTs':ProgressInfo(raiseProgress: 0.70, callProgress: 0.30),
          'Q9s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'Q8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'Q7s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'Q6s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'Q5s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'Q4s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
          'Q3s':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
          'Q2s':ProgressInfo(raiseProgress: 0.33, callProgress: 0.67),

          'AJo':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
          'KJo':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
          'QJo':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'JTs':ProgressInfo(raiseProgress: 0.75, callProgress: 0.25),
          'J9s':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
          'J8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'J7s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'J6s':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
          'J5s':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60),
          'J4s':ProgressInfo(raiseProgress: 0.50, callProgress: 0.50),
          'J3s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'J2s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),

          'ATo':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
          'KTo':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
          'QTo':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'JTo':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'T9s':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
          'T8s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'T7s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'T6s':ProgressInfo(raiseProgress: 0.50, callProgress: 0.50),
          'T5s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'T4s':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),
          'T3s':ProgressInfo(raiseProgress: 0.50, callProgress: 0.50),
          'T2s':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60),

          'A9o':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
          'K9o':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
          'Q9o':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
          'J9o':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
          'T9o':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
          '98s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          '97s':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
          '96s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          '95s':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60),
          '94s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
          '93s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          '92s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),

          'A8o':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
          'K8o':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),
          'Q8o':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),
          'J8o':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),
          'T8o':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),
          '98o':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),
          '87s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
          '86s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
          '85s':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
          '84s':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
          '83s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          '82s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),

          'A7o':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
          'K7o':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
          'Q7o':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
          'J7o':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
          'T7o':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
          '97o':ProgressInfo(raiseProgress: 0.20, callProgress: 0.80),
          '87o':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
          '76s':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60),
          '75s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          '74s':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60),
          '73s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          '72s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),

          'A6o':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),
          'K6o':ProgressInfo(raiseProgress: 0.30, callProgress: 0.70),
          'Q6o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'J6o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'T6o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          '96o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          '86o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          '76o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          '65s':ProgressInfo(raiseProgress: 0.40, callProgress: 0.60),
          '64s':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
          '63s':ProgressInfo(raiseProgress: 0.50, callProgress: 0.50),
          '62s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),

          'A5o':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
          'K5o':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
          'Q5o':ProgressInfo(raiseProgress: 0.10, callProgress: 0.90),
          'J5o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'T5o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          '95o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          '85o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          '75o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          '65o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          '54s':ProgressInfo(raiseProgress: 0.50, callProgress: 0.50),
          '53s':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
          '52s':ProgressInfo(raiseProgress: 0.50, callProgress: 0.50),

          'A4o':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
          'K4o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'Q4o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'J4o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'T4o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          '94o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
          '84o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
          '74o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.50),
          '64o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          '54o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          '43s':ProgressInfo(raiseProgress: 0.25, callProgress: 0.75),
          '42s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),

          'A3o':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
          'K3o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'Q3o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'J3o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'T3o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          '53o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.60),

          '32s':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),

          'A2o':ProgressInfo(raiseProgress: 0.15, callProgress: 0.85),
          'K2o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'Q2o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'J2o':ProgressInfo(raiseProgress: 0.00, callProgress: 1.00),
          'T2o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
          '92o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
          '82o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
          '72o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
          '62o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
          '52o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
          '42o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
          '32o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
        };
    }
  }

  return {
    'AA' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
    'KK' :ProgressInfo(raiseProgress: 1.00, callProgress: 0.00),
    'QQ' :ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'JJ' :ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'TT' :ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '99' :ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '88' :ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '77' :ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '66' :ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '55' :ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '44' :ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '33' :ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '22' :ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),


    'AKs':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'AQs':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'AJs':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'ATs':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'A9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'A8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'A7s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'A6s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'A5s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'A4s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'A3s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'A2s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),

    'AKo':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'KQs':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'KJs':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'KTs':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'K9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'K8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'K7s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'K6s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'K5s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'K4s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'K3s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'K2s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),

    'AQo':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'KQo':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'QJs':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'QTs':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'Q9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'Q8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'Q7s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'Q6s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'Q5s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'Q4s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'Q3s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'Q2s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),

    'AJo':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'KJo':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'QJo':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'JTs':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'J9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'J8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'J7s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'J6s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'J5s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'J4s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'J3s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'J2s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),

    'ATo':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'KTo':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'QTo':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'JTo':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'T9s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'T8s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'T7s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'T6s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'T5s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'T4s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'T3s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'T2s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),

    'A9o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'K9o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'Q9o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'J9o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'T9o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '98s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '97s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '96s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '95s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '94s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '93s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '92s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),

    'A8o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'K8o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'Q8o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'J8o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'T8o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '98o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '87s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '86s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '85s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '84s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '83s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '82s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),

    'A7o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'K7o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'Q7o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'J7o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'T7o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '97o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '87o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '76s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '75s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '74s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '73s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '72s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),

    'A6o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'K6o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'Q6o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'J6o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'T6o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '96o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '86o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '76o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '65s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '64s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '63s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '62s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),

    'A5o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'K5o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'Q5o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'J5o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'T5o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '95o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '85o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '75o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '65o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '54s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '53s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '52s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),

    'A4o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'K4o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'Q4o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'J4o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'T4o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '94o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '84o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '74o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '64o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '54o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '43s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '42s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),

    'A3o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'K3o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'Q3o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'J3o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'T3o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '93o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '83o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '73o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '63o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '53o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '43o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '32s':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),

    'A2o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'K2o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'Q2o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'J2o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    'T2o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '92o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '82o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '72o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '62o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '52o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '42o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
    '32o':ProgressInfo(raiseProgress: 0.00, callProgress: 0.00),
  };
}