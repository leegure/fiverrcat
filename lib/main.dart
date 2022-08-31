import 'dart:async';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'auth/data/auth_provider.dart';
import 'getx_route/routes.dart';
import 'global/button_handling.dart';
import 'global/component/preferences.dart';
import 'imports.dart';


//test1

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //LocaleSettings.useDeviceLocale();
  // Initalize Fire
  // base Core for app, necessary for firebase to work
  await Firebase.initializeApp();

  //init을 통해 get.put injection 수행
  await AppPreferences.init();

  await AuthProvider.init();

  //Load App Configs
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {


  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context) => ButtonHandling(),
      child: GetMaterialApp(
        title: '포커캣',
        //botToast 사용을 위한 builder 등록
        //왜 이런 형태로 하는지 이해는 안됨. 하라니까 함.
        builder: (_, w) => BotToastInit()(_, w),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.grey,
          textTheme: AppTheme.textTheme,
          platform: TargetPlatform.iOS,
        ),
        navigatorObservers: [
          //botToast사용을 위한 observer를 등록 한다. 이게 왜 필요한지 모르것지만,, package 가이드가 그러하다..
          BotToastNavigatorObserver(),
          //routeObserver를 등록 한다.
          //이것을 왜 getx controller로 inject 하는걸까? 아마도 global하게 가져다 쓰라는 의미 겠지?
          appPrefs.routeObserver,
        ],
        //home: HomePage(),
        initialRoute: AppLinks.signIn,
        getPages: AppRoutes.pages,
      ),
    );
  }
}
