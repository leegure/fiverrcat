
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import '../../../global/component/apple_login_button.dart';
import '../../../global/component/google_login_button.dart';
import '../../../imports.dart';
import '../../global/common_size.dart';
import '../../global/component/appbar.dart';
import '../data/sns_firebase_auth.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  void initState() {
    super.initState();

    PcTextStyle.changeFontFamily(GoogleFonts.quicksand);
    PcTextStyle.changeDefaultFontWeight({
      100: FontWeight.w200,
      200: FontWeight.w300,
      300: FontWeight.w400,
      400: FontWeight.w500,
      500: FontWeight.w600,
      600: FontWeight.w700,
      700: FontWeight.w800,
      800: FontWeight.w900,
      900: FontWeight.w900,
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ZeplinColors.dark,
      appBar: Appbar(
        titleStr: 'Login',

      ),

      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: common_l_gap,
              ),
              Image.asset(
                'assets/images/catpic3.png',
                height: 100,
                width: 100,
              ),


              SizedBox(height: 10),
              GoogleSignInButton(
                  centered: true,
                  onPressed: () async {
                    await SnsAuthWithFirebase().signInWithGoogle();
                    if (authProvider.isLoggedIn()) {
                      BotToast.showText(text: 'Google Login Success');
                      AppRoutes.moveToPage(AppLinks.btmNavi, getOffAll: true);

                    }
                  }),
              AppleSignInButton(
                  centered: true,
                  onPressed: () async {
                    await SnsAuthWithFirebase().signInWithApple();
                    if (authProvider.isLoggedIn()) {
                      BotToast.showText(text: 'Apple Login Success');
                      AppRoutes.moveToPage(AppLinks.btmNavi, getOffAll: true);
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
