import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:studym8/index.dart';


class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    bool isSignUp = index == 0;
    final welcome = isSignUp ? "Welcome" : "Welcome Back!";
    final richInfo =
        isSignUp ? "Already have an account?" : "New to StudyM8 this?";
    final richActionTitle = isSignUp ? "Login" : "Create account";

    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 52, bottom: 32),
                      child: Text(welcome, style: semiBold28TextStyle)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButtonCustom.min(
                          title: "Sign up",
                          selected: isSignUp,
                          onTab: () {
                            setState(() {
                              index = 0;
                            });
                          }),
                      SizedBox(
                        width: 16,
                      ),
                      ElevatedButtonCustom.min(
                          title: "Login",
                          selected: !isSignUp,
                          onTab: () {
                            // Navigator.pushNamed(context, "/login");
                            setState(() {
                              index = 1;
                            });
                          })
                    ],
                  ),
                  IndexedStack(
                    index: index,
                    children: [
                      SignUpContainer(),
                      LoginContainer(),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 34, bottom: 40),
                      child: Row(children: <Widget>[
                        Expanded(
                          child: new Container(
                              margin: const EdgeInsets.only(
                                  left: 10.0, right: 20.0),
                              child: Divider(
                                color: Colors.black,
                              )),
                        ),
                        Text(
                          isSignUp ? "or Sign up with" : "or Login with",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Expanded(
                          child: new Container(
                              margin: const EdgeInsets.only(
                                  left: 20.0, right: 10.0),
                              child: Divider(
                                color: Colors.black,
                              )),
                        ),
                      ])),
                  Padding(
                      padding: EdgeInsets.only(bottom: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [SocialMedia()],
                      )),
                  buildRichText(
                      info: richInfo,
                      actionTitle: richActionTitle,
                      action: () {
                        setState(() {
                          index = isSignUp ? 1 : 0;
                        });
                      }),
                  if (isSignUp)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                              text:
                                  "By signing into StudyM8 you agree to our \n",
                              style: roboto16TextStyle),
                          TextSpan(
                              text: "Terms of Service",
                              style: robotoOrange16600TextStyle),
                          TextSpan(
                            text: " and ",
                            style: roboto60016TextStyle,
                          ),
                          TextSpan(
                              text: "Privacy Policy",
                              style: robotoOrange16600TextStyle),
                        ]),
                      ),
                    )
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }

  Widget buildRichText(
          {required String info,
          required String actionTitle,
          VoidCallback? action}) =>
      RichText(
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        text: TextSpan(children: [
          TextSpan(
            text: info,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.black,
                height: 18 / 16),
          ),
          WidgetSpan(
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
            ),
          ),
          TextSpan(
            text: actionTitle,
            recognizer: TapGestureRecognizer()..onTap = action,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Color(0xFFF35B04),
                height: 18 / 16),
          ),
        ]),
      );
}
