
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import '../../../global/component/apple_login_button.dart';
import '../../../global/component/google_login_button.dart';
import '../../../imports.dart';
import '../../global/common_size.dart';
import '../../global/component/appbar.dart';
import '../data/constant.dart';
import '../data/localdb.dart';
import '../data/sns_firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart' ;

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  Future<void> checkUserLog() async
  {

    final FirebaseAuth auth = await FirebaseAuth.instance;
    final user = await auth.currentUser;
    if(user != null)
    {
      print('이름은  ${user.email}');
      Constant.name = (await LocalDataSaver.getName())??'aa';
      Constant.email = (await LocalDataSaver.getEmail())??'bb';
      Constant.img = (await LocalDataSaver.getImg())??'cc';
      AppRoutes.moveToPage(AppLinks.btmNavi, getOffAll: true);
      print('name = ${Constant.name},email = ${Constant.email},img = ${Constant.img}');
    }
  }



  @override
  void initState() {
    super.initState();
    checkUserLog();

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
          padding: EdgeInsets.all(8.0.w),
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


              SizedBox(height: 10.h),
              GoogleSignInButton(
                  centered: true,
                  onPressed: () async {
                    await SnsAuthWithFirebase().signInWithGoogle();
                    if (authProvider.isLoggedIn()) {
                      Constant.name = (await LocalDataSaver.getName())??'a';
                      Constant.email = (await LocalDataSaver.getEmail())??'b';
                      Constant.img = (await LocalDataSaver.getImg())??'c';
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
