import 'package:flutter/material.dart';
import '../constarants/selection.dart';
import '../tourna_chart_stack/100bb.dart';
import '../tourna_chart_stack/80bb.dart';
import '../tourna_chart_stack/60bb.dart';
import '../tourna_chart_stack/50bb.dart';
import '../tourna_chart_stack/40bb.dart';
import '../tourna_chart_stack/35bb.dart';
import '../tourna_chart_stack/30bb.dart';
import '../tourna_chart_stack/25bb.dart';
import '../tourna_chart_stack/20bb.dart';

import 'progress_info_model.dart';

class TournaChartBrain {
  TournaChartBrain({Key? key});

  Map<String, ProgressInfo> paintingProgress(Selection tournaSelection) {

    switch (tournaSelection.tournaStack) {
      case TournaStack.hundred:
        return hundredStack(tournaSelection);
      case TournaStack.eighty:
        return eightyStack(tournaSelection);
      case TournaStack.sixty:
        return sixtyStack(tournaSelection);
      case TournaStack.fifty:
        return fiftyStack(tournaSelection);
      case TournaStack.forty:
        return fortyStack(tournaSelection);
      case TournaStack.thirtyfive:
        return thirtyfiveStack(tournaSelection);
      case TournaStack.thirty:
        return thirtyStack(tournaSelection);
      case TournaStack.twentyfive:
        return twentyfiveStack(tournaSelection);
      case TournaStack.twenty:
        return twentyStack(tournaSelection);
    }
    return {
      'AA' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'KK' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'QQ' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'JJ' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'TT' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      '99' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      '88' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      '77' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      '66' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      '55' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      '44' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      '33' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      '22' :ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),


      'AKs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'AQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'AJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'ATs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'A9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'A8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'A7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'A6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'A5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'A4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'A3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'A2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

      'AKo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'KQs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'KJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'KTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'K9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'K8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'K7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'K6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'K5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'K4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'K3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'K2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

      'AQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'KQo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'QJs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'QTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'Q9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'Q8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'Q7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'Q6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'Q5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'Q4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'Q3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'Q2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

      'AJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'KJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'QJo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'JTs':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'J9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'J8s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'J7s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'J6s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'J5s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'J4s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'J3s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'J2s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),

      'ATo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'KTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'QTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'JTo':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
      'T9s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
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
      '87s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
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
      '76s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
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
      '65s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
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
      '54s':ProgressInfo(raiseProgress: 0.0 , callProgress: 0.0 ),
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
