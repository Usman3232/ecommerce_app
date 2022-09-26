import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';



import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyPoints extends StatelessWidget {
  const MyPoints({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppHeights.height75,
      width: SizeConfig.widthMultiplier * 91,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier * 3.9,
                vertical: SizeConfig.heightMultiplier * 1.6),
            child: Container(
              height: AppHeights.height50,
              width: AppWidths.width50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffFFF7CC),
              ),
              child: Padding(
                padding: EdgeInsets.all(SizeConfig.widthMultiplier * 3),
                child: SvgPicture.asset(AppIcons.coin),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextView(
                text: "My Points",
                fontWeight: FontWeight.w600,
                size: SizeConfig.textMultiplier * 2.17,
              ),
              TextView(
                text: "7800",
                fontWeight: FontWeight.w800,
                color: Colors.black12,
                size: SizeConfig.textMultiplier * 1.92,
              )
            ],
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.all(SizeConfig.widthMultiplier * 6.13),
            child: Container(
              height: SizeConfig.heightMultiplier * 3.4,
              width: AppWidths.width93,
              decoration: BoxDecoration(
                  color: Color(0xffFFF7CC),
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: TextView(
                  text: "ReDEEM",
                  color: Color(0xffF2CF06),
                  fontWeight: FontWeight.w600,
                  size: SizeConfig.textMultiplier * 1.53,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
