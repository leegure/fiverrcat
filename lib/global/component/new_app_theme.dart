import 'package:flutter/material.dart';

enum whButtonType { elevated }

class CustomAppTheme {
  static const Color whColor = const Color(0xff388CC6);

  final bool? block;
  final VoidCallback? onPressed;
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final double? borderRadiusAll;
  final Color? backgroundColor;
  final whButtonType? buttonType;
  final bool? disabled;
  final Color borderColor;
  final double? elevation;
  final MaterialStateProperty<EdgeInsetsGeometry>? whPadding;

  CustomAppTheme.button({
    required this.onPressed,
    required this.child,
    this.padding = const EdgeInsets.fromLTRB(24, 16, 24, 16),
    this.whPadding,
    this.block = true,
    this.borderRadiusAll = 0,
    this.backgroundColor = Colors.blue,
    this.buttonType = whButtonType.elevated,
    this.disabled = false,
    this.borderColor = Colors.transparent,
    this.elevation = 4,
  });

  @override
  Widget build(BuildContext context) {
    Widget button = OutlinedButton(
      onPressed: onPressed,
      child: child,
      style: ButtonStyle(
        elevation: MaterialStateProperty.resolveWith<double>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled))
              return 0;
            else if (states.contains(MaterialState.pressed))
              return elevation! * 2;
            else if (states.contains(MaterialState.hovered))
              return elevation! * 1.5;
            return elevation!;
          },
        ),
        side: MaterialStateProperty.all(
          BorderSide(
            color: borderColor.withAlpha(100),
            width: 0.8,
          ),
        ),
        backgroundColor: MaterialStateProperty.all(borderColor.withAlpha(40)),
        padding: whPadding ?? MaterialStateProperty.all(padding),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadiusAll ?? 0),
          ),
        ),
      ),
    );
    return block!
        ? Row(
            children: [
              Expanded(child: button),
            ],
          )
        : button;
  }
}
