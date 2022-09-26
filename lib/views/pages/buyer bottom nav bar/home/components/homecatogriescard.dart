import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';

import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeCategoriesWidget extends StatelessWidget {
  const HomeCategoriesWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.items,
  }) : super(key: key);
  final String image, title;
  final int items;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: AppHeights.height50,
          width: AppWidths.width50,
          decoration: const BoxDecoration(
              color: Color(0xffF1F4F9), shape: BoxShape.circle),
          child: Padding(
            padding: EdgeInsets.all(SizeConfig.widthMultiplier * 3.5),
            child: SvgPicture.asset(image),
          ),
        ),
        SizedBox(
          height: AppHeights.height10,
        ),
        TextView(
          text: title,
          color: AppColors.textColor,
          fontWeight: FontWeight.w600,
          size: SizeConfig.textMultiplier * 1.65,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * .5,
        ),
        TextView(
          text: items.toString() + " Items",
          color: Colors.black26,
          fontWeight: FontWeight.w400,
          size: SizeConfig.textMultiplier * 1.4,
        )
      ],
    );
  }
}
