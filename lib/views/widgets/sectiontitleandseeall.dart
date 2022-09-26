import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'TextView.dart';

class SectionTitleAndSeeAll extends StatelessWidget {
  const SectionTitleAndSeeAll({
    Key? key,
    required this.title,
    required this.onpress,
    required this.titlesize,
  }) : super(key: key);
  final String title;
  final double titlesize;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextView(
          text: title,
          size: titlesize,
          fontWeight: FontWeight.w600,
        ),
        InkWell(
          onTap: onpress,
          child: TextView(
            text: "See ALL",
            size: SizeConfig.textMultiplier * 1.53,
            fontWeight: FontWeight.w600,
            color: Colors.black26,
          ),
        )
      ],
    );
  }
}
