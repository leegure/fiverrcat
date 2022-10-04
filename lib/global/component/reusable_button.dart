import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokercat/global/component/pcapptheme.dart';

class MyElevatedButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double? height;
  final double? fontsize;
  final Gradient gradient;
  final bool isButtonSelected;
  final bool isButtonEnabled;
  final String selectedButtonLabel;
  final VoidCallback? onPressed;

  MyElevatedButton({
    Key? key,
    required this.selectedButtonLabel,
    required this.onPressed,
    required this.isButtonSelected,
    this.isButtonEnabled = true,
    this.borderRadius,
    this.width,
    this.height,
    this.fontsize,
    this.gradient = const LinearGradient(colors: [Colors.cyan, Colors.indigo]),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(6);

    return Container(
            width: width??43.w,
            height: height??25.h,
            decoration: BoxDecoration(
              gradient: isButtonSelected ? gradient : null,
              borderRadius: borderRadius,
              boxShadow: [
                BoxShadow(
                    color: const Color(0x2e9596cf),
                    offset: Offset(-7, -7),
                    blurRadius: 32,
                    spreadRadius: 0),
                BoxShadow(
                    color: const Color(0x4d000000),
                    offset: Offset(10, 7),
                    blurRadius: 34.8,
                    spreadRadius: 10.2),
                BoxShadow(
                    color: const Color(0x1a000000),
                    offset: Offset(29, 21),
                    blurRadius: 27,
                    spreadRadius: 13)
              ],
            ),
            child: LayoutBuilder(

              builder: (context, constraints) {
                return ElevatedButton(

                  onPressed: onPressed,
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                    textStyle: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.disabled)) {
                        return TextStyle(
                          decoration: TextDecoration.lineThrough,
                          decorationThickness: 2.0,
                        );
                      }
                      return TextStyle(

                      );
                    }),


                    backgroundColor: MaterialStateProperty.all(
                        isButtonSelected ? Colors.transparent : PcAppTheme.mainBlue),
                    foregroundColor: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.disabled)) {
                        return Colors.grey[700];
                      }
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.white;
                      }
                      return Colors.white;
                    }),

                    shadowColor: MaterialStateProperty.all(Colors.transparent),

                  ),
                  child: FittedBox(
                    fit :BoxFit.scaleDown,
                    child: Text(

                      '$selectedButtonLabel',
                      style: TextStyle(
                        fontSize: fontsize??constraints.maxWidth/ 4,
                        fontFamily: "Quasimoda",
                        fontWeight: isButtonSelected ? FontWeight.w900 : FontWeight.w600,
                      ),
                    ),
                  ),
                );
              }
            ),
          );


  }
}