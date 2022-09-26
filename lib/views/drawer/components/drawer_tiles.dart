import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';


import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerTiles extends StatelessWidget {
  final String icon;
  final String title;
  VoidCallback onTap;
  DrawerTiles({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          dense: true,
          onTap: onTap,
          minLeadingWidth: AppWidths.width23,
          leading: SvgPicture.asset(
            icon,
            height: AppHeights.height24,
            width: AppWidths.width23,
          ),
          title: Text(
            title,
            style: TextStyle(
              color: AppColors.primarylightColor,
              fontWeight: FontWeight.w600,
              fontSize: SizeConfig.textMultiplier * 1.8,
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: AppColors.primarylightColor,
            size: SizeConfig.imageSizeMultiplier * 4,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 4.55),
          child: const Divider(
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
