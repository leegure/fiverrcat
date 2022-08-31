import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final List<Widget>? actions;
  final String? titleStr;
  final bool centerTitle;
  final Widget? leading;
  final Color? backgroundColor;
  final bool automaticallyImplyLeading;
  const Appbar({
    Key? key,
    this.title,
    this.titleStr,
    this.actions,
    this.centerTitle = true,
    this.leading,
    this.backgroundColor,
    this.automaticallyImplyLeading = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor??Colors.black12,
      elevation: 0.0,
      automaticallyImplyLeading:automaticallyImplyLeading,
      leadingWidth:28,
      leading: leading,
      centerTitle: centerTitle,
      title: title ??
          Text(
            titleStr ?? '',
            style: const TextStyle(fontSize: 18,fontFamily: "NotoSansKR",fontWeight: FontWeight.w500,),
          ),
      actions: actions,


    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);//kToolbarHeight 값은 material에서 제공하는 constant 값
}
