import 'dart:math';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokercat/chart/common/chart_grid.dart';
import '../chart/common/cash_chart_brain.dart';
import '../chart/common/chart_brain.dart';
import '../chart/constarants/selection.dart';
import '../global/button_handling.dart';
import '../global/component/appbar.dart';
import '../global/component/pcapptheme.dart';

class CashGame extends StatefulWidget {
  @override
  _CashGameState createState() => _CashGameState();
}

final CashChartBrain cashChartBrain = CashChartBrain();
Selection cashSelection = Selection();

class _CashGameState extends State<CashGame> {
  Random random = Random();
  double size = 30.0;
  int randomNumber = 0;
  int diceRandomNumber = 1;
  bool isEnabled = true;
  bool disabled = false;

  List<Widget> getButtonJH() {
    List<Flexible> buttonList = [];
    for (var value in Position.values) {
      if (value.index == 0) continue;
      buttonList.add(myPositionFlexibleWH(value));
    }
    return buttonList;
  }

  @override
  void initState() {
    cashSelection.myPosition = Position.UTG;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(
        backgroundColor: ZeplinColors.dark,
        title: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0x7f000000),
                offset: Offset(0, 0),
                blurRadius: 24,
                spreadRadius: 10,
              ),
            ],
          ),
          child: Text(
            'CashGame',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Quasimoda',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        actions: <Widget>[
          Row(
            children: [
              Text(
                '$randomNumber',
                style: TextStyle(color: Color(0xffffffff),
                  fontWeight: FontWeight.w600,
                  fontFamily: "Quasimoda",
                  fontStyle:  FontStyle.normal,),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    randomNumber = random.nextInt(101);
                    diceRandomNumber = random.nextInt(24);

                    print('randomNumber=$randomNumber');
                    print('diceRandomNumber=$diceRandomNumber');
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
      // appBar: AppBar(
      //   title: Text('CashGame'),
      //   actions: <Widget>[
      //     Row(
      //       children: [
      //         Text('$randomNumber'),
      //
      //         IconButton( icon: new Icon(Icons.pie_chart),onPressed: () => {
      //           setState(() {
      //             randomNumber = random.nextInt(101);
      //             print(randomNumber);
      //           })}, )
      //       ],
      //     )
      //   ],
      // ),
      body: Column(
        children: [
          ChartGrid(painting: cashChartBrain.paintingProgress(cashSelection)),

          Text(
            'My Position',
          ),
          Row(children: getButtonJH()),
          Text(
            'Opponent\'s Position',
          ),
          Row(
            children: [
              opponentPositionFlexible(Position.UTG),
              opponentPositionFlexible(Position.MP),
              opponentPositionFlexible(Position.CO),
              opponentPositionFlexible(Position.BTN),
              opponentPositionFlexible(Position.SB),
              opponentPositionFlexible(Position.BB),
            ],
          ),
          Text(
            'Opponent\'s Action',
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: cashSelection.opponentAction ==
                              OpponentAction.threeBet
                          ? Colors.orange
                          : Colors.grey,
                    ),
                    onPressed: cashSelection.myPosition.index <=
                                cashSelection.opponentPosition.index ||
                            cashSelection.opponentPosition == Position.none
                        ? () {
                            setState(() {
                              cashSelection.opponentAction =
                                  OpponentAction.threeBet;
                            });
                          }
                        : null,
                    child: Container(
                      child: Text(OpponentAction.threeBet.name
                          .replaceAll("three", "3")),
                    ),
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Consumer<ButtonHandling>(
                  builder:
                      (BuildContext context, buttonHandling, Widget? child) {
                    return Flexible(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: cashSelection.opponentAction ==
                                  OpponentAction.fourBet
                              ? Colors.orange
                              : Colors.grey,
                        ),
                        onPressed: cashSelection.myPosition.index >=
                                cashSelection.opponentPosition.index
                            ? () {
                                setState(() {
                                  cashSelection.opponentAction =
                                      OpponentAction.fourBet;
                                });
                              }
                            : null,
                        child: Container(
                          child: Text(OpponentAction.fourBet.name
                              .replaceAll("four", "4")),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 맨처음 만든 인덱스와 포지션 스트링 둘다 핸들링하면서 만든 버튼 복잡해서 나중에지우기로.
  // Flexible MyPositionFlexible(String position) {
  //   return Flexible(
  //     child: ElevatedButton(
  //       style: ElevatedButton.styleFrom(
  //         padding: EdgeInsets.all(0.0),
  //         primary: myPositionIndex == listPosition.indexOf(position)
  //             ? Colors.orange
  //             : Colors.grey,
  //       ),
  //       onPressed: () {
  //         setState(() {
  //           myPositionIndex = listPosition.indexOf(position);
  //
  //           // RangeCalculator calc = RangeCalculator(ante: listAnte[anteIndex],
  //           //     blind: blindIndex, position: listPosition[positionIndex]);
  //           // _stateBus.rankPairs = calc.rangeStateApply();
  //
  //           print('mypositionIndex=${myPositionIndex}');
  //         });
  //       },
  //       child: Container(
  //         child: Text(
  //           position,
  //           style: TextStyle(fontSize: 12.0),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  Flexible myPositionFlexibleWH(Position selectedMyPosition) {
    return Flexible(
      child: Consumer<ButtonHandling>(
        builder: (BuildContext context, buttonHandling, Widget? child) {
          return ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(0.0),
              primary: cashSelection.myPosition == selectedMyPosition
                  ? Colors.orange
                  : Colors.grey,
            ),
            onPressed: () {
              setState(() {
                // if(selection.myPosition == Position.UTG){
                //   Provider.of<ButtonHandling>(context, listen: false).deactivateButton(isEnabled);
                // }
                // if(selection.myPosition == Position.MP){
                //   Provider.of<ButtonHandling>(context, listen: false).deactivateButton(disabled);
                // }
                cashSelection.myPosition = selectedMyPosition;
                cashSelection.opponentPosition = Position.none; //바꿔야함
                cashSelection.opponentAction = OpponentAction.none;
              });
            },
            child: Container(
              child: Text(
                selectedMyPosition.name,
                style: TextStyle(fontSize: 12.0),
              ),
            ),
          );
        },
      ),
    );
  }

  Flexible opponentPositionFlexible(Position selectedOpponentPosition) {
    return Flexible(
      child: Consumer<ButtonHandling>(
          builder: (BuildContext context, buttonHandling, Widget? child) {
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(0.0),
            primary: cashSelection.opponentPosition == selectedOpponentPosition
                ? Colors.orange
                : Colors.grey,
          ),
          onPressed: cashSelection.myPosition != selectedOpponentPosition
              ? () {
                  setState(() {
                    cashSelection.opponentPosition = selectedOpponentPosition;
                    if (cashSelection.myPosition.index <
                        selectedOpponentPosition.index) {
                      cashSelection.opponentAction = OpponentAction.threeBet;
                      // Provider.of<ButtonHandling>(context, listen: false)
                      //     .deActivateFourBetButton(disabled);

                    } else {
                      cashSelection.opponentAction = OpponentAction.none;
                    }
                  });
                }
              : null,
          child: Container(
            child: Text(
              selectedOpponentPosition.name,
              style: TextStyle(fontSize: 12.0),
            ),
          ),
        );
      }),
    );
  }

  // Flexible actionFlexible(OpponentAction selectedAction) {
  //   return Flexible(
  //     child: ElevatedButton(
  //       style: ElevatedButton.styleFrom(
  //         primary:
  //             selection.opponentAction == selectedAction ? Colors.orange : Colors.grey,
  //       ),
  //       onPressed: () {
  //         setState(() {
  //           selection.opponentAction = selectedAction;
  //
  //           print('action==$selectedAction');
  //         });
  //       },
  //       child: Container(
  //         child: Text(
  //           selectedAction.name
  //               .replaceAll("three", "3")
  //               .replaceAll("four", "4"),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
