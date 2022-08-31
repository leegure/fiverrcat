import 'package:flutter/material.dart';


import 'bankroll.dart';
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
    Center(child: Bankroll(),),
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

      bottomNavigationBar: BottomNavigationBar(
        currentIndex : _currentIndex,

        type: BottomNavigationBarType.fixed,
        iconSize: 20,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.grey,
            icon: Icon(Icons.attach_money_sharp),
            label: 'Cash Game',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_on_sharp),
            label: 'Push Fold',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Tournament',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money_sharp),
            label: 'Bankroll',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),

        ],

        onTap: _onItemTap,
        selectedFontSize: 13.0,
        unselectedFontSize: 13.0,
      ),
    );
  }
}
