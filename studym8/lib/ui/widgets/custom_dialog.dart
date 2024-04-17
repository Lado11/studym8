import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studym8/index.dart';

class DialogExample extends StatelessWidget {
  const DialogExample._(
      {super.key, required this.title, required this.desc, required this.info});

  final String title;
  final String desc;
  final String info;

  factory DialogExample.custom({
    required String title,
    required String desc,
    required String info,
  }) {
    return DialogExample._(title: title, desc: desc, info: info);
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => Dialog(
              child: Container(
                  height: 158,
                  width: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: roboto16TextStyle,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Text(desc, style: roboto16TextStyle),
                        ),
                        Text(info, style: roboto16TextStyle)
                      ],
                    ),
                  )))),
      child: const Icon(
        CupertinoIcons.ellipsis,
        color: black,
      ),
    );
  }
}
