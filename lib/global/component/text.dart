// Copyright 2021 The FlutX Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// There are mainly 13 types of Text widgets.
/// h1,h2,h3,h4,h5,h6,sh1,sh2,b1,b2,button,caption,overline - This is the order of its size.


import 'package:flutter/material.dart';
import '../../imports.dart';

import 'text_style.dart';



class PcText extends StatelessWidget {
  //Key

  final Key? key;
  final String text;
  final TextStyle? textStyle;
  final int fontWeight;
  final double? letterSpacing;
  final Color? color;
  final TextDecoration decoration;
  final double? fontSize;
  final PcTextSize pcTextSize;

  //Text Style
  PcText(this.text,
      {this.textStyle,
        this.fontWeight = 500,
        this.letterSpacing = 0.15,
        this.color,
        this.decoration = TextDecoration.none,
        this.fontSize,
        this.pcTextSize = PcTextSize.b1,
        this.key,
});

  PcText.sh2(this.text,
      {this.textStyle,
        this.fontWeight = 500,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.fontSize,
        this.pcTextSize = PcTextSize.sh2,
        this.key,
});

  PcText.b1(this.text,
      {this.textStyle,
        this.fontWeight = 500,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.fontSize,
        this.pcTextSize = PcTextSize.b1,
        this.key,
});

  PcText.button(this.text,
      {this.textStyle,
        this.fontWeight = 500,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.fontSize,
        this.pcTextSize = PcTextSize.button,
        this.key,
      });

  PcText.caption(this.text,
      {this.textStyle,
        this.fontWeight = 500,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.fontSize,
        this.pcTextSize = PcTextSize.caption,
        this.key,
});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: PcTextStyle.getStyle(
        textStyle: textStyle,
        color: color,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing ??
            PcTextStyle.defaultLetterSpacing[pcTextSize] ??
            0.15,
        decoration: decoration,
        fontSize: fontSize ?? PcTextStyle.defaultTextSize[pcTextSize],
      ),
      key: key,
    );
  }

}
