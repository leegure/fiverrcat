// Copyright 2021 The FlutX Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// [PcSpacing] - provides spacing of various types.

import 'package:flutter/material.dart';

class PcSpacing {
  static EdgeInsetsGeometry zero = EdgeInsets.zero;
  static EdgeInsetsGeometry only(
      {double top = 0, double right = 0, double bottom = 0, double left = 0}) {
    return EdgeInsets.only(left: left, right: right, top: top, bottom: bottom);
  }
  static EdgeInsetsGeometry fromLTRB(
      double left, double top, double right, double bottom) {
    return PcSpacing.only(bottom: bottom, top: top, right: right, left: left);
  }
  static EdgeInsetsGeometry all(double spacing) {
    return PcSpacing.only(
        bottom: spacing, top: spacing, right: spacing, left: spacing);
  }
  static EdgeInsetsGeometry left(double spacing) {
    return PcSpacing.only(left: spacing);
  }
  static EdgeInsetsGeometry nLeft(double spacing) {
    return PcSpacing.only(top: spacing, bottom: spacing, right: spacing);
  }
  static EdgeInsetsGeometry top(double spacing) {
    return PcSpacing.only(top: spacing);
  }
  static EdgeInsetsGeometry nTop(double spacing) {
    return PcSpacing.only(left: spacing, bottom: spacing, right: spacing);
  }
  static EdgeInsetsGeometry right(double spacing) {
    return PcSpacing.only(right: spacing);
  }
  static EdgeInsetsGeometry nRight(double spacing) {
    return PcSpacing.only(top: spacing, bottom: spacing, left: spacing);
  }
  static EdgeInsetsGeometry bottom(double spacing) {
    return PcSpacing.only(bottom: spacing);
  }
  static EdgeInsetsGeometry nBottom(double spacing) {
    return PcSpacing.only(top: spacing, left: spacing, right: spacing);
  }
  static EdgeInsetsGeometry horizontal(double spacing) {
    return PcSpacing.only(left: spacing, right: spacing);
  }
  static x(double spacing) {
    return PcSpacing.only(left: spacing, right: spacing);
  }
  static xy(double xSpacing, double ySpacing) {
    return PcSpacing.only(
        left: xSpacing, right: xSpacing, top: ySpacing, bottom: ySpacing);
  }
  static y(double spacing) {
    return PcSpacing.only(top: spacing, bottom: spacing);
  }
  static EdgeInsetsGeometry vertical(double spacing) {
    return PcSpacing.only(top: spacing, bottom: spacing);
  }
  static EdgeInsetsGeometry symmetric(
      {double vertical = 0, double horizontal = 0}) {
    return PcSpacing.only(
        top: vertical, right: horizontal, left: horizontal, bottom: vertical);
  }
  static Widget height(double height) {
    return SizedBox(
      height: height,
    );
  }
  static Widget width(double width) {
    return SizedBox(
      width: width,
    );
  }
}
