import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:studym8/index.dart';


class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 52,
            ),
            Text(
              "Welcome Back",
              style:semiBold28TextStyle
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButtonCustom.primryMin(
                    title: "Sign up",
                    onTab: () {
                      Navigator.pushNamed(context, "/${RouteEnum.login.name}");
                    }),
                const SizedBox(
                  width: 16,
                ),
                ElevatedButtonCustom.purpleMin(title: "Login", onTab: () {}),
              ],
            ),
            const Padding(
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
            const SizedBox(
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
                      style:robotoOrange16TextStyle
                    )
                  ],
                )),
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              ElevatedButtonCustom.purple(title: "Login", onTab: () {
                Navigator.pushNamed(context, "/${RouteEnum.profile.name}");
              }),
            ]),
            Padding(
                padding: const EdgeInsets.only(top: 34, bottom: 40),
                child: Row(children: <Widget>[
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                        child: const Divider(
                          color:black,
                        )),
                  ),
                  Text(
                    "or Login with",
                    style:robotoBlack16TextStyle,
                  ),
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                        child: const Divider(
                          color:black,
                        )),
                  ),
                ])),
            const Padding(
                padding: EdgeInsets.only(bottom: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [SocialMedia()],
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 16, left: 40),
                    child: RichText(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(children: [
                        const TextSpan(
                          text: "New to StudyM8 this?",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: black,
                              height: 18 / 16),
                        ),
                        const WidgetSpan(
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.0),
                          ),
                        ),
                        TextSpan(
                          text: "Create Account",
                          style: roboto16TextStyle
                        ),
                      ]),
                    )),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
