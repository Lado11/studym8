import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:studym8/index.dart';


class MediaPage extends StatelessWidget {
  const MediaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                height: 386,
                width: 385,
                image: AssetImage("assets/images.png"),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50, bottom: 17),
                    child: Text(
                      "Let’s get you in",
                      style:roboto24TextStyle
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialButton.google(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: SocialButton.apple(),
                      ),
                      SocialButton.faceBook(),
                    ],
                  ),
                ],
              ),
               Padding(
                padding: EdgeInsets.symmetric(vertical: 24),
                child: Text(
                  "Or",
                  style: roboto24TextStyle,
                ),
              ),
              SizedBox(
                width: 350,
                height: 51,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, "/${RouteEnum.my_courses_primry.name}");
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor:primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      textStyle: robotoWhite16TextStyle),
                  child: Text(
                    'Sign in with password',
                    style: robotoWhite16TextStyle
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: RichText(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      text: 'New to StudyM8 this ?',
                      style: roboto16TextStyle,
                      children:  <TextSpan>[
                        TextSpan(
                          text: 'Create Account',
                            recognizer: TapGestureRecognizer()..onTap=()=>   Navigator.pushNamed(context, "/${RouteEnum.auth.name}"),
                          style:robotoOrange16TextStyle
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
