import 'package:flutter/cupertino.dart';
import 'package:studym8/index.dart';
class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SocialButton.google(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: SocialButton.apple(),
        ),
        SocialButton.faceBook(),
      ],
    );
  }
}
