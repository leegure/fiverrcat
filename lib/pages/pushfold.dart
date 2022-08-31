import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' hide Card;
import 'package:poker/poker.dart';

import '../chart/common/range_calculator.dart';
import '../chart/common/rank_pair_select_grid.dart';
import '../chart/view_model/card_pair_draft.dart';
import '../chart/view_model/hand_range_draft.dart';
import 'dart:math';

import '../global/component/appbar.dart';




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
    return SafeArea(
      child: Scaffold(
        appBar: Appbar(
          title: Text('PushFold'),
          actions: <Widget>[
            Row(
              children: [
                Text('$randomNumber'),

                IconButton( icon: new Icon(Icons.casino_rounded),onPressed: () => {
                  setState(() {
                    randomNumber = random.nextInt(101);
                    print(randomNumber);
                  })}, )
              ],
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: _controlPadding,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        boxShadow: null,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: AnimatedBuilder(
                        animation: _stateBus,
                        builder: (context, _) => Column(
                          children: [
                            AspectRatio(
                              aspectRatio: 1.2,
                              child: RankPairSelectGrid(
                                value: _stateBus.rankPairs,
                                onChanged: (rankPairs) {
                                  _stateBus.rankPairs = rankPairs;
                                  print('_stateBus.rankPairs=${_stateBus.rankPairs}');
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text('Antes'),

                      Container(
                        height: 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            anteFlexible('No Ante'),
                            SizedBox(
                              width: 2,
                            ),
                            anteFlexible('10% Ante'),
                          ],
                        ),
                      ),

                      Text(
                        'My Blinds',
                      ),

                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
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
                          Row(
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

                        ],
                      ),

                      Text(
                        'My Position',
                      ),
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
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Flexible anteFlexible(String ante) {
    return Flexible(
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: anteIndex == listAnte.indexOf(ante)
                ? Colors.orange
                : Colors.grey,
          ),
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
          child: Container(
            child: Text(
              '$ante',
            ),
          )),
    );
  }

  Flexible BlindFlexible(int blind) {
    return Flexible(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding:EdgeInsets.all(0.0),
          primary: blindIndex == blind ? Colors.orange : Colors.grey,
        ),
        onPressed: () {
          setState(() {
            blindIndex = blind;
            RangeCalculator calc = RangeCalculator(ante: listAnte[anteIndex],
                blind: blindIndex, position: listPosition[positionIndex]);
            _stateBus.rankPairs = calc.rangeStateApply();
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Container(
              child: Text(
                '$blind',
                style: TextStyle(fontSize: 14.0),
              )),
        ),
      ),
    );
  }

  Flexible PositionFlexible(String position) {
    return Flexible(
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding:EdgeInsets.all(0.0),
            primary: positionIndex == listPosition.indexOf(position)
                ? Colors.orange
                : Colors.grey,
          ),
          onPressed: () {
            setState(() {
              positionIndex = listPosition.indexOf(position);
              RangeCalculator calc = RangeCalculator(ante: listAnte[anteIndex],
                  blind: blindIndex, position: listPosition[positionIndex]);
              _stateBus.rankPairs = calc.rangeStateApply();

              print('positionIndex=${positionIndex}');
            });
          },
          child: Container(
              child: Text(
                position,
                style: TextStyle(fontSize: 12.0),
              ))),
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
