import 'package:flutter/material.dart';

class PcAppTheme {
  //pcBlue1 : 앱 전반적으로 가장 많이 사용되는 파란색
  static const Color pcBlue1 = Color(0xff388CC6);
  static Color pcBlue1Alpha20 = pcBlue1.withAlpha(20);

  //pcWhite1 : 앱 바, 각 페이지 배경, 클릭 전 버튼 안의 글자 등을 구성하는 기본 흰색
  static const Color pcWhite1 = Color(0xffffffff);

  static TextStyle snsSignInBtnText1 = TextStyle(
    fontFamily: "SF Pro",
    fontWeight: FontWeight.w500,
    fontSize: 16.0,
    letterSpacing: 0.27,
    color: Colors.grey[500],
  );

}
class ZeplinColors {
  static const Color dark = Color(0xff272847);
}