import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/CART%20&%20CHECKOUT/all_carts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class AnytimeAppBar extends StatelessWidget {
  const AnytimeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
            height: SizeConfig.heightMultiplier * 3.8,
            width: SizeConfig.widthMultiplier * 7.7,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.white),
            child: Padding(
              padding: EdgeInsets.all(SizeConfig.widthMultiplier * 1.8),
              child: SvgPicture.asset(
                AppIcons.back,
                color: AppColors.primarylightColor,
              ),
            ),
          ),
        ),
        Spacer(),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: SizeConfig.heightMultiplier * 3.8,
            width: SizeConfig.widthMultiplier * 7.7,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.white),
            child: Icon(
              Icons.favorite_rounded,
              color: AppColors.primarylightColor,
              size: SizeConfig.imageSizeMultiplier * 5.5,
            ),
          ),
        ),
        SizedBox(
          width: SizeConfig.widthMultiplier * 1.7,
        ),
        GestureDetector(
          onTap: () {
            Get.to(AllCartsCheckOut());
          },
          child: Container(
            height: SizeConfig.heightMultiplier * 3.8,
            width: SizeConfig.widthMultiplier * 7.7,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.white),
            child: Padding(
              padding: EdgeInsets.all(SizeConfig.widthMultiplier * 1.6),
              child: Stack(
                children: [
                  SvgPicture.asset(
                    AppIcons.cart,
                    color: AppColors.primarylightColor,
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: CircleAvatar(
                      backgroundColor: AppColors.primarylightColor,
                      radius: SizeConfig.widthMultiplier * 1,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
