import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' hide Card;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poker/poker.dart';
import 'package:pokercat/global/component/pcapptheme.dart';
import 'package:pokercat/global/component/reusable_button.dart';

import '../chart/common/range_calculator.dart';
import '../chart/common/rank_pair_select_grid.dart';
import '../chart/view_model/card_pair_draft.dart';
import '../chart/view_model/hand_range_draft.dart';
import 'dart:math';

import '../global/component/appbar.dart';
import '../global/component/reusable_text.dart';




const _controlPadding = EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0);
RangeCalculator calc = RangeCalculator();

class PushFold extends StatefulWidget {
  @override
  _PushFoldState createState() => _PushFoldState();
}

class _PushFoldState extends State<PushFold> {
  Random random = Random();
  int randomNumber = 0;


  List<bool> anteSelected = List.generate(2, (index) => false);
  List<bool> positionSelected = List.generate(8, (index) => false);

  int anteIndex = 0;
  int blindIndex = 1;
  int positionIndex = 0;
  List<String> listAnte = ['No Ante', '10% Ante'];
  List<int> listBlind = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16];
  List<String> listPosition = ['UTG', 'UTG1', 'MP', 'MP1', 'HJ', 'CO', 'BTN', 'SB'];

  late _EditableHandRangeStateBus _stateBus;

  @override
  void initState() {
    super.initState();
      print('ante=$anteIndex, blind = $blindIndex, postiion= $positionIndex');
    _stateBus = _EditableHandRangeStateBus(
      initialInputType: HandRangeDraftInputType.cardPair,
      initialCardPair: CardPairDraft.empty(),
      initialRankPairs: {},
    );

    RangeCalculator calc = RangeCalculator(
        ante: listAnte[0],
        blind: 1,
        position: listPosition[0]);
    _stateBus.rankPairs = calc.rangeStateApply();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(
        titleStr: 'PushFold',
        actions: <Widget>[
          Row(
            children: [
              ReusableText(
                text: '$randomNumber',
                fontSize: 14.sp,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    randomNumber = random.nextInt(100)+1;
                    diceRandomNumber = random.nextInt(24);
                  });
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    'assets/images/dice/dice$diceRandomNumber.png',
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      body: Container(
        height: ScreenUtil().screenHeight,
        color: ZeplinColors.dark,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(

              children: <Widget>[
                Expanded(
                  flex: 100,
                  child: AnimatedBuilder(
                    animation: _stateBus,
                    builder: (context, _) => Column(
                      children: [
                        RankPairSelectGrid(
                          value: _stateBus.rankPairs,
                          onChanged: (rankPairs) {
                            _stateBus.rankPairs = rankPairs;
                            print('_stateBus.rankPairs=${_stateBus.rankPairs}');
                          },
                        ),
                      ],
                    ),
                  ),
                ),

                Expanded(
                  flex: 50,
                  child: Column(
                    children: [
                      Expanded(child: ReusableText(text: 'Antes',fontSize: 14.0.sp,)),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            anteFlexible('No Ante'),
                            SizedBox(
                              width: 2.w,
                            ),
                            anteFlexible('10% Ante'),
                          ],
                        ),
                      ),
                      SizedBox(height: 3.0.h),
                      Expanded(
                          child: ReusableText(text: 'My Blinds',fontSize: 14.0.sp,)),
                      Expanded(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            BlindFlexible(1),
                            BlindFlexible(2),
                            BlindFlexible(3),
                            BlindFlexible(4),
                            BlindFlexible(5),
                            BlindFlexible(6),
                            BlindFlexible(7),
                            BlindFlexible(8),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            BlindFlexible(9),
                            BlindFlexible(10),
                            BlindFlexible(11),
                            BlindFlexible(12),
                            BlindFlexible(13),
                            BlindFlexible(14),
                            BlindFlexible(15),
                            BlindFlexible(16),
                          ],
                        ),
                      ),
                      SizedBox(height: 3.0.h),
                      Expanded(child: ReusableText(text: 'My Position',fontSize: 14.0.sp,)),
                      Expanded(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            PositionFlexible('UTG'),
                            PositionFlexible('UTG1'),
                            PositionFlexible('MP'),
                            PositionFlexible('MP1'),
                            PositionFlexible('HJ'),
                            PositionFlexible('CO'),
                            PositionFlexible('BTN'),
                            PositionFlexible('SB'),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.h),

                    ],
                  ),
                ),

              ],
            );
          }
        ),
      ),
    );
  }

  Flexible anteFlexible(String ante) {
    return Flexible(
      child: MyElevatedButton(
        width: 70.w,
          fontsize: 12.sp,
          onPressed: () {
            setState(() {
              anteIndex = listAnte.indexOf(ante);
              RangeCalculator calc = RangeCalculator(
                  ante: listAnte[anteIndex],
                  blind: blindIndex,
                  position: listPosition[positionIndex]);
              _stateBus.rankPairs = calc.rangeStateApply();
              print('calc.rangestat=${calc.rangeStateApply()}');
              print('anteindex=$anteIndex');
            });
          },
          isButtonSelected: anteIndex == listAnte.indexOf(ante)?true : false,
          selectedButtonLabel: '$ante',
          ),
    );
  }

  Flexible BlindFlexible(int blind) {
    return Flexible(
      child: MyElevatedButton(
        onPressed: () {
          setState(() {
            blindIndex = blind;
            RangeCalculator calc = RangeCalculator(ante: listAnte[anteIndex],
                blind: blindIndex, position: listPosition[positionIndex]);
            _stateBus.rankPairs = calc.rangeStateApply();
          });
        },
        selectedButtonLabel: '$blind',
        isButtonSelected:  blindIndex == blind ? true:false,

      ),
    );
  }

  Flexible PositionFlexible(String position) {
    return Flexible(
      child: MyElevatedButton(

          onPressed: () {
            setState(() {
              positionIndex = listPosition.indexOf(position);
              RangeCalculator calc = RangeCalculator(ante: listAnte[anteIndex],
                  blind: blindIndex, position: listPosition[positionIndex]);
              _stateBus.rankPairs = calc.rangeStateApply();

              print('positionIndex=${positionIndex}');
            });
          },
          isButtonSelected: positionIndex == listPosition.indexOf(position)
              ? true:false,
          selectedButtonLabel: '$position',
          ),
    );
  }
}

class _EditableHandRangeStateBus extends ChangeNotifier {
  _EditableHandRangeStateBus({
    required HandRangeDraftInputType initialInputType,
    required CardPairDraft initialCardPair,
    required Set<RankPair> initialRankPairs,
  })  : _inputType = initialInputType,
        _cardPair = initialCardPair,
        _rankPairs = initialRankPairs,
        _selectedCardIndex = 0,
        _isButtonsDisabled = false;

  HandRangeDraftInputType _inputType;

  CardPairDraft _cardPair;

  Set<RankPair> _rankPairs;

  int _selectedCardIndex;

  bool _isButtonsDisabled;

  HandRangeDraftInputType get inputType => _inputType;

  set inputType(HandRangeDraftInputType inputType) {
    _inputType = inputType;

    if (_inputType != HandRangeDraftInputType.cardPair) {
      _cardPair = CardPairDraft.empty();
    }

    if (_inputType != HandRangeDraftInputType.rankPairs) {
      _rankPairs = {};
    }

    notifyListeners();
  }

  CardPairDraft get cardPair => _cardPair;

  Set<RankPair> get rankPairs => _rankPairs;

  set rankPairs(Set<RankPair> rankPairs) {
    _rankPairs = rankPairs;
    notifyListeners();
  }

  int get selectedCardIndex => _selectedCardIndex;

  set selectedCardIndex(int index) {
    if (index == 1 && _cardPair[0] == null) {
      _selectedCardIndex = 0;
    }

    _selectedCardIndex = index;

    notifyListeners();
  }

  bool get isButtonsDisabled => _isButtonsDisabled;

  set isButtonsDisabled(isButtonsDisabled) {
    _isButtonsDisabled = isButtonsDisabled;

    notifyListeners();
  }

  setCardAtCurrentIndex(Card card) {
    _cardPair = _selectedCardIndex == 0
        ? CardPairDraft(card, _cardPair[1])
        : CardPairDraft(_cardPair[0], card);
    _selectedCardIndex = _selectedCardIndex == 0 ? 1 : 0;

    notifyListeners();
  }
}
