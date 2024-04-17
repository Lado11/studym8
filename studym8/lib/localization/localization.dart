import 'app_string.dart';

const String Study_Title = "StudyM8";
const String Lets_Go ="Let’s get you in";
const String Or ="Or";
const String Sign_in ="Sign in with password";
const String New_Study ="New to StudyM8 this ?";
const String New_Account ="Create Account";
const String Rich_Text = "Design principles are a set of guidelines that help designers create effective and aesthetically pleasing designs. These principles can be applied to various types of designs, including graphic design, web design, and UX design, to create designs that are visually appealing, functional, and easy to........";

const String papary = "Papary";

const String onbordingFirstTitle = "Explore thousands of latest news";
const String onbordingTitleSecond = "Find news with better filters.";
const String onbordingTitleThird = "Bookmark, share & comments on news";

const String onbordingDescFirst =
    "Mauris urna velit, congue et aliquam non, imperdiet id massa. Etiam commodo interdum eros, eget hendrerit ex rhoncus in.";
const String onbordingDescSecond =
    "In sed massa sit amet nulla fringilla ultrices. Quisque vehicula gravida diam nec sodales. Donec pretium sem a justo egestas tincidunt.";
const String onbordingDescThird =
    "Quisque vitae finibus metus. Sed non placerat neque. Phasellus erat ante, auctor vel scelerisque vitae, facilisis sed nisi. ";

const String buttonSkip = "Skip";
const String buttonNext = "Next";
const String regButton = "Register now";
const String loginButton = "Login";


const String loginAppBar = "Create account";
const String loginTitleOne = "Welcome back!";
const String email = "Email";
const String password = "Password";
const String resendCode = "Resend Code";

extension StrinsLocalization on String {
  String get localized {
    return localizations.containsKey(this) ? localizations[this]! : this;
  }
}
