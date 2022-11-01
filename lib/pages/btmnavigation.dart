import 'package:flutter/material.dart';


import '../chart/common/poker_icon_icons.dart';
import '../global/component/pcapptheme.dart';
import 'appgame.dart';
import 'cashgame.dart';
import 'tournament.dart';
import 'profile.dart';
import 'pushfold.dart';


class BtmNavi extends StatefulWidget {
  @override
  _BtmNaviState createState() => _BtmNaviState();
}

class _BtmNaviState extends State<BtmNavi> {

  int _currentIndex = 0;

  final tabs = [
    Center(child: CashGame(),),
    Center(child: PushFold(),),
    Center(child: Tournament(),),
    Center(child: AppGame(),),
    Center(child: ProfileScreen(),),


  ];

  void _onItemTap(int index) {
    setState(() {
      _currentIndex = index;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: tabs[_currentIndex],

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black,
              blurRadius: 10,
            ),
          ],
        ),
        child: BottomNavigationBar(

          backgroundColor: ZeplinColors.dark,
          unselectedItemColor: Color(0xff53558a),
          selectedItemColor: Color(0xff59d1ff),


          currentIndex : _currentIndex,

          type: BottomNavigationBarType.fixed,
          iconSize: 20,

          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Colors.grey,
              icon: Icon(PokerIcon.money_1),
              label: 'Cash Game',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_on_sharp),
              label: 'Push Fold',

            ),
            BottomNavigationBarItem(
              icon: Icon(PokerIcon.trophy),
              label: 'Tournament',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(PokerIcon.chart_line),
            //   label: 'Bankroll',
            // ),
            BottomNavigationBarItem(
              icon: Icon(Icons.attach_money_sharp),
              label: 'App Games',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),

          ],
          selectedLabelStyle:TextStyle(
            fontFamily: 'Quasimoda',
            fontWeight: FontWeight.w700,
          ) ,
          unselectedLabelStyle: TextStyle(

            fontFamily: 'Quasimoda',
            fontWeight: FontWeight.w500,
          ),
          onTap: _onItemTap,
          selectedFontSize: 12.0,
          unselectedFontSize: 12.0,
        ),
      ),
    );
  }
}
