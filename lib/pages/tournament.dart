import 'dart:math';
import 'package:flutter/material.dart';
import 'package:pokercat/chart/common/chart_grid.dart';
import '../chart/common/chart_brain.dart';
import '../chart/common/tourna_chart_brain.dart';
import '../chart/constarants/selection.dart';
import '../global/component/appbar.dart';

class Tournament extends StatefulWidget {
  @override
  _TournamentState createState() => _TournamentState();
}

Selection tournaSelection = Selection();

class _TournamentState extends State<Tournament> {
  Random random = Random();
  double size = 30.0;
  int randomNumber = 0;
  bool isEnabled = true;
  bool disabled = false;

  List<Widget> getButtonJH() {
    List<Flexible> buttonList = [];
    for (var value in TournaPosition.values) {
      if (value.index == 0) continue;
      buttonList.add(myTournaPositionFlexible(value));
    }
    return buttonList;
  }
  @override
  void initState() {

    tournaSelection.myTournaPosition = TournaPosition.UTG;
    tournaSelection.tournaStack = TournaStack.hundred;
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: Appbar(
        title: Text('Tournament'),
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

      body: Column(
        children: [
        ChartGrid(painting : tournaChartBrain.paintingProgress(tournaSelection)),
          //TournaChartContainer(), 이게 원래 노가다 핸드값 입력안해도 되도록 for문돌리기전 컨테이너임.
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  height: 10,
                  width: 10,
                  color: Colors.lightBlue,
                ),
              ),
              Text(
                'Raise',
                style: TextStyle(fontSize: 10),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  height: 10,
                  width: 10,
                  color: Colors.lightGreen,
                ),
              ),
              Text(
                'Call',
                style: TextStyle(fontSize: 10),
              ),
              SizedBox(width: 4.0,)
            ],
          ),
          Text(
            'My Stack',
          ),
          Row(
               children: [

                 myStack(TournaStack.hundred),
                 myStack(TournaStack.eighty),
                 myStack(TournaStack.sixty),
                 myStack(TournaStack.fifty),
                 myStack(TournaStack.forty),
                 myStack(TournaStack.thirtyfive),
                 myStack(TournaStack.thirty),
                 myStack(TournaStack.twentyfive),

               ],
               ),
          Text(
            'My Position',
          ),
          Row(children: getButtonJH()),


          Text(
            'Opponent\'s Position',
          ),
          Row(
            children: [
              opponentTournaPositionFlexible(TournaPosition.UTG),
              opponentTournaPositionFlexible(TournaPosition.UTG1),
              opponentTournaPositionFlexible(TournaPosition.LJ),
              opponentTournaPositionFlexible(TournaPosition.HJ),
              opponentTournaPositionFlexible(TournaPosition.CO),
              opponentTournaPositionFlexible(TournaPosition.BTN),
              opponentTournaPositionFlexible(TournaPosition.SB),
              opponentTournaPositionFlexible(TournaPosition.BB),
            ],
          ),
          Text(
            'Opponent\'s Action',
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                tournaSelection.myTournaPosition==TournaPosition.SB? Flexible(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary:
                      tournaSelection.opponentAction == OpponentAction.raise
                          ? Colors.orange
                          : Colors.grey,
                    ),
                    onPressed:  () {
                      setState(() {
                        tournaSelection.opponentAction = OpponentAction.raise;
                      });
                    },
                    child: Container(
                      child: Text(OpponentAction.raise.name.replaceAll("r", "R")),
                    ),
                  ),
                ):SizedBox( ),
                SizedBox(
                  width: 2,
                ),
                Flexible(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary:
                      tournaSelection.opponentAction == OpponentAction.threeBet
                          ? Colors.orange
                          : Colors.grey,
                    ),

                    onPressed: tournaSelection.myTournaPosition.index <=
                        tournaSelection.opponentTournaPosition.index ||tournaSelection.opponentTournaPosition==TournaPosition.none?  () {
                      setState(() {
                        tournaSelection.opponentAction = OpponentAction.threeBet;
                      });
                    }: null,
                    child: Container(
                      child: Text(OpponentAction.threeBet.name
                          .replaceAll("three", "3")),
                    ),
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Flexible(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary:
                          tournaSelection.opponentAction == OpponentAction.fourBet
                              ? Colors.orange
                              : Colors.grey,
                        ),
                        onPressed: tournaSelection.myTournaPosition.index >= tournaSelection.opponentTournaPosition.index ? () {
                          setState(() {
                            tournaSelection.opponentAction =
                                OpponentAction.fourBet;
                          });
                        } : null,
                        child: Container(
                          child: Text(OpponentAction.fourBet.name
                              .replaceAll("four", "4")),
                        ),
                      ),
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }


  Flexible myStack(TournaStack selectedTournaStack) {
    return Flexible(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(0.0),
          primary: tournaSelection.tournaStack == selectedTournaStack
              ? Colors.orange
              : Colors.grey,
        ),
        onPressed: selectedTournaStack==TournaStack.hundred?() {

          setState(() {
          print('$selectedTournaStack');
            tournaSelection.tournaStack = selectedTournaStack;
            tournaSelection.opponentTournaPosition = TournaPosition.none; //바꿔야함
            tournaSelection.opponentAction = OpponentAction.none;
          });
        }:null,


        child: Container(
          child: Text(
            selectedTournaStack.name
                .replaceAll("hundred", "100bb")
                .replaceAll("eighty", "80bb")
                .replaceAll("sixty", "60bb")
                .replaceAll("fifty", "50bb")
                .replaceAll("forty", "40bb")
                .replaceAll("thirtyfive", "35bb")
                .replaceAll("thirty", "30bb")
                .replaceAll("twentyfive", "25bb"),
            style: TextStyle(fontSize: 12.0),
          ),
        ),
      ),
    );
  }

  Flexible myTournaPositionFlexible(TournaPosition selectedMyTournaPosition) {
    return Flexible(
      child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(0.0),
              primary: tournaSelection.myTournaPosition == selectedMyTournaPosition
                  ? Colors.orange
                  : Colors.grey,
            ),
            onPressed: () {

              setState(() {

                tournaSelection.myTournaPosition = selectedMyTournaPosition;
                tournaSelection.opponentTournaPosition = TournaPosition.none; //바꿔야함
                tournaSelection.opponentAction = OpponentAction.none;
              });

            },
            child: Container(
              child: Text(
                selectedMyTournaPosition.name,
                style: TextStyle(fontSize: 12.0),
              ),
            ),
          ),
    );
  }



  Flexible opponentTournaPositionFlexible(TournaPosition selectedOpponentTournaPosition) {
    return Flexible(
      child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(0.0),
                primary: tournaSelection.opponentTournaPosition == selectedOpponentTournaPosition
                    ? Colors.orange
                    : Colors.grey,
              ),

              onPressed: tournaSelection.myTournaPosition != selectedOpponentTournaPosition ? () {
                setState(() {

                  tournaSelection.opponentTournaPosition = selectedOpponentTournaPosition;
                  if(tournaSelection.myTournaPosition!=TournaPosition.SB&&tournaSelection.myTournaPosition.index<selectedOpponentTournaPosition.index){
                    tournaSelection.opponentAction = OpponentAction.threeBet;
                  } else {
                    tournaSelection.opponentAction = OpponentAction.none;
                  }
                });
              } : null,
              child: Container(
                child: Text(
                  selectedOpponentTournaPosition.name,
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
            ),
    );
  }

  Flexible actionFlexible(OpponentAction selectedAction) {
    return Flexible(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary:
          tournaSelection.opponentAction == selectedAction ? Colors.orange : Colors.grey,
        ),
        onPressed: () {
          setState(() {
            tournaSelection.opponentAction = selectedAction;

          });
        },
        child: Container(
          child: Text(
            selectedAction.name
                .replaceAll("three", "3")
                .replaceAll("four", "4"),
          ),
        ),
      ),
    );
  }
}
