import 'package:flutter/material.dart';

import '../../imports.dart';

enum PcButtonType { elevated, outlined, text }

class PcButton extends StatelessWidget {

  final bool? isLoading;
  final PcButtonType? buttonType;

  final ButtonStyle? style;

  final VoidCallback? onPressed;

  final bool? disabled;
  final bool? block;
  final bool soft;

  final MaterialStateProperty<EdgeInsetsGeometry>? msPadding;
  final EdgeInsetsGeometry? padding;

  final MaterialStateProperty<double>? msElevation;
  final double? elevation;

  final MaterialStateProperty<EdgeInsetsGeometry>? msShape;
  final OutlinedBorder? shape;
  final BorderRadiusGeometry? borderRadius;
  final double? borderRadiusAll;

  final MaterialStateProperty<Color>? msBackgroundColor;
  final Color? backgroundColor;

  final MaterialStateProperty<BorderSide>? msSide;
  final BorderSide? side;
  final Color borderColor;

  final MaterialStateProperty<Color>? msShadowColor;
  final Color? shadowColor;

  final Color? splashColor;

  final Widget child;

  PcButton.text(
      {required this.onPressed,
        required this.child,
        this.msPadding,
        this.padding = const EdgeInsets.fromLTRB(24, 16, 24, 16),
        this.msShape,
        this.block = false,
        this.shape,
        this.soft = false,
        this.borderRadius,
        this.borderRadiusAll = 0,
        this.msBackgroundColor,
        this.backgroundColor=Colors.blue,
        this.buttonType = PcButtonType.text,
        this.style,
        this.msSide,
        this.disabled = false,
        this.side,
        this.borderColor=Colors.transparent,
        this.msShadowColor,
        this.msElevation,
        this.elevation = 4,
        this.shadowColor, this.splashColor, this.isLoading});

  PcButton.block(
      {required this.onPressed,
        required this.child,
        this.msPadding,
        this.padding = const EdgeInsets.fromLTRB(24, 16, 24, 16),
        this.msShape,
        this.block = true,
        this.shape,
        this.soft = false,
        this.borderRadius,
        this.borderRadiusAll = 0,
        this.msBackgroundColor,
        this.backgroundColor=Colors.blue,
        this.buttonType = PcButtonType.elevated,
        this.style,
        this.msSide,
        this.disabled = false,
        this.side,
        this.borderColor=Colors.transparent,
        this.msShadowColor,
        this.msElevation,
        this.elevation = 4,
        this.shadowColor, this.splashColor, this.isLoading});

  PcButton.medium(
      {required this.onPressed,
        required this.child,
        this.msPadding,
        this.padding = const EdgeInsets.fromLTRB(24, 16, 24, 16),
        this.msShape,
        this.block = false,
        this.shape,
        this.soft = false,
        this.borderRadius,
        this.borderRadiusAll = 10,
        this.msBackgroundColor,
        this.backgroundColor=PcAppTheme.pcBlue1,
        this.buttonType = PcButtonType.elevated,
        this.style,
        this.msSide,
        this.disabled = false,
        this.side,
        this.borderColor=Colors.transparent,
        this.msShadowColor,
        this.msElevation,
        this.elevation = 4,
        this.shadowColor, this.splashColor, this.isLoading});

  @override
  Widget build(BuildContext context) {
    Widget button;

    if (buttonType == PcButtonType.outlined) {
      button = OutlinedButton(
        onPressed: onPressed,
        child: child,
        style: style ??
            ButtonStyle(
                side: msSide ??
                    MaterialStateProperty.all(side ??
                        BorderSide(
                          color: soft? borderColor.withAlpha(100) : borderColor,
                          width: soft? 0.8 : 1,
                        )),
                overlayColor:
                MaterialStateProperty.all(splashColor??(backgroundColor!=null?backgroundColor!.withAlpha(40):null)),
                backgroundColor: soft ?
                MaterialStateProperty.all(borderColor.withAlpha(40)) : null,
                foregroundColor:
                MaterialStateProperty.all(borderColor.withAlpha(40)),
                shadowColor:
                msShadowColor ?? MaterialStateProperty.all(shadowColor),
                padding: msPadding ?? MaterialStateProperty.all(padding),
                shape:
                MaterialStateProperty.all(shape ??
                    RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(borderRadiusAll?? 0),
                    ))),
      );
    } else if(buttonType == PcButtonType.elevated){
      button = ElevatedButton(

          style: style ??
              ButtonStyle(

                  elevation: msElevation ??
                      MaterialStateProperty.resolveWith<double>(
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
                  backgroundColor: msBackgroundColor ??
                      MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.disabled))
                            return backgroundColor!.withAlpha(100);
                          return backgroundColor!;
                        },
                      ),
                  shadowColor: msShadowColor ??
                      MaterialStateProperty.all(shadowColor ?? backgroundColor),
                  padding: msPadding ?? MaterialStateProperty.all(padding),
                  overlayColor: MaterialStateProperty.all(splashColor??(backgroundColor!=null?backgroundColor!.withAlpha(40):null)),
                  shape:
                  MaterialStateProperty.all(shape ??
                      RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(borderRadiusAll ?? 0),
                      ))),
          onPressed: disabled! ? null : onPressed,
          child: child);
    }else{
      button=TextButton(
        style:  ButtonStyle(
            overlayColor:
            MaterialStateProperty.all(splashColor ??(backgroundColor!=null?backgroundColor!.withAlpha(40):null)),
            padding: msPadding ?? MaterialStateProperty.all(padding),

            visualDensity: VisualDensity.compact,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap
        ),
        onPressed: disabled! ? null : onPressed,
        child: child,

      );
    }


    return block! ? Row(
      children: [
        Expanded(child: button),
      ],
    ) : button;
  }



}