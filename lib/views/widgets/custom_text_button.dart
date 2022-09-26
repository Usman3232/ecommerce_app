import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  String title;
  final double? height;
  final double? width;
  final Color? colour, textcolour;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? radius;
  VoidCallback callback;

  CustomTextButton(
      {Key? key,
      this.title = "",
      required this.callback,
      this.colour,
      this.textcolour = Colors.white,
      this.height,
      this.width,
      this.fontSize,
      this.radius,
      this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: height,
      minWidth: width,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius!),
      ),
      color: colour,
      onPressed: () {
        callback();
      },
      child: Text(
        title,
        style: TextStyle(
            fontSize: fontSize, color: textcolour, fontWeight: fontWeight),
      ),
    );
  }
}
