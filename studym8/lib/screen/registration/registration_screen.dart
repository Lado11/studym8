import 'package:flutter/material.dart';
import 'package:studym8/index.dart';
import 'package:flutter/cupertino.dart';


class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
              "Welcome",
              style:semiBold28TextStyle
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButtonCustom.purpleMin(title: "Sign up", onTab: () {}),
                const SizedBox(
                  width: 16,
                ),
                ElevatedButtonCustom.primryMin(title: "Login", onTab: () {
                  Navigator.pushNamed(context, "/login");
                })
              ],
            ),
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
              child: RichText(
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(children: [
                  TextSpan(
                    text: "*",
                    style: robotoRed10TextStyle
                  ),
                  TextSpan(
                    text:
                        "Password should contain at least 8 characters: 1 lowercase, 1 digit and or a symbol, and 1 uppercase character",
                    style: roboto10TextStyle
                  ),
                ]),
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              ElevatedButtonCustom.purple(title: "Signup", onTab: () {}),
            ]),
            Padding(
                padding: EdgeInsets.only(top: 34, bottom: 40),
                child: Row(children: <Widget>[
                  Expanded(
                    child:  Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                        child: const Divider(
                          color: black,
                        )),
                  ),
                  const Text(
                    "or Sign up with",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
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
                        TextSpan(
                          text: "Already have an account?",
                          style:roboto16TextStyle
                        ),
                        const WidgetSpan(
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.0),
                          ),
                        ),
                        TextSpan(
                          text: "Login",
                          style:robotoBlackBold16TextStyle
                        ),
                      ]),
                    )),
              ],
            ),
            RichText(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                  text: "By signing into StudyM8 you agree to our \n",
                  style:roboto16TextStyle
                ),
                TextSpan(
                  text: "Terms of Service",
                  style: roboto60016TextStyle
                ),
                TextSpan(
                  text: " and ",
                  style:roboto60016TextStyle
                ),
                TextSpan(
                  text: "Privacy Policy",
                  style: roboto60016TextStyle
                ),
              ]),
            )
          ],
        ),
      ),
    ));
  }
}
