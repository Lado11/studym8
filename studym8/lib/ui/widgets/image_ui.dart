import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:studym8/index.dart';

class ImageUi extends StatefulWidget {
  const ImageUi._(
      {super.key,
      this.color,
      this.fontSize,
      required this.title,
      required this.desc,
      this.info,
      required this.onTab,
      required this.size,
      this.reyting,
      this.mapObj,
      this.image,
      this.thumb = false,
      required this.iconBool});

  factory ImageUi.max({
    required Map<String, dynamic>? mapObj,
    required VoidCallback onTab,
    required double size,
  }) {
    return ImageUi._(
        title: mapObj?["title"],
        image: mapObj?["image"],
        fontSize: 16.0,
        onTab: onTab,
        iconBool: false,
        desc: mapObj?["desc"],
        info: mapObj?["info"],
        reyting: mapObj?["reyting"],
        thumb: false,
        size: size,
        color: Color(0xFFFFFFFF));
  }

  factory ImageUi.min({
    required String title,
    required VoidCallback onTab,
    required String desc,
    required String info,
    required double size,
    required double reyting,
    required String image,
  }) {
    return ImageUi._(
        image: image,
        title: title,
        reyting: reyting,
        thumb: true,
        iconBool: false,
        fontSize: 16.0,
        onTab: onTab,
        desc: desc,
        info: info,
        size: size,
        color: Color(0xFF3D348B));
  }

  final String title;
  final String desc;
  final String? info;
  final VoidCallback onTab;
  final double? fontSize;
  final Color? color;
  final double size;
  final String? image;
  final double? reyting;
  final Map<String, dynamic>? mapObj;
  final bool thumb;
  final bool? iconBool;

  @override
  State<ImageUi> createState() => _ImageUiState();
}

class _ImageUiState extends State<ImageUi> {
  bool iconBoolean = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment:
          widget.thumb ? CrossAxisAlignment.start : CrossAxisAlignment.stretch,
      children: [
        if (widget.image != null)
          widget.thumb
              ? InkWell(
                  onTap: () {
                    setState(() {
                      iconBoolean = !iconBoolean;
                      debugPrint("$iconBoolean");
                    });
                  },
                  child: Stack(
                    children: [
                      Image(image: AssetImage(widget.image!)),
                      Positioned(
                          top: 9,
                          right: 11,
                          child: iconBoolean
                              ? Icon(
                                 CupertinoIcons.heart_fill,
                                  color: white,
                                )
                              : Icon(
                            CupertinoIcons.heart
                                 ,
                                  color: Colors.red,
                                ))
                    ],
                  ),
                )
              : Image(image: AssetImage(widget.image!),fit: BoxFit.fill,),
        !widget.thumb
            ? RichText(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                // textAlign: TextAlign.center,
                text: TextSpan(
                    text: widget.title, style: robotoBlack16TextStyle),
              )
            : Text(widget.title),
        widget.thumb
            ? Text(widget.desc)
            : Text(
                widget.desc,
                style: robotoBlack16TextStyle,
              ),
        !widget.thumb ? Text("") : Text(widget.info!),
        RatingBar.builder(
          initialRating: widget.reyting!,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemSize: widget.size,
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => Icon(
            CupertinoIcons.star,
            color: yellow,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
      ],
    );
  }
}
