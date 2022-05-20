import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final Widget? title;
  final Widget? leadingIcon;
  final Color colorVal;
  final double? leadingWidth;

  const AppBarWidget(
      {Key? key,  this.title,
       this.leadingIcon,
      this.leadingWidth,
      required this.colorVal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: title,
        centerTitle: true,
        leadingWidth: leadingWidth,
        leading: leadingIcon,
        elevation: 0,
        backgroundColor: colorVal,
        );
  }
}
