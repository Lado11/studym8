import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studym8/index.dart';

class KeppLerning extends StatefulWidget {
  const KeppLerning({super.key, required this.data});

  final HomeData data;

  @override
  State<KeppLerning> createState() => _KeppLerningState();
}

class _KeppLerningState extends State<KeppLerning> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 268,
        decoration: const BoxDecoration(
          color: white,
          borderRadius: BorderRadius.all(
              Radius.circular(15.0) //                 <--- border radius here
              ),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 22, right: 16, left: 16, bottom: 16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.data.info),
                DialogExample.custom(
                    title: "Unenroll",
                    desc: "Reset Deadlines",
                    info: "Continue Course")
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text(
                widget.data.title,
                style: robotoBlackBold16TextStyle,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 24),
              child: Text(widget.data.desc),
            ),
            const LinearProgressIndicator(
                value: 0.15,
                valueColor: AlwaysStoppedAnimation(Color(0xFFF18701)),
                backgroundColor: Color(0xFFE6E6E6),
                minHeight: 5.0,
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
          ]),
        ));
  }
}
