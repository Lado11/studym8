import 'package:flutter/material.dart';
import 'package:studym8/index.dart';


class ViewInstance extends StatelessWidget {
  const ViewInstance({super.key, required this.data});
  final OnbordingData data;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Text(data.title,
                style: semiBold32TextStyle),
          ),
           Image(image: AssetImage("${data.image}"),width: 382,height: 382,),
          Text(
            data.desc,
            style:semiBold24TextStyle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
      ),
    );
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
