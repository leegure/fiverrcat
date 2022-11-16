import 'dart:math';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokercat/chart/common/chart_grid.dart';
import '../chart/common/cash_chart_brain.dart';
import '../chart/common/chart_brain.dart';
import '../chart/common/fill.dart';
import '../chart/constarants/selection.dart';
import '../global/button_handling.dart';
import '../global/component/appbar.dart';
import '../global/component/pcapptheme.dart';
import '../global/component/reusable_button.dart';
import '../global/component/reusable_text.dart';
import '../imports.dart';

class CashGame extends StatefulWidget {
  @override
  _CashGameState createState() => _CashGameState();
}

final CashChartBrain cashChartBrain = CashChartBrain();
Selection cashSelection = Selection();

class _CashGameState extends State<CashGame> {
  Random random = Random();

  int randomNumber = 0;
  int diceRandomNumber = 1;
  bool isEnabled = true;
  bool disabled = false;

  // List<Widget> getButtonJH() {
  //   List<Flexible> buttonList = [];
  //   for (var value in Position.values) {
  //     if (value.index == 0) continue;
  //     buttonList.add(myPositionFlexibleWH(value));
  //   }
  //   return buttonList;
  // }

  List<MyElevatedButton> getHeroButton(double width) {
    List<MyElevatedButton> buttonList = [];
    for (Position selectedMyPosition in Position.values) {
      if (selectedMyPosition.index == 0) continue;
      buttonList.add(
          MyElevatedButton(
              fontsize: 12.sp,
          width: width,
          selectedButtonLabel: selectedMyPosition.name,
          onPressed: () {
            setState(() {
              cashSelection.myPosition = selectedMyPosition;
              print('myPosition=${cashSelection.myPosition}');
              cashSelection.opponentPosition = Position.none; //바꿔야함
              cashSelection.opponentAction = OpponentAction.none;
            });
          },
          isButtonSelected:
              cashSelection.myPosition == selectedMyPosition ? true : false));
    }
    return buttonList;
  }

  List<MyElevatedButton> getVillainButton(double width) {
    List<MyElevatedButton> buttonList = [];
    for (Position selectedOpponentPosition in Position.values) {
      if (selectedOpponentPosition.index == 0) continue;
      buttonList.add(MyElevatedButton(
          fontsize: 12.sp,
width: width,
          selectedButtonLabel: selectedOpponentPosition.name,
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
          isButtonSelected:
              cashSelection.opponentPosition == selectedOpponentPosition
                  ? true
                  : false));
    }
    return buttonList;
  }

  @override
  void initState() {
    cashSelection.myPosition = Position.UTG;
    cashSelection.opponentPosition = Position.none;
    cashSelection.opponentAction = OpponentAction.none;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: Appbar(
        titleStr: 'CashGame',
        // title: Container(
        //   decoration: BoxDecoration(
        //     boxShadow: [
        //       BoxShadow(
        //         color: Color(0x7f000000),
        //         offset: Offset(0, 0),
        //         blurRadius: 24,
        //         spreadRadius: 3,
        //       ),
        //     ],
        //   ),
        //   child: ReusableText(
        //     text: 'CashGame',
        //   ),
        // ),
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
      body: Container(
        color: Color(0xff262848),
        child: LayoutBuilder(

          builder: (context, constraints) {
            return Column(
              children: [

                // Container(
                //   decoration: BoxDecoration(
                //     boxShadow: [
                //       BoxShadow(
                //           color: Color(0x2d9596cf),
                //           offset: Offset(-10, -10),
                //           blurRadius: 32,
                //           spreadRadius: 0),
                //       BoxShadow(
                //           color: Colors.black,
                //           offset: Offset(15, -10),
                //           blurRadius: 340.8,
                //           spreadRadius: 10),
                //       BoxShadow(
                //           color: Color(0x19000000),
                //           offset: Offset(30, 20),
                //           blurRadius: 27,
                //           spreadRadius: 0)
                //     ],
                //   ),
                // ),

                Expanded(
                  flex: 100,
                    child: ChartGrid(painting: cashChartBrain.paintingProgress(cashSelection))),
                Expanded(
                  flex: 57,
                  child: Fill(
                    child: Container(

                      decoration: new BoxDecoration(
                        color: ZeplinColors.dark,
                      ),
                      child: Column(

                         mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(child: ReusableText(text: 'Hero',fontSize: 13.0.sp)),
                          // Row(children: getButtonJH()),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: getHeroButton(constraints.maxWidth*0.16),
                            ),
                          ),
                          SizedBox(height: 3.0.h),
                          Expanded(child: ReusableText(text: 'Villain',fontSize: 13.0.sp)),
                          // Row(
                          //   children: [
                          //     opponentPositionFlexible(Position.UTG),
                          //     opponentPositionFlexible(Position.MP),
                          //     opponentPositionFlexible(Position.CO),
                          //     opponentPositionFlexible(Position.BTN),
                          //     opponentPositionFlexible(Position.SB),
                          //     opponentPositionFlexible(Position.BB),
                          //   ],
                          // ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: getVillainButton(constraints.maxWidth*0.16),
                            ),
                          ),
                          SizedBox(height: 3.0.h),
                          Expanded(
                            child: ReusableText(
                              text: 'Villain\'s Action',fontSize: 13.0.sp
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                MyElevatedButton(
                                  fontsize: 12.sp,
                                  width: constraints.maxWidth*0.16,
                                  isButtonSelected: cashSelection.opponentAction ==
                                          OpponentAction.threeBet
                                      ? true
                                      : false,
                                  onPressed: cashSelection.myPosition.index <=
                                              cashSelection.opponentPosition.index ||
                                          cashSelection.opponentPosition ==
                                              Position.none
                                      ? () {
                                          setState(() {
                                            cashSelection.opponentAction =
                                                OpponentAction.threeBet;
                                          });
                                        }
                                      : null,
                                  selectedButtonLabel: OpponentAction.threeBet.name
                                      .replaceAll("three", "3"),
                                ),
                                MyElevatedButton(
                                  fontsize: 12.sp,
                                  width: constraints.maxWidth*0.16,
                                  isButtonSelected: cashSelection.opponentAction ==
                                          OpponentAction.fourBet
                                      ? true
                                      : false,
                                  onPressed: cashSelection.myPosition.index >=
                                          cashSelection.opponentPosition.index
                                      ? () {
                                          setState(() {
                                            cashSelection.opponentAction =
                                                OpponentAction.fourBet;
                                          });
                                        }
                                      : null,
                                  selectedButtonLabel: OpponentAction.fourBet.name
                                      .replaceAll("four", "4"),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8.h),

              ],
            );
          }
        ),
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

  // elevated버튼 클래스를  활용하는게 아니라 클래스 내에서 위젯을 리턴해서 활용하는형태일때 썼던 위젯
  // Flexible myPositionFlexibleWH(Position selectedMyPosition) {
  //   return Flexible(
  //     child:  ElevatedButton(
  //           style: ElevatedButton.styleFrom(
  //             padding: EdgeInsets.all(0.0),
  //             primary: cashSelection.myPosition == selectedMyPosition
  //                 ? Colors.orange
  //                 : Colors.grey,
  //           ),
  //           onPressed: () {
  //             setState(() {
  //               // if(selection.myPosition == Position.UTG){
  //               //   Provider.of<ButtonHandling>(context, listen: false).deactivateButton(isEnabled);
  //               // }
  //               // if(selection.myPosition == Position.MP){
  //               //   Provider.of<ButtonHandling>(context, listen: false).deactivateButton(disabled);
  //               // }
  //               cashSelection.myPosition = selectedMyPosition;
  //               cashSelection.opponentPosition = Position.none; //바꿔야함
  //               cashSelection.opponentAction = OpponentAction.none;
  //             });
  //           },
  //           child: Container(
  //             child: Text(
  //               selectedMyPosition.name,
  //               style: TextStyle(fontSize: 12.0),
  //             ),
  //           ),
  //         ),
  //   );
  // }
  //
  //
  // Flexible opponentPositionFlexible(Position selectedOpponentPosition) {
  //   return Flexible(
  //     child: Consumer<ButtonHandling>(
  //         builder: (BuildContext context, buttonHandling, Widget? child) {
  //       return ElevatedButton(
  //         style: ElevatedButton.styleFrom(
  //
  //           primary: cashSelection.opponentPosition == selectedOpponentPosition
  //               ? Colors.orange
  //               : Colors.grey,
  //         ),
  //         onPressed: cashSelection.myPosition != selectedOpponentPosition
  //             ? () {
  //                 setState(() {
  //                   cashSelection.opponentPosition = selectedOpponentPosition;
  //                   if (cashSelection.myPosition.index <
  //                       selectedOpponentPosition.index) {
  //                     cashSelection.opponentAction = OpponentAction.threeBet;
  //                     // Provider.of<ButtonHandling>(context, listen: false)
  //                     //     .deActivateFourBetButton(disabled);
  //
  //                   } else {
  //                     cashSelection.opponentAction = OpponentAction.none;
  //                   }
  //                 });
  //               }
  //             : null,
  //         child: Container(
  //           child: Text(
  //             selectedOpponentPosition.name,
  //             style: TextStyle(fontSize: 12.0),
  //           ),
  //         ),
  //       );
  //     }),
  //   );
  // }
}




