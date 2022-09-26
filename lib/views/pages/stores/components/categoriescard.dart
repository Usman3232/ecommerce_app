import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';

import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoriesCard extends StatefulWidget {
  CategoriesCard({
    Key? key,
    required this.image,
    required this.title,
    this.onpressed = false,
  }) : super(key: key);
  final String image, title;
  bool onpressed;

  @override
  State<CategoriesCard> createState() => _CategoriesCardState();
}

class _CategoriesCardState extends State<CategoriesCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              widget.onpressed = true;
            });
          },
          child: Container(
            height: AppHeights.height50,
            width: AppWidths.width50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.onpressed
                    ? AppColors.primarylightColor
                    : Color(0xffF1F4F9)),
            child: Padding(
              padding: EdgeInsets.all(SizeConfig.widthMultiplier * 2.5),
              child: SvgPicture.asset(
                widget.image,
                color: widget.onpressed
                    ? Colors.white
                    : AppColors.primarylightColor,
              ),
            ),
          ),
        ),
        SizedBox(
          height: AppHeights.height10,
        ),
        TextView(
          text: widget.title,
          size: SizeConfig.textMultiplier * 1.65,
          fontWeight: FontWeight.w600,
        )
      ],
    );
  }
}
