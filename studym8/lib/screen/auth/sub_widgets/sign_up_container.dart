import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studym8/index.dart';

class SignUpContainer extends StatefulWidget {
  const SignUpContainer({super.key});

  @override
  State<SignUpContainer> createState() => _SignUpContainerState();
}

class _SignUpContainerState extends State<SignUpContainer> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
            padding: EdgeInsets.only(top: 24, bottom: 34),
            child: Text(
              "Please register for an account",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
            )),
        CustomTextField(
          controller: emailController,
          hintText: 'johndoe@gmail.com',
          label: 'Email Address',
          prefixIconData: CupertinoIcons.person_crop_circle_fill,
          isSecure: false,
        ),
        SizedBox(
          height: 16,
        ),
        CustomTextField(
          controller: passwordController,
          hintText: 'Jo123*&00gts',
          label: 'Password',
          prefixIconData: CupertinoIcons.lock_fill,
          isSecure: true,
        ),
        Padding(
          padding: EdgeInsets.only(top: 8, bottom: 24),
          child: RichText(
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(children: [
              TextSpan(
                text: "*",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: Colors.red,
                    height: 11 / 10),
              ),
              TextSpan(
                text:
                "Password should contain at least 8 characters: 1 lowercase, 1 digit and or a symbol, and 1 uppercase character",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: Colors.black,
                    height: 11 / 10),
              ),
            ]),
          ),
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          ElevatedButtonCustom.purple(title: "Signup", onTab: () {
            Navigator.pushNamed(context, "/${RouteEnum.profile.name}");
          }),
        ]),

      ],
    );
  }
}
