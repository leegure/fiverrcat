import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pokercat/auth/screens/sign_in_screen.dart';
import 'package:pokercat/global/component/pcapptheme.dart';

import '../auth/data/constant.dart';
import '../auth/data/localdb.dart';
import '../getx_route/routes.dart';
import 'package:firebase_auth/firebase_auth.dart' ;
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  bool isLogin = false;

  loginControl() async{
    await LocalDataSaver.getLogData().then((value){
      setState((){
        isLogin = value!;
      });
    });
      if (isLogin == true) {
        Constant.name = (await LocalDataSaver.getName())!;
        Constant.email = (await LocalDataSaver.getEmail())!;
        Constant.img = (await LocalDataSaver.getImg())!;
        AppRoutes.moveToPage(AppLinks.btmNavi, getOffAll: true);
      } else {
        AppRoutes.moveToPage(AppLinks.signIn, getOffAll: true);
      }
  }
  @override
  void initState() {
    super.initState();
    loginControl();

  }
    // void loginControl() async {
    //   // bool status = await AuthController.isLoginUser() as bool;
    //   bool? isUserlogged = await LocalDataSaver.getLogData();
    //   print('1232$isUserlogged');
    //   if (isUserlogged == true) {
    //
    //     AppRoutes.moveToPage(AppLinks.btmNavi, getOffAll: true);
    //   } else {
    //
    //     AppRoutes.moveToPage(AppLinks.signIn, getOffAll: true);
    //   }
    //
    // Future.delayed(Duration(seconds: 3), () async {
    //   final token = await SharedPreferencesHelper().getAuthToken();
    //   print('token = $token');
    //   if (token != null && token.isNotEmpty) {
    //     AppRoutes.moveToPage(AppLinks.btmNavi, getOffAll: true);
    //   } else {
    //     AppRoutes.moveToPage(AppLinks.signIn, getOffAll: true);
    //   }
    // }
    //
    // );
    //}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: ZeplinColors.dark,
      body: Center(
        child: Text('.'),
      ),
    );
  }
}

// class AuthController {
//   static Future<bool> isLoginUser() async {
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     String? token = sharedPreferences.getString("token");
//     if (token == null) {
//       return false;
//     } else {
//       return true;
//     }
//   }
// }
// class SharedPreferencesHelper{
//
//
//   Future<bool> setAuthToken(String token) async{
//     final pref = await SharedPreferences.getInstance();
//     return pref.setString(UserPref.AuthToken.toString(),token);
//   }
//
//   Future<String?> getAuthToken() async {
//     final pref = await SharedPreferences.getInstance();
//     return pref.getString(UserPref.AuthToken.toString());
//   }
//
// }
// enum UserPref {
//   AuthToken
// }
//
// class Api {
//   Future<void> loginUser() async {
//     String token = 'asdasdasd';
//     await SharedPreferencesHelper().setAuthToken(token);
//   }
//}