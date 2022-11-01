import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokercat/global/component/reusable_text.dart';

import '../global/component/appbar.dart';
import '../global/component/pcapptheme.dart';

class AppGame extends StatefulWidget {
  @override
  State<AppGame> createState() => _AppGameState();
}

class _AppGameState extends State<AppGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ZeplinColors.dark,
      appBar: Appbar(
        titleStr: 'App Games',
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ReusableText(text: 'Coming Soon !')],
        ),
      ),
    );
  }
}
