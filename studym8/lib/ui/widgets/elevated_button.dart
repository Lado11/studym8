import 'package:flutter/material.dart';
import 'package:studym8/index.dart';

class ElevatedButtonCustom extends StatelessWidget {
  const ElevatedButtonCustom._(
      {super.key,
      required this.title,
      required this.onTab,
      this.fontSize,
      this.backGround,
      this.color,
      this.height,
      });

  factory ElevatedButtonCustom.purple({
    required String title,
    required VoidCallback onTab,
  }) {
    return ElevatedButtonCustom._(
        height:Size(167,48),
        title: title,
        fontSize: 24.0,
        onTab: onTab,
        backGround: primary,
        color: white);
  }

  factory ElevatedButtonCustom.min({
    required String title,
    required VoidCallback onTab,
    bool selected = false,
  }) {
    return selected ? ElevatedButtonCustom.purpleMin(title: title, onTab: onTab) : ElevatedButtonCustom.primryMin(title: title, onTab: onTab);

  }

  factory ElevatedButtonCustom.purpleMin({
    required String title,
    required VoidCallback onTab,
  }) {
    return ElevatedButtonCustom._(
        title: title,
        fontSize: 16.0,
        // height: Size(167,39),
        onTab: onTab,
        backGround: primary,
        color:white);
  }

  factory ElevatedButtonCustom.primry({
    required String title,
    required VoidCallback onTab,
  }) {
    return ElevatedButtonCustom._(
        height:Size(167,48),
        title: title,
        fontSize: 24.0,
        onTab: onTab,
        backGround:white,
        color:primary);
  }

  factory ElevatedButtonCustom.primryMin({
    required String title,
    required VoidCallback onTab,
  }) {
    return ElevatedButtonCustom._(
        title: title,
        fontSize: 16.0,
        height:Size(105,39),
        onTab: onTab,
        backGround:white,
        color:black);
  }


  final String title;
  final VoidCallback onTab;
  final double? fontSize;
  final Color? color;
  final Color? backGround;
  final Size? height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTab,
        style: ElevatedButton.styleFrom(
          minimumSize:  height,
          backgroundColor: backGround,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Text(title,
                    style:
                        TextStyle(fontSize: fontSize, color: color, height: 28 / 24)),
              ])
            ]));
  }
}
