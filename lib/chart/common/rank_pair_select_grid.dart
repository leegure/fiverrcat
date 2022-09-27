
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter/widgets.dart";
import "package:poker/poker.dart";

import '../../global/component/pcapptheme.dart';
import '../../global/component/reusable_text.dart';
import '../constarants/card.dart';


import 'fill.dart';

class RankPairSelectGrid extends StatefulWidget {
  RankPairSelectGrid({
    Key? key,
    required this.onChanged,

    this.value = const {},
  }) : super(key: key);

  final void Function(Set<RankPair> rankPairs) onChanged;



  final Set<RankPair> value;

  @override
  State<RankPairSelectGrid> createState() => _RankPairSelectGridState();
}

class _RankPairSelectGridState extends State<RankPairSelectGrid> {
  late Set<RankPair> selectedRange;

  bool isToMark = false;

  RankPair? lastChangedPart;

  @override
  void initState() {
    super.initState();

    selectedRange = {...widget.value};
  }

  @override
  void didUpdateWidget(RankPairSelectGrid oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.value != widget.value) {
      setState(() {
        selectedRange = widget.value;
      });
    }
  }

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(6.0),
    child: Container(
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.2,
            child: LayoutBuilder(
              builder: (context, constraints) => GestureDetector(
                onPanStart: (details) {
                  final x = details.localPosition.dx *
                      Rank.values.length ~/
                      constraints.maxWidth;
                  final y = details.localPosition.dy *
                      Rank.values.length ~/
                      constraints.maxHeight;
                  final rankPairsPart = x > y
                      ? RankPair.suited(
                          high: ranksInStrongnessOrder[y],
                          kicker: ranksInStrongnessOrder[x],
                        )
                      : RankPair.ofsuit(
                          high: ranksInStrongnessOrder[x],
                          kicker: ranksInStrongnessOrder[y],
                        );




                },
                onPanUpdate: (details) {
                  final x = details.localPosition.dx *
                      Rank.values.length ~/
                      constraints.maxWidth;
                  final y = details.localPosition.dy *
                      Rank.values.length ~/
                      constraints.maxHeight;

                  if (x < 0 || x >= Rank.values.length) return;
                  if (y < 0 || y >= Rank.values.length) return;

                  final rankPairsPart = x > y
                      ? RankPair.suited(
                          high: ranksInStrongnessOrder[y],
                          kicker: ranksInStrongnessOrder[x],
                        )
                      : RankPair.ofsuit(
                          high: ranksInStrongnessOrder[x],
                          kicker: ranksInStrongnessOrder[y],
                        );


                },

                behavior: HitTestBehavior.opaque,
                child: Column(
                  children: List.generate(Rank.values.length * 2 - 1, (i) {
                    if (i % 2 == 1) return SizedBox(height: 2);
                    final y = i ~/ 2;
                    return Expanded(
                      child: Row(
                        children: List.generate(Rank.values.length * 2 - 1, (j) {
                          if (j % 2 == 1) return SizedBox(width: 2);
                          final x = j ~/ 2;
                          final rankPairsPart = x > y
                              ? RankPair.suited(
                                  high: ranksInStrongnessOrder[y],
                                  kicker: ranksInStrongnessOrder[x],
                                )
                              : RankPair.ofsuit(
                                  high: ranksInStrongnessOrder[x],
                                  kicker: ranksInStrongnessOrder[y],
                                );

                          return Expanded(
                            child: RankPairSelectGridItem(
                              rankPairsPart: rankPairsPart,
                              isSelected: selectedRange.contains(rankPairsPart),
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
            padding: const EdgeInsets.all(2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                        width: 14,
                        height: 14,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(3)
                            ),
                            color: ZeplinColors.raiseColor
                        )
                    )
                ),
                ReusableText(
                  text: ' All in',
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0,
                ),

                SizedBox(width: 5.0,),

              ],
            ),
          ),
          Divider(
            color: Colors.grey,
            thickness: 0.5,
          ),
        ],
      ),
    ),
  );
}

class RankPairSelectGridItem extends StatelessWidget {
  RankPairSelectGridItem({
    required this.rankPairsPart,
    this.isSelected = false,
    Key? key,
  }) : super(key: key);

  final RankPair rankPairsPart;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => DecoratedBox(
        decoration: BoxDecoration(
          color: isSelected
              ? ZeplinColors.allInColor
              : ZeplinColors.foldColor,

        ),
        child: Center(
          child:
          ReusableText(
            text: "${rankChars[rankPairsPart.high]}${rankChars[rankPairsPart.kicker]}${rankPairsPart.isPocketPair ? "" : rankPairsPart.isSuited ? "s" : "o"}",
            textColor: isSelected
                ? Colors.white : Colors.grey[700],
            fontWeight: isSelected
                ?FontWeight.w700 :FontWeight.w500,
            fontSize: constraints.maxWidth / 2.6,
          ),

        ),
      ),
    );
    //Todo : 여기일단보자 여기가핵심같
  }
}
