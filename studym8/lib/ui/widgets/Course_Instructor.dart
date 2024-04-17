import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studym8/index.dart';

class CourseInstructor extends StatelessWidget {
  const CourseInstructor({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Course Instructor",
            style: robotoBlackBold16TextStyle,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  maxRadius: 62,
                  backgroundColor: orange,
                  backgroundImage: NetworkImage(
                      "https://s3-alpha-sig.figma.com/img/44ef/4e03/4ab498623dda4a2b1725a05d1d7d0dd0?Expires=1712534400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=OspCixxLiYJBXffndrx1rdLzzQgR~tZBIL~Ot8lhj8mM0WyE9XUOEnv5RRciWOur3p5ldiXgwdzj8aW0kzniA430rCQqg5-0~rzawhfeaHfF6VzSa216lZ0tPWa84ux3v2W6W7EvCX0XUTB~rIT-4PhwnujR-4R-lNvF~5w4KY2o19Jf0pw1mR2h6WZW4KwZ8CMOMwoq5oCvA~Rkek80N2tpAzMaN0sa1R89zAsel-zj~bGqArCJ7Ccqd02AN43u1vHS2CcG~Fj9FudfV7GuP9wTuzpW9clt9S16pjPXqz3VH57RFmyGZqypkfmQH4pxscZmcBjRYb-fNHU078Mokw__"),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text('Esther Howard',
                            style:robotoBlackBold16TextStyle,
                        ),
                         Text('UI/UX Design Expert',
                            style: roboto16TextStyle),
                      ],
                    ),
                  ),
                ),
                const Image(image: AssetImage("assets/right.png")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
