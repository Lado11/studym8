import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:studym8/index.dart';

class SetUpProfileScreen extends StatefulWidget {
  const SetUpProfileScreen({super.key});

  @override
  State<SetUpProfileScreen> createState() => _SetUpProfileScreenState();
}

class _SetUpProfileScreenState extends State<SetUpProfileScreen> {
  final ImagePicker _picker = ImagePicker();
  XFile? _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 34),
              child: Text("Set up profile",
                  textAlign: TextAlign.center, style: robotoBold24TextStyle)),
          InkWell(
            onTap: getImage,
            child: CircleAvatar(
              radius: 100,
              backgroundImage: _image == null
                  ? const NetworkImage(
                      "https://s3-alpha-sig.figma.com/img/8e60/2e28/c9d3cd162a81d7cdc557bbaf674bcf3e?Expires=1712534400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=juuO1lxP1vJWxFtU-wSgOsr~u8~TN9n~WLNBtrK0UR8XygQdipRux7NDZlUWimXGxKEEdWFtlxZUB2lbTBg-nYQ5sEAFQ250Hj605nMExbtjGN2i-MfvEl71O2SMV0hLS-K8-BPK9dlqSo3xpi08GaHEAX3zGXXqNcBUS-u2tt4epDNjg~WGl054QWXSFP9~cTOvkUgxaYVH8I6AEV84~JwVgyUb5LJkw7sOvhOSfYg25Z5KRty4dziEj8PUJ~vY7uTdx8T5TwAf6j2v1ujBWC4CIpCYpzOCLUL8LL1nJPl9aYYghvFlCpZwK94bmNxKVR-CQZ9dEnZ72Fh4X5bHBw__",
                    )
                  : Image.file(File(_image!.path)).image,
            ),
          ),
          const Padding(
              padding: EdgeInsets.only(top: 48, bottom: 8),
              child: Card(
                  color: whitegary,
                  child: Padding(
                      padding: EdgeInsets.only(top: 11, bottom: 11, left: 24),
                      child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Benjamin"))))),
          Text("*Username should contain numbers", style: roboto16TextStyle),
          const SizedBox(
            height: 48,
          ),
          ElevatedButtonCustom.purple(
              title: "Continue",
              onTab: () {
                Navigator.pushNamed(
                    context, "/${RouteEnum.my_courses_data.name}",arguments: 0);
              })
        ],
      ),
    )));
  }

  Future getImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }
}
