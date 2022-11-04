import '../common/progress_info_model.dart';
import '../constarants/selection.dart';

Map<String, ProgressInfo> twentyStack(Selection tournaSelection) {
  //스택, 내 포지션,상대 포지션,상대 액션 선택됨
  if (tournaSelection.opponentAction != OpponentAction.none &&
      tournaSelection.myTournaPosition != TournaPosition.none &&
      tournaSelection.opponentTournaPosition != TournaPosition.none) {
    //raise pot
    if (tournaSelection.opponentAction == OpponentAction.raise) {
      if(tournaSelection.myTournaPosition == TournaPosition.SB && tournaSelection.opponentTournaPosition == TournaPosition.BB){
        return {
          'AA' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'KK' :ProgressInfo(raiseP: 0.0 , callP: 1.0 ),
          'QQ' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'JJ' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'TT' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          '99' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          '88' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          '77' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          '66' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          '55' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          '44' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          '33' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          '22' :ProgressInfo(raiseP: 0.0 , callP: 0.0 ),


          'AKs':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'AQs':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'AJs':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'ATs':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'A9s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'A8s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'A7s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'A6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'A5s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'A4s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'A3s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'A2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

          'AKo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'KQs':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'KJs':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'KTs':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'K9s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'K8s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'K7s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'K6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'K5s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'K4s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'K3s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'K2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

          'AQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'KQo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'QJs':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'QTs':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'Q9s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'Q8s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'Q7s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'Q6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'Q5s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'Q4s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'Q3s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'Q2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

          'AJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'KJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'QJo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'JTs':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'J9s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'J8s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'J7s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'J6s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'J5s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'J4s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'J3s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'J2s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),

          'ATo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'KTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'QTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'JTo':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
          'T9s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
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
          '98s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
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
          '87s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
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
          '76s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
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
          '65s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
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
          '54s':ProgressInfo(raiseP: 0.0 , callP: 0.0 ),
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

  return {
    'AA' :ProgressInfo(raiseP: 0.0, callP: 0.0),
    'KK' :ProgressInfo(raiseP: 0.0, callP: 0.0),
    'QQ' :ProgressInfo(raiseP: 0.0, callP: 0.0),
    'JJ' :ProgressInfo(raiseP: 0.0, callP: 0.0),
    'TT' :ProgressInfo(raiseP: 0.0, callP: 0.0),
    '99' :ProgressInfo(raiseP: 0.0, callP: 0.0),
    '88' :ProgressInfo(raiseP: 0.0, callP: 0.0),
    '77' :ProgressInfo(raiseP: 0.0, callP: 0.0),
    '66' :ProgressInfo(raiseP: 0.0, callP: 0.0),
    '55' :ProgressInfo(raiseP: 0.0, callP: 0.0),
    '44' :ProgressInfo(raiseP: 0.0, callP: 0.0),
    '33' :ProgressInfo(raiseP: 0.0, callP: 0.0),
    '22' :ProgressInfo(raiseP: 0.0, callP: 0.0),


    'AKs':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'AQs':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'AJs':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'ATs':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'A9s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'A8s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'A7s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'A6s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'A5s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'A4s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'A3s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'A2s':ProgressInfo(raiseP: 0.0, callP: 0.0),

    'AKo':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'KQs':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'KJs':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'KTs':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'K9s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'K8s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'K7s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'K6s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'K5s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'K4s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'K3s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'K2s':ProgressInfo(raiseP: 0.0, callP: 0.0),

    'AQo':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'KQo':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'QJs':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'QTs':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'Q9s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'Q8s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'Q7s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'Q6s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'Q5s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'Q4s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'Q3s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'Q2s':ProgressInfo(raiseP: 0.0, callP: 0.0),

    'AJo':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'KJo':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'QJo':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'JTs':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'J9s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'J8s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'J7s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'J6s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'J5s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'J4s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'J3s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'J2s':ProgressInfo(raiseP: 0.0, callP: 0.0),

    'ATo':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'KTo':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'QTo':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'JTo':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'T9s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'T8s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'T7s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'T6s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'T5s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'T4s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'T3s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'T2s':ProgressInfo(raiseP: 0.0, callP: 0.0),

    'A9o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'K9o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'Q9o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'J9o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'T9o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '98s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '97s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '96s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '95s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '94s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '93s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '92s':ProgressInfo(raiseP: 0.0, callP: 0.0),

    'A8o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'K8o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'Q8o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'J8o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'T8o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '98o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '87s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '86s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '85s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '84s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '83s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '82s':ProgressInfo(raiseP: 0.0, callP: 0.0),

    'A7o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'K7o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'Q7o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'J7o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'T7o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '97o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '87o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '76s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '75s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '74s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '73s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '72s':ProgressInfo(raiseP: 0.0, callP: 0.0),

    'A6o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'K6o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'Q6o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'J6o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'T6o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '96o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '86o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '76o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '65s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '64s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '63s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '62s':ProgressInfo(raiseP: 0.0, callP: 0.0),

    'A5o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'K5o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'Q5o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'J5o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'T5o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '95o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '85o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '75o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '65o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '54s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '53s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '52s':ProgressInfo(raiseP: 0.0, callP: 0.0),

    'A4o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'K4o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'Q4o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'J4o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'T4o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '94o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '84o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '74o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '64o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '54o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '43s':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '42s':ProgressInfo(raiseP: 0.0, callP: 0.0),

    'A3o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'K3o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'Q3o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'J3o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'T3o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '93o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '83o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '73o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '63o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '53o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '43o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '32s':ProgressInfo(raiseP: 0.0, callP: 0.0),

    'A2o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'K2o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'Q2o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'J2o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    'T2o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '92o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '82o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '72o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '62o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '52o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '42o':ProgressInfo(raiseP: 0.0, callP: 0.0),
    '32o':ProgressInfo(raiseP: 0.0, callP: 0.0),
  };
}