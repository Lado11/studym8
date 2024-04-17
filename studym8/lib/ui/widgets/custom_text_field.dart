import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:studym8/index.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {super.key,
      required this.label,
      required this.hintText,
      this.prefixIconData,
      required this.controller,
      required this.isSecure});

  final String? label;
  final String? hintText;
  final IconData? prefixIconData;
  final TextEditingController controller;

  final bool isSecure;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool showText = false;

  @override
  void initState() {
    showText = !widget.isSecure;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (widget.label != null)
          Padding(
              padding: const EdgeInsets.only(left: 47.0),
              child: Text(
                textAlign: TextAlign.start,
                widget.label!,
                style: TextStyle(),
              )),
        TextField(
            controller: widget.controller,
            obscureText: !showText,
            decoration: InputDecoration(
                hintText: widget.hintText!,
                suffix: widget.isSecure
                    ? InkWell(
                        onTap: () {
                          setState(() {
                            showText = !showText;
                          });
                        },
                        child: Icon(
                          showText
                              ? CupertinoIcons.eye
                              : CupertinoIcons.eye_slash,
                        ))
                    : null,
                prefixIcon: widget.prefixIconData != null
                    ? Icon(
                        widget.prefixIconData!,
                        color: black,
                      )
                    : null))
      ],
    );
  }
}
