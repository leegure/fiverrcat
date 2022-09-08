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
  ChartGrid({Key? key, this.value = const {}, required this.painting})
      : super(key: key);

  final Set<RankPair> value;

  Map<String, ProgressInfo> painting;
  RankPair? lastChangedPart;

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(color: const Color(0xff262848)),
        child: Column(
          children: [
            Fill(
              child: AspectRatio(
                aspectRatio: 1.2,
                child: LayoutBuilder(
                  builder: (context, constraints) => Column(
                    children: List.generate(Rank.values.length * 2 - 1, (i) {
                      if (i % 2 == 1) return SizedBox(height: 2);
                      final x = i ~/ 2;
                      return Expanded(
                        child: Row(
                          children:
                              List.generate(Rank.values.length * 2 - 1, (j) {
                            if (j % 2 == 1) return SizedBox(width: 2);
                            final y = j ~/ 2;
                            final rankPairsPart = y > x
                                ? RankPair.suited(
                                    high: ranksInStrongnessOrder[x],
                                    kicker: ranksInStrongnessOrder[y],
                                  )
                                : RankPair.ofsuit(
                                    high: ranksInStrongnessOrder[y],
                                    kicker: ranksInStrongnessOrder[x],
                                  );
                            xyToCard()['$x,$y'];
                            return Expanded(
                              child: GestureDetector(
                                child: ChartGridItem(
                                  rankPairsPart: rankPairsPart,
                                  progressInfo: painting[xyToCard()['$x,$y']] ??
                                      ProgressInfo(
                                          raiseProgress: 0.0,
                                          callProgress: 0.0,
                                          alreadyProgress: 0.0),
                                ),
                                onTap: () {
                                  //
                                  double alreadyProgress = painting[xyToCard()['$x,$y']]!.alreadyProgress;
                                  double allinProgress = painting[xyToCard()['$x,$y']]!.allInProgress*(1-alreadyProgress);
                                  double raiseProgress = painting[xyToCard()['$x,$y']]!.raiseProgress*(1-alreadyProgress);
                                  double callProgress = painting[xyToCard()['$x,$y']]!.callProgress*(1-alreadyProgress);

                                  //ㅇㅣ건 전체 셀의 퍼센트를 나타낸거
                                  double alreadyPercent = alreadyProgress*100;
                                  double allinPercent = allinProgress*100;
                                  double raisePercent = raiseProgress*100;
                                  double callPercent = callProgress*100;
                                  //이건 alreadyProgress를 빼고 난 다음의 퍼센트.

                                  double alreadyProgress2 = painting[xyToCard()['$x,$y']]!.alreadyProgress;
                                  double allinProgress2 = painting[xyToCard()['$x,$y']]!.allInProgress;
                                  double raiseProgress2 = painting[xyToCard()['$x,$y']]!.raiseProgress;
                                  double callProgress2 = painting[xyToCard()['$x,$y']]!.callProgress;

                                  print(
                                      '전체// alreadyPercent=${alreadyPercent.toStringAsFixed(1)}'
                                          ', allinPercent=${allinPercent.toStringAsFixed(0)}'
                                          ', raisePercent=${raisePercent.toStringAsFixed(0)}'
                                          ', callPercent=${callPercent.toStringAsFixed(0)}'

                                          ',//already빼고 already progress2=$alreadyProgress2'
                                          ', allin2=$allinProgress2'
                                          ', raise2=$raiseProgress2'
                                          ', call2=$callProgress2'
                                          '////${xyToCard()['$x,$y']}'

                                  );
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
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(''),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                        width: 14,
                        height: 14,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(3)
                            ),
                            color: const Color(0xffff7f00)
                        )
                    )
                  ),
                  Text(
                    ' Raise',
                    style: TextStyle(color: const Color(0xffffffff),
                        fontWeight: FontWeight.w300,
                        fontFamily: "Quasimoda",
                        fontStyle: FontStyle.normal,
                        fontSize: 14.0,
                       ),
                  ),
                  SizedBox(width: 5.0,),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                        width: 14,
                        height: 14,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(3)
                            ),
                            color: const Color(0xff9966cb)
                        )
                    ),
                  ),
                  Text(' Call',
                      style: TextStyle(
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w300,
                          fontFamily: "Quasimoda",
                          fontStyle: FontStyle.normal,
                          fontSize: 14.0),
                      textAlign: TextAlign.left),
                  SizedBox(
                    width: 4.0,
                  )
                ],
              ),
            ),
          ],
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
  }) : super(key: key) {}

  final Color backgroundColor = Color(0xff323348);
  final Color callProgressColor = Color(0xff9966cb);
  final Color raiseProgressColor =  Color(0xffff7f00);
  final Color alreadyProgressColor = Colors.grey[700]!;
  final RankPair rankPairsPart;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
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
                width: constraints.maxWidth *
                    (progressInfo!.raiseProgress +
                        progressInfo!.allInProgress +
                        progressInfo!.callProgress) *
                    (1 - progressInfo!.alreadyProgress),
                color: callProgressColor,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: constraints.maxWidth *
                    (progressInfo!.raiseProgress +
                        progressInfo!.allInProgress) *
                    (1 - progressInfo!.alreadyProgress),
                color: raiseProgressColor,
              ),
            ),
            Text(
              "${rankChars[rankPairsPart.high]}${rankChars[rankPairsPart.kicker]}${rankPairsPart.isPocketPair ? "" : rankPairsPart.isSuited ? "s" : "o"}", //TODO : 글자 색까지 변하게 하는 부분추가
              style: TextStyle(
                color: progressInfo!.raiseProgress == 0.0 &&
                        progressInfo!.callProgress == 0.0
                    ? Colors.grey[700]
                    : Colors.white,
                fontWeight: progressInfo!.raiseProgress == 0.0 &&
                    progressInfo!.callProgress == 0.0
                    ?FontWeight.w500:FontWeight.w700,
                fontFamily: "Quasimoda",
                fontStyle: FontStyle.normal,
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
