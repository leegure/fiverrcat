import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:poker/poker.dart";
import 'package:pokercat/chart/common/tourna_chart_brain.dart';
import 'package:pokercat/chart/constarants/selection.dart';
import 'package:pokercat/pages/cashgame.dart';
import '../constarants/card.dart';
import 'fill.dart';
import 'progress_info_model.dart';

class ChartGrid extends StatelessWidget {
  ChartGrid({
    Key? key,

    this.value = const {},required this.painting
  }) : super(key: key);

  final Set<RankPair> value;

  Map<String, ProgressInfo> painting;
  RankPair? lastChangedPart;


  @override
  Widget build(BuildContext context) => Fill(
    child: AspectRatio(
      aspectRatio: 1.2,
      child: LayoutBuilder(
        builder: (context, constraints) =>  Column(
            children: List.generate(Rank.values.length * 2 - 1, (i) {
              if (i % 2 == 1) return SizedBox(height: 2);
              final x = i ~/ 2;
              return Expanded(
                child: Row(
                  children: List.generate(Rank.values.length * 2 - 1, (j) {
                    if (j % 2 == 1) return SizedBox(width: 2);
                    final y = j ~/ 2;
                    final rankPairsPart = y > x ? RankPair.suited(
                      high: ranksInStrongnessOrder[x],
                      kicker: ranksInStrongnessOrder[y],
                    ) : RankPair.ofsuit(
                      high: ranksInStrongnessOrder[y],
                      kicker: ranksInStrongnessOrder[x],
                    );
                    // final allInProgress = x==3&&y==4 ? 0.3 : 0.9;
                    // final raiseProgress = x==3&&y==4 ? 0.3 : 0.9;
                    // final callProgress = x==3&&y==4 ? 0.3 : 0.9;
                    xyToCard()['$x,$y'];
                    return Expanded(
                      child: GestureDetector(
                        child: ChartGridItem(
                          rankPairsPart: rankPairsPart,


                          progressInfo : painting[xyToCard()['$x,$y']]??ProgressInfo(raiseProgress: 0.0, callProgress: 0.0, alreadyProgress: 0.0),
                        ),
                        onTap: (){


                        },
                      ),
                    );
                  }),
                ),
              );
            }),
        ),
      ),
    ),
  );
}


final TournaChartBrain tournaChartBrain = TournaChartBrain();

class ChartGridItem extends StatelessWidget {

  ProgressInfo? progressInfo;

  ChartGridItem({

    Key? key,

    required this.rankPairsPart,
    this.progressInfo,

  }) : super(key: key)  {


  }



  final Color backgroundColor=Colors.grey;
  final Color allInProgressColor=Colors.red;
  final Color openRaiseProgressColor=Colors.orangeAccent;
  final Color callProgressColor=Colors.lightGreen;
  final Color raiseProgressColor=Colors.lightBlue;
  final Color alreadyProgressColor=Colors.grey[700]!;

  final RankPair rankPairsPart;
  final double size = 30;


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
        ),
        child: Stack(
          children: [
            Container(
              color: backgroundColor,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: constraints.maxWidth * (progressInfo!.alreadyProgress),
                color: alreadyProgressColor,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: constraints.maxWidth * (progressInfo!.raiseProgress + progressInfo!.allInProgress + progressInfo!.callProgress)*(1-progressInfo!.alreadyProgress),
                color: callProgressColor,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: constraints.maxWidth * (progressInfo!.raiseProgress + progressInfo!.allInProgress)*(1-progressInfo!.alreadyProgress),
                color: raiseProgressColor,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: constraints.maxWidth * progressInfo!.allInProgress*(1-progressInfo!.alreadyProgress),
                color: allInProgressColor,
              ),
            ),
            Text(
              "${rankChars[rankPairsPart.high]}${rankChars[rankPairsPart.kicker]}${rankPairsPart.isPocketPair ? "" : rankPairsPart.isSuited ? "s" : "o"}",//TODO : 글자 색까지 변하게 하는 부분추가
              style: TextStyle(
                fontSize: constraints.maxWidth / 2.6,
              ),
            ),
          ],
        ),
      ),
    );
    //Todo : 여기일단보자 여기가핵심같
  }
}






