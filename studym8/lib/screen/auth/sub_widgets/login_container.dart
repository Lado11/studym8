import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studym8/index.dart';


class LoginContainer extends StatefulWidget {
  const LoginContainer({super.key});

  @override
  State<LoginContainer> createState() => _LoginContainerState();
}

class _LoginContainerState extends State<LoginContainer> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.only(top: 24, bottom: 34),
            child: Text(
              "Please login to your account",
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Forgot Password",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color(0xFFF35B04),
                      height: 18 / 16),
                )
              ],
            )),
        Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          ElevatedButtonCustom.purple(
              title: "Login",
              onTab: () {
                Navigator.pushNamed(context, "/${RouteEnum.profile.name}");
              }),
        ]),
      ],
    );
  }
}
