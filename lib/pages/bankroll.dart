import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokercat/global/component/reusable_text.dart';

import '../global/component/appbar.dart';
import '../global/component/pcapptheme.dart';

class Bankroll extends StatefulWidget {
  @override
  State<Bankroll> createState() => _BankrollState();
}

class _BankrollState extends State<Bankroll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ZeplinColors.dark,
      appBar: Appbar(
        titleStr: 'Bankroll',
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ReusableText(text: 'developing in progress !')],
        ),
      ),
    );
  }
}
//선택된 레인지가 카드 두개 조합을 포함하는가?
