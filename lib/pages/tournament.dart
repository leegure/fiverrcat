import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokercat/chart/common/chart_grid.dart';
import 'package:pokercat/global/component/pcapptheme.dart';
import '../chart/common/4bet_to_allin.dart';
import '../chart/common/chart_brain.dart';
import '../chart/common/tourna_chart_brain.dart';
import '../chart/constarants/selection.dart';
import '../global/component/appbar.dart';
import '../global/component/reusable_button.dart';
import '../global/component/reusable_text.dart';

class Tournament extends StatefulWidget {
  @override
  _TournamentState createState() => _TournamentState();
}

Selection tournaSelection = Selection();

class _TournamentState extends State<Tournament> {
  Random random = Random();
  int randomNumber = 0;
  bool isEnabled = true;
  bool disabled = false;

  // List<Widget> getButtonJH() {
  //   List<Flexible> buttonList = [];
  //   for (var value in TournaPosition.values) {
  //     if (value.index == 0) continue;
  //     buttonList.add(myTournaPositionFlexible(value));
  //   }
  //   return buttonList;
  // }

  @override
  void initState() {
    tournaSelection.myTournaPosition = TournaPosition.UTG;
    tournaSelection.tournaStack = TournaStack.hundred;
    tournaSelection.opponentTournaPosition = TournaPosition.none;
    tournaSelection.opponentAction = OpponentAction.none;
    // TODO: implement initState
    super.initState();
  }

  List<MyElevatedButton> getStackButton() {
    List<MyElevatedButton> buttonList = [];
    for (TournaStack selectedTournaStack in TournaStack.values) {
      if (selectedTournaStack.index == 0) continue;
      buttonList.add(MyElevatedButton(
        //20bb까지 추가된다면 적용될 버튼의 가로세로 길이.
        // width: 38.w,
        // height: 25.h,
        onPressed:() {
          setState(() {
            print('$selectedTournaStack');
            tournaSelection.tournaStack = selectedTournaStack;
            tournaSelection.opponentTournaPosition =
                TournaPosition.none; //바꿔야함
            tournaSelection.opponentAction = OpponentAction.none;
          });
        }
            ,
        isButtonSelected: tournaSelection.tournaStack == selectedTournaStack
            ?true: false,
        selectedButtonLabel: '${selectedTournaStack.name
            .replaceAll("hundred", "100bb")
            .replaceAll("eighty", "80bb")
            .replaceAll("sixty", "60bb")
            .replaceAll("fifty", "50bb")
            .replaceAll("forty", "40bb")
            .replaceAll("thirtyfive", "35bb")
            .replaceAll("thirty", "30bb")
            .replaceAll("twentyfive", "25bb")
            .replaceAll("twenty", "20bb")}',
      ));
    }
    return buttonList;
  }

  List<MyElevatedButton> getTournaHeroButton(double width) {
    List<MyElevatedButton> buttonList = [];
    for (TournaPosition selectedMyTournaPosition in TournaPosition.values) {
      if (selectedMyTournaPosition.index == 0) continue;
      buttonList.add(
        MyElevatedButton(

        width: width,
        onPressed: () {
          setState(() {
            tournaSelection.myTournaPosition = selectedMyTournaPosition;
            tournaSelection.opponentTournaPosition = TournaPosition.none; //바꿔야함
            tournaSelection.opponentAction = OpponentAction.none;
          });
        },
        isButtonSelected:tournaSelection.myTournaPosition == selectedMyTournaPosition
            ?true:false,
        selectedButtonLabel: '${selectedMyTournaPosition.name}',

      ),);


    }
    return buttonList;
  }

  List<MyElevatedButton> getTournaVillainButton() {
    List<MyElevatedButton> buttonList = [];
    for (TournaPosition selectedOpponentTournaPosition in TournaPosition.values) {
      if (selectedOpponentTournaPosition.index == 0) continue;
      buttonList.add(MyElevatedButton(
        onPressed: tournaSelection.myTournaPosition !=
            selectedOpponentTournaPosition
            ? () {
          setState(() {
            tournaSelection.opponentTournaPosition =
                selectedOpponentTournaPosition;
            if (tournaSelection.myTournaPosition != TournaPosition.SB &&
                tournaSelection.myTournaPosition.index <
                    selectedOpponentTournaPosition.index) {
              tournaSelection.opponentAction = OpponentAction.threeBet;
            } else {
              tournaSelection.opponentAction = OpponentAction.none;
            }
          });
          print('tournaoppoposi= ${tournaSelection.opponentTournaPosition}');
        }
            : null,
        isButtonSelected: tournaSelection.opponentTournaPosition ==
            selectedOpponentTournaPosition
            ? true: false,
        selectedButtonLabel: '${selectedOpponentTournaPosition.name}',

      ),);


    }
    return buttonList;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(
        titleStr: 'Tournament',
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
        color: ZeplinColors.dark,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: [
                Expanded(
                    flex: 100,
                    child: ChartGrid(
                        painting:
                            tournaChartBrain.paintingProgress(tournaSelection))),
                Expanded(
                    flex: 57,
                    child: Column(
                  children: [


                    ReusableText(text: 'Stack',fontSize: 14.0.sp,),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  getStackButton(),
                      ),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     myStack(TournaStack.hundred),
                    //     myStack(TournaStack.eighty),
                    //     myStack(TournaStack.sixty),
                    //     myStack(TournaStack.fifty),
                    //     myStack(TournaStack.forty),
                    //     myStack(TournaStack.thirtyfive),
                    //     myStack(TournaStack.thirty),
                    //     myStack(TournaStack.twentyfive),
                    //   ],
                    // ),
                    ReusableText(text: 'Hero',fontSize: 14.0.sp,),

                    Row(mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        getTournaHeroButton(constraints.maxWidth*0.12)
                        // getButtonJH()
                    ),
                    ReusableText(
                      text:  'Villain',fontSize: 14.0.sp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: getTournaVillainButton(),
                     // [opponentTournaPositionFlexible(TournaPosition.UTG),
                     //   opponentTournaPositionFlexible(TournaPosition.UTG1),
                     //   opponentTournaPositionFlexible(TournaPosition.LJ),
                     //   opponentTournaPositionFlexible(TournaPosition.HJ),
                     //   opponentTournaPositionFlexible(TournaPosition.CO),
                     //   opponentTournaPositionFlexible(TournaPosition.BTN),
                     //   opponentTournaPositionFlexible(TournaPosition.SB),
                     //   opponentTournaPositionFlexible(TournaPosition.BB),]

                    ),
                    ReusableText(
                      text: 'Villain\'s Action',fontSize: 14.0.sp,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          tournaSelection.myTournaPosition == TournaPosition.SB && tournaSelection.tournaStack != TournaStack.twentyfive
                              ? Flexible(
                                  child:
                                  MyElevatedButton(

                                    onPressed:  tournaSelection.myTournaPosition.index <= tournaSelection.opponentTournaPosition.index ||
                                        tournaSelection.opponentTournaPosition ==
                                            TournaPosition.none? () {
                                      setState(() {
                                        tournaSelection.opponentAction =
                                            OpponentAction.raise;
                                      });
                                    } : null,
                                    selectedButtonLabel: '${OpponentAction.raise.name
                                        .replaceAll("r", "R")}',
                                    isButtonSelected:  tournaSelection.opponentAction ==
                                        OpponentAction.raise
                                        ? true:false,

                                  ),

                                )
                              : SizedBox(),
                          SizedBox(
                            width: 2,
                          ),
                          Flexible(
                            child: MyElevatedButton(

                              onPressed: tournaSelection.myTournaPosition.index <=
                                          tournaSelection
                                              .opponentTournaPosition.index ||
                                      tournaSelection.opponentTournaPosition ==
                                          TournaPosition.none
                                  ? () {
                                      setState(() {
                                        tournaSelection.opponentAction =
                                            OpponentAction.threeBet;
                                      });
                                    }
                                  : null,
                              selectedButtonLabel: '${OpponentAction.threeBet.name
                                  .replaceAll("three", "3")}',
                              isButtonSelected:  tournaSelection.opponentAction ==
                                  OpponentAction.threeBet
                                  ? true:false,

                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Flexible(
                            child: MyElevatedButton(

                              onPressed: tournaSelection.myTournaPosition.index >=
                                  tournaSelection.opponentTournaPosition.index
                                  ? () {
                                setState(() {
                                  tournaSelection.opponentAction =
                                      OpponentAction.fourBet;
                                });
                              }
                                  : null,
                              selectedButtonLabel:
                              FourBetToAllin(opponentTournaPosition: tournaSelection.opponentTournaPosition, myTournaPosition: tournaSelection.myTournaPosition, tournaStack: tournaSelection.tournaStack,).changeString()
            ,
                              // tournaSelection.tournaStack ==TournaStack.sixty && tournaSelection.myTournaPosition ==TournaPosition.SB &&tournaSelection.opponentTournaPosition ==TournaPosition.HJ
                              //     ? 'All-in':'${OpponentAction.fourBet.name
                              //     .replaceAll("four", "4")}',
                              isButtonSelected:  tournaSelection.opponentAction ==
                                         OpponentAction.fourBet
                                     ?true:false,

                            ),
                          ),

                          // Flexible(
                          //   child: ElevatedButton(
                          //     style: ElevatedButton.styleFrom(
                          //       primary: tournaSelection.opponentAction ==
                          //               OpponentAction.fourBet
                          //           ? Colors.orange
                          //           : Colors.grey,
                          //     ),
                          //     onPressed: tournaSelection.myTournaPosition.index >=
                          //             tournaSelection.opponentTournaPosition.index
                          //         ? () {
                          //             setState(() {
                          //               tournaSelection.opponentAction =
                          //                   OpponentAction.fourBet;
                          //             });
                          //           }
                          //         : null,
                          //     child: Container(
                          //       child: Text(OpponentAction.fourBet.name
                          //           .replaceAll("four", "4")),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.h),
                  ],
                ))

              ],
            );
          }
        ),
      ),
    );
  }

  // Flexible myStack(TournaStack selectedTournaStack) {
  //   return Flexible(
  //     child: MyElevatedButton(
  //
  //       onPressed: selectedTournaStack == TournaStack.hundred
  //           ? () {
  //               setState(() {
  //                 print('$selectedTournaStack');
  //                 tournaSelection.tournaStack = selectedTournaStack;
  //                 tournaSelection.opponentTournaPosition =
  //                     TournaPosition.none; //바꿔야함
  //                 tournaSelection.opponentAction = OpponentAction.none;
  //               });
  //             }
  //           : null,
  //       isButtonSelected: tournaSelection.tournaStack == selectedTournaStack
  //           ?true: false,
  //       selectedButtonLabel: '${selectedTournaStack.name
  //           .replaceAll("hundred", "100bb")
  //           .replaceAll("eighty", "80bb")
  //           .replaceAll("sixty", "60bb")
  //           .replaceAll("fifty", "50bb")
  //           .replaceAll("forty", "40bb")
  //           .replaceAll("thirtyfive", "35bb")
  //           .replaceAll("thirty", "30bb")
  //           .replaceAll("twentyfive", "25bb")}',
  //       ),
  //     );
  //
  // }
  // Flexible myTournaPositionFlexible(TournaPosition selectedMyTournaPosition) {
  //   return Flexible(
  //     child: MyElevatedButton(
  //
  //       onPressed: () {
  //         setState(() {
  //           tournaSelection.myTournaPosition = selectedMyTournaPosition;
  //           tournaSelection.opponentTournaPosition = TournaPosition.none; //바꿔야함
  //           tournaSelection.opponentAction = OpponentAction.none;
  //         });
  //       },
  //       isButtonSelected:tournaSelection.myTournaPosition == selectedMyTournaPosition
  //       ?true:false,
  //       selectedButtonLabel: '${selectedMyTournaPosition.name}',
  //
  //       ),
  //
  //   );
  // }
  //
  // Flexible opponentTournaPositionFlexible(
  //     TournaPosition selectedOpponentTournaPosition) {
  //   return Flexible(
  //     child: MyElevatedButton(
  //       onPressed: tournaSelection.myTournaPosition !=
  //               selectedOpponentTournaPosition
  //           ? () {
  //               setState(() {
  //                 tournaSelection.opponentTournaPosition =
  //                     selectedOpponentTournaPosition;
  //                 if (tournaSelection.myTournaPosition != TournaPosition.SB &&
  //                     tournaSelection.myTournaPosition.index <
  //                         selectedOpponentTournaPosition.index) {
  //                   tournaSelection.opponentAction = OpponentAction.threeBet;
  //                 } else {
  //                   tournaSelection.opponentAction = OpponentAction.none;
  //                 }
  //               });
  //             }
  //           : null,
  //       isButtonSelected: tournaSelection.opponentTournaPosition ==
  //           selectedOpponentTournaPosition
  //           ? true: false,
  //       selectedButtonLabel: '${selectedOpponentTournaPosition.name}',
  //
  //     ),
  //   );
  // }

  Flexible actionFlexible(OpponentAction selectedAction) {
    return Flexible(
      child: MyElevatedButton(

        onPressed: () {
          setState(() {
            tournaSelection.opponentAction = selectedAction;
          });
        },
        isButtonSelected: tournaSelection.opponentAction == selectedAction
            ? true: false,
        selectedButtonLabel: '${selectedAction.name
            .replaceAll("three", "3")
            .replaceAll("four", "4")}',

      ),
    );
  }
}
