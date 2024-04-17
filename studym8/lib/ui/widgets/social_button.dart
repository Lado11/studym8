import 'package:flutter/material.dart';
import 'package:studym8/models/enum/social_enums.dart';
import 'package:studym8/index.dart';

class SocialButton extends StatelessWidget {
  SocialButton._({super.key, required this.data});

  SocialButton.costom({super.key, required this.data});

  SocialButton.faceBook({super.key}) {
    data = Social.faceBook;
  }

  SocialButton.google({super.key}) {
    data = Social.google;
  }

  SocialButton.apple({super.key}) {
    data = Social.apple;
  }

  Social? data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 74,
      height: 78,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: primary,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage("${data?.image}"),
            width: 20,
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Text(
              data?.title ?? "",
              style: robotoWhite12TextStyle
            ),
          )
        ],
      ),
    );
  }
}
