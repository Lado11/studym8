import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:studym8/index.dart';


class CustomReytingButtom extends StatefulWidget {
  const CustomReytingButtom({super.key, required this.data});

  final HomeReyting data;

  @override
  State<CustomReytingButtom> createState() => _CustomReytingButtomState();
}

class _CustomReytingButtomState extends State<CustomReytingButtom> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color:primary,
          borderRadius: BorderRadius.all(
              Radius.circular(5.0) //                 <--- border radius here
              ),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              const Icon(
                size: 12,
                CupertinoIcons.star_fill,
                color: yellow,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  widget.data.title,
                  style: const TextStyle(color:white),
                ),
              )
            ],
          ),
        ));
  }
}
