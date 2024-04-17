import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studym8/index.dart';

class CustomTextButton extends StatefulWidget {
  const CustomTextButton({super.key, required this.data});

  final HomeTextButton data;

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: selected ? primary : white,
          border: Border.all(color: selected ? primary : white),
          borderRadius: const BorderRadius.all(
              Radius.circular(10.0) //                 <--- border radius here
              ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                widget.data.title,
                style: TextStyle(color: !selected ? primary : white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
