import 'package:poker/poker.dart';


RankPair cards(String card){
  Map<String,RankPair> cardMapping= {
      'AA' : const RankPair.ofsuit(high: Rank.ace, kicker: Rank.ace),
      'KK' : const RankPair.ofsuit(high: Rank.king, kicker: Rank.king),
      'QQ' : const RankPair.ofsuit(high: Rank.queen, kicker: Rank.queen),
      'JJ' : const RankPair.ofsuit(high: Rank.jack, kicker: Rank.jack),
      'TT' : const RankPair.ofsuit(high: Rank.ten, kicker: Rank.ten),
      '99' : const RankPair.ofsuit(high: Rank.nine, kicker: Rank.nine),
      '88' : const RankPair.ofsuit(high: Rank.eight, kicker: Rank.eight),
      'AKs': RankPair.suited(high: Rank.ace, kicker: Rank.king),
      '77' : const RankPair.ofsuit(high: Rank.seven, kicker: Rank.seven),
      'AQs': RankPair.suited(high: Rank.ace, kicker: Rank.queen),
      'AKo': const RankPair.ofsuit(high: Rank.ace, kicker: Rank.king),
      'AJs': RankPair.suited(high: Rank.ace, kicker: Rank.jack),
      'ATs': RankPair.suited(high: Rank.ace, kicker: Rank.ten),
      'AQo': const RankPair.ofsuit(high: Rank.ace, kicker: Rank.queen),
      'AJo': const RankPair.ofsuit(high: Rank.ace, kicker: Rank.jack),
      'KQs': RankPair.suited(high: Rank.king, kicker: Rank.queen),
      '66' : const RankPair.ofsuit(high: Rank.six, kicker: Rank.six),
      'A9s': RankPair.suited(high: Rank.ace, kicker: Rank.nine),
      'ATo': const RankPair.ofsuit(high: Rank.ace, kicker: Rank.ten),
      'KJs': RankPair.suited(high: Rank.king, kicker: Rank.jack),
      'A8s': RankPair.suited(high: Rank.ace, kicker: Rank.eight),
      'KTs': RankPair.suited(high: Rank.king, kicker: Rank.ten),
      'KQo': const RankPair.ofsuit(high: Rank.king, kicker: Rank.queen),
      'A7s': RankPair.suited(high: Rank.ace, kicker: Rank.seven),
      'A9o': const RankPair.ofsuit(high: Rank.ace, kicker: Rank.nine),
      'KJo': const RankPair.ofsuit(high: Rank.king, kicker: Rank.jack),
      'QJs': RankPair.suited(high: Rank.queen, kicker: Rank.jack),
      '55' : const RankPair.ofsuit(high: Rank.five, kicker: Rank.five),
      'A8o': const RankPair.ofsuit(high: Rank.ace, kicker: Rank.eight),
      'A6s': RankPair.suited(high: Rank.ace, kicker: Rank.six),
      'K9s': RankPair.suited(high: Rank.king, kicker: Rank.nine),
      'A5s': RankPair.suited(high: Rank.ace, kicker: Rank.five),
      'KTo': const RankPair.ofsuit(high: Rank.king, kicker: Rank.ten),
      'QTs': RankPair.suited(high: Rank.queen, kicker: Rank.ten),
      'A7o': const RankPair.ofsuit(high: Rank.ace, kicker: Rank.seven),
      'A4s': RankPair.suited(high: Rank.ace, kicker: Rank.four),
      'K8s': RankPair.suited(high: Rank.king, kicker: Rank.eight),
      'QJo': const RankPair.ofsuit(high: Rank.queen, kicker: Rank.jack),
      'A3s': RankPair.suited(high: Rank.ace, kicker: Rank.trey),
      'K9o': const RankPair.ofsuit(high: Rank.king, kicker: Rank.nine),
      'Q9s': RankPair.suited(high: Rank.queen, kicker: Rank.nine),
      'A6o': const RankPair.ofsuit(high: Rank.ace, kicker: Rank.six),
      'K7s': RankPair.suited(high: Rank.king, kicker: Rank.seven),
      'A5o': const RankPair.ofsuit(high: Rank.ace, kicker: Rank.five),
      'JTs': RankPair.suited(high: Rank.jack, kicker: Rank.ten),
      'QTo': const RankPair.ofsuit(high: Rank.queen, kicker: Rank.ten),
      'A2s': RankPair.suited(high: Rank.ace, kicker: Rank.deuce),
      '44' : const RankPair.ofsuit(high: Rank.four, kicker: Rank.four),
      'K6s': RankPair.suited(high: Rank.king, kicker: Rank.six),
      'A4o': const RankPair.ofsuit(high: Rank.ace, kicker: Rank.four),
      'K8o': const RankPair.ofsuit(high: Rank.king, kicker: Rank.eight),
      'Q8s': RankPair.suited(high: Rank.queen, kicker: Rank.eight),
      'K5s': RankPair.suited(high: Rank.king, kicker: Rank.five),
      'J9s': RankPair.suited(high: Rank.jack, kicker: Rank.nine),
      'A3o': const RankPair.ofsuit(high: Rank.ace, kicker: Rank.trey),
      'Q9o': const RankPair.ofsuit(high: Rank.queen, kicker: Rank.nine),
      'K7o': const RankPair.ofsuit(high: Rank.king, kicker: Rank.seven),
      'JTo': const RankPair.ofsuit(high: Rank.jack, kicker: Rank.ten),
      'K4s': RankPair.suited(high: Rank.king, kicker: Rank.four),
      'A2o': const RankPair.ofsuit(high: Rank.ace, kicker: Rank.deuce),
      'Q7s': RankPair.suited(high: Rank.queen, kicker: Rank.seven),
      'K6o': const RankPair.ofsuit(high: Rank.king, kicker: Rank.six),
      'T9s': RankPair.suited(high: Rank.ten, kicker: Rank.nine),
      'J8s': RankPair.suited(high: Rank.jack, kicker: Rank.eight),
      'K3s': RankPair.suited(high: Rank.king, kicker: Rank.trey),
      'Q8o': const RankPair.ofsuit(high: Rank.queen, kicker: Rank.eight),
      'Q6s': RankPair.suited(high: Rank.queen, kicker: Rank.six),
      '33' : const RankPair.ofsuit(high: Rank.trey, kicker: Rank.trey),
      'J9o': const RankPair.ofsuit(high: Rank.jack, kicker: Rank.nine),
      'K5o': const RankPair.ofsuit(high: Rank.king, kicker: Rank.five),
      'K2s': RankPair.suited(high: Rank.king, kicker: Rank.deuce),
      'Q5s': RankPair.suited(high: Rank.queen, kicker: Rank.five),
      'T8s': RankPair.suited(high: Rank.ten, kicker: Rank.eight),
      'J7s': RankPair.suited(high: Rank.jack, kicker: Rank.seven),
      'K4o': const RankPair.ofsuit(high: Rank.king, kicker: Rank.four),
      'Q7o': const RankPair.ofsuit(high: Rank.queen, kicker: Rank.seven),
      'Q4s': RankPair.suited(high: Rank.queen, kicker: Rank.four),
      'J8o': const RankPair.ofsuit(high: Rank.jack, kicker: Rank.eight),
      'T9o': const RankPair.ofsuit(high: Rank.ten, kicker: Rank.nine),
      'K3o': const RankPair.ofsuit(high: Rank.king, kicker: Rank.trey),
      'Q6o': const RankPair.ofsuit(high: Rank.queen, kicker: Rank.six),
      '98s': RankPair.suited(high: Rank.nine, kicker: Rank.eight),
      'T7s': RankPair.suited(high: Rank.ten, kicker: Rank.seven),
      'J6s': RankPair.suited(high: Rank.jack, kicker: Rank.six),
      'Q3s': RankPair.suited(high: Rank.queen, kicker: Rank.trey),
      '22' : const RankPair.ofsuit(high: Rank.deuce, kicker: Rank.deuce),
      'K2o': const RankPair.ofsuit(high: Rank.king, kicker: Rank.deuce),
      'Q5o': const RankPair.ofsuit(high: Rank.queen, kicker: Rank.five),
      'J5s': RankPair.suited(high: Rank.jack, kicker: Rank.five),
      'T8o': const RankPair.ofsuit(high: Rank.ten, kicker: Rank.eight),
      'Q2s': RankPair.suited(high: Rank.queen, kicker: Rank.deuce),
      'J7o': const RankPair.ofsuit(high: Rank.jack, kicker: Rank.seven),
      '97s': RankPair.suited(high: Rank.nine, kicker: Rank.seven),
      'T6s': RankPair.suited(high: Rank.ten, kicker: Rank.six),
      'Q4o': const RankPair.ofsuit(high: Rank.queen, kicker: Rank.four),
      'J4s': RankPair.suited(high: Rank.jack, kicker: Rank.four),
      '98o': const RankPair.ofsuit(high: Rank.nine, kicker: Rank.eight),
      'T7o': const RankPair.ofsuit(high: Rank.ten, kicker: Rank.seven),
      '87s': RankPair.suited(high: Rank.eight, kicker: Rank.seven),
      'Q3o': const RankPair.ofsuit(high: Rank.queen, kicker: Rank.trey),
      'J6o': const RankPair.ofsuit(high: Rank.jack, kicker: Rank.six),
      'J3s': RankPair.suited(high: Rank.jack, kicker: Rank.trey),
      '96s': RankPair.suited(high: Rank.nine, kicker: Rank.six),
      'T5s': RankPair.suited(high: Rank.ten, kicker: Rank.five),
      'J5o': const RankPair.ofsuit(high: Rank.jack, kicker: Rank.five),
      'J2s': RankPair.suited(high: Rank.jack, kicker: Rank.deuce),
      'Q2o': const RankPair.ofsuit(high: Rank.queen, kicker: Rank.deuce),
      '97o': const RankPair.ofsuit(high: Rank.nine, kicker: Rank.seven),
      '86s': RankPair.suited(high: Rank.eight, kicker: Rank.six),
      'T4s': RankPair.suited(high: Rank.ten, kicker: Rank.four),
      'T6o': const RankPair.ofsuit(high: Rank.ten, kicker: Rank.six),
      'J4o': const RankPair.ofsuit(high: Rank.jack, kicker: Rank.four),
      '95s': RankPair.suited(high: Rank.nine, kicker: Rank.five),
      '76s': RankPair.suited(high: Rank.seven, kicker: Rank.six),
      'T3s': RankPair.suited(high: Rank.ten, kicker: Rank.trey),
      '87o': const RankPair.ofsuit(high: Rank.eight, kicker: Rank.seven),
      'J3o': const RankPair.ofsuit(high: Rank.jack, kicker: Rank.trey),
      '96o': const RankPair.ofsuit(high: Rank.nine, kicker: Rank.six),
      '85s': RankPair.suited(high: Rank.eight, kicker: Rank.five),
      'T2s': RankPair.suited(high: Rank.ten, kicker: Rank.deuce),
      'T5o': const RankPair.ofsuit(high: Rank.ten, kicker: Rank.five),
      'J2o': const RankPair.ofsuit(high: Rank.jack, kicker: Rank.deuce),
      '94s': RankPair.suited(high: Rank.nine, kicker: Rank.four),
      '75s': RankPair.suited(high: Rank.seven, kicker: Rank.five),
      '86o': const RankPair.ofsuit(high: Rank.eight, kicker: Rank.six),
      'T4o': const RankPair.ofsuit(high: Rank.ten, kicker: Rank.four),
      '93s': RankPair.suited(high: Rank.nine, kicker: Rank.trey),
      '65s': RankPair.suited(high: Rank.six, kicker: Rank.five),
      '95o': const RankPair.ofsuit(high: Rank.nine, kicker: Rank.five),
      '84s': RankPair.suited(high: Rank.eight, kicker: Rank.four),
      '76o': const RankPair.ofsuit(high: Rank.seven, kicker: Rank.six),
      'T3o': const RankPair.ofsuit(high: Rank.ten, kicker: Rank.trey),
      '92s': RankPair.suited(high: Rank.nine, kicker: Rank.deuce),
      '74s': RankPair.suited(high: Rank.seven, kicker: Rank.four),
      '85o': const RankPair.ofsuit(high: Rank.eight, kicker: Rank.five),
      'T2o': const RankPair.ofsuit(high: Rank.ten, kicker: Rank.deuce),
      '64s': RankPair.suited(high: Rank.six, kicker: Rank.four),
      '54s': RankPair.suited(high: Rank.five, kicker: Rank.four),
      '83s': RankPair.suited(high: Rank.eight, kicker: Rank.trey),
      '75o': const RankPair.ofsuit(high: Rank.seven, kicker: Rank.five),
      '94o': const RankPair.ofsuit(high: Rank.nine, kicker: Rank.four),
      '82s': RankPair.suited(high: Rank.eight, kicker: Rank.deuce),
      '65o': const RankPair.ofsuit(high: Rank.six, kicker: Rank.five),
      '73s': RankPair.suited(high: Rank.seven, kicker: Rank.trey),
      '93o': const RankPair.ofsuit(high: Rank.nine, kicker: Rank.trey),
      '84o': const RankPair.ofsuit(high: Rank.eight, kicker: Rank.four),
      '63s': RankPair.suited(high: Rank.six, kicker: Rank.trey),
      '53s': RankPair.suited(high: Rank.five, kicker: Rank.trey),
      '92o': const RankPair.ofsuit(high: Rank.nine, kicker: Rank.deuce),
      '74o': const RankPair.ofsuit(high: Rank.seven, kicker: Rank.four),
      '72s': RankPair.suited(high: Rank.seven, kicker: Rank.deuce),
      '64o': const RankPair.ofsuit(high: Rank.six, kicker: Rank.four),
      '43s': RankPair.suited(high: Rank.four, kicker: Rank.trey),
      '54o': const RankPair.ofsuit(high: Rank.five, kicker: Rank.four),
      '83o': const RankPair.ofsuit(high: Rank.eight, kicker: Rank.trey),
      '62s': RankPair.suited(high: Rank.six, kicker: Rank.deuce),
      '52s': RankPair.suited(high: Rank.five, kicker: Rank.deuce),
      '82o': const RankPair.ofsuit(high: Rank.eight, kicker: Rank.deuce),
      '73o': const RankPair.ofsuit(high: Rank.seven, kicker: Rank.trey),
      '42s': RankPair.suited(high: Rank.four, kicker: Rank.deuce),
      '63o': const RankPair.ofsuit(high: Rank.six, kicker: Rank.trey),
      '53o': const RankPair.ofsuit(high: Rank.five, kicker: Rank.trey),
      '32s': RankPair.suited(high: Rank.trey, kicker: Rank.deuce),
      '72o': const RankPair.ofsuit(high: Rank.seven, kicker: Rank.deuce),
      '43o': const RankPair.ofsuit(high: Rank.four, kicker: Rank.trey),
      '62o': const RankPair.ofsuit(high: Rank.six, kicker: Rank.deuce),
      '52o': const RankPair.ofsuit(high: Rank.five, kicker: Rank.deuce),
      '42o': const RankPair.ofsuit(high: Rank.four, kicker: Rank.deuce),
      '32o': const RankPair.ofsuit(high: Rank.trey, kicker: Rank.deuce),

  };
  RankPair resultRankPair=cardMapping[card]??const RankPair.ofsuit(high: Rank.trey, kicker: Rank.deuce);

  return resultRankPair;


}