import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import "package:poker/poker.dart";
import 'package:pokercat/chart/common/tourna_chart_brain.dart';
import 'package:pokercat/chart/constarants/selection.dart';
import 'package:pokercat/global/component/pcapptheme.dart';
import 'package:pokercat/pages/cashgame.dart';
import '../../global/component/reusable_text.dart';
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
  Widget build(BuildContext context) =>
      Padding(
        padding: EdgeInsets.all(6.w),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: [
                Expanded(
                  flex: 12,
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
                // SizedBox(
                //   height: 2.0,
                // ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding:  EdgeInsets.fromLTRB(0.0, 2.h, 0.0,0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            width: 12.w,
                            height: 12.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(3)
                                ),
                                color: ZeplinColors.raiseColor
                            )
                        ),
                        SizedBox(width: 2.0.h),
                        ReusableText(
                          text: ' Raise',
                          fontWeight: FontWeight.w500,
                          fontSize: 13.sp,
                        ),

                        SizedBox(width: 8.0.h),
                        Container(
                            width: 12.w,
                            height: 12.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(3)
                                ),
                                color: ZeplinColors.callColor
                            )
                        ),
                        SizedBox(width: 2.0.h),
                        ReusableText(
                          text: ' Call',
                          fontWeight: FontWeight.w500,
                          fontSize: 13.sp,
                        ),
                        SizedBox(width: 4.0.h),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                ),
              ],
            );
          }
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

  final Color backgroundColor = ZeplinColors.foldColor;
  final Color callProgressColor = ZeplinColors.callColor;
  final Color raiseProgressColor =  ZeplinColors.raiseColor;
  final Color alreadyProgressColor = ZeplinColors.alreadyProgressColor;
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
            Center(
              child: ReusableText(
                text: "${rankChars[rankPairsPart.high]}${rankChars[rankPairsPart.kicker]}${rankPairsPart.isPocketPair ? "" : rankPairsPart.isSuited ? "s" : "o"}",
                textColor: progressInfo!.raiseProgress == 0.0 &&
                    progressInfo!.callProgress == 0.0
                    ? Colors.grey[700]
                    : Colors.white,
                fontWeight: progressInfo!.raiseProgress == 0.0 &&
                    progressInfo!.callProgress == 0.0
                    ?FontWeight.w500:FontWeight.w700,
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
