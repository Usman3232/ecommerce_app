import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/CART%20&%20CHECKOUT/all_carts.dart';
import 'package:ecommerce_app/views/pages/store%20policy/store_policy.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:ecommerce_app/views/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class NegativeStatus extends StatelessWidget {
  const NegativeStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.all(SizeConfig.widthMultiplier * 4.75),
          child: InkWell(
              onTap: () {
                Get.back();
              },
              child: SvgPicture.asset(AppIcons.back)),
        ),
        title: TextView(
          text: "Order Status",
          color: AppColors.primarydarkColor,
          size: SizeConfig.textMultiplier * 1.92,
          fontWeight: FontWeight.w600,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
                top: SizeConfig.heightMultiplier * 2,
                right: SizeConfig.widthMultiplier * 4),
            child: InkWell(
              onTap: () {
                Get.to(StorePolicy());
              },
              child: TextView(
                text: "Store Policy",
                color: AppColors.primarydarkColor,
                size: SizeConfig.textMultiplier * 1.8,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 4.55),
        child: Column(
          children: [
            SizedBox(
              height: AppHeights.height57,
            ),
            SvgPicture.asset(AppIcons.crosscircle),
            SizedBox(
              height: AppHeights.height50,
            ),
            TextView(
              text: "Oops!",
              color: AppColors.primarydarkColor,
              fontWeight: FontWeight.w600,
              size: SizeConfig.textMultiplier * 2.55,
            ),
            SizedBox(height: AppHeights.height40),
            TextView(
              text:
                  "Sorry your order has been cancelled because of failure of payment!",
              color: AppColors.iconColor,
              fontWeight: FontWeight.w400,
              size: SizeConfig.textMultiplier * 1.92,
            ),
            SizedBox(
              height: AppHeights.height50,
            ),
            CustomTextButton(
              callback: () {
                Get.to(AllCartsCheckOut());
              },
              colour: AppColors.primarylightColor,
              height: AppHeights.height52,
              width: AppWidths.width284,
              radius: 35,
              title: "Return to Cart",
              fontSize: SizeConfig.textMultiplier * 2.04,
              textcolour: Colors.white,
              fontWeight: FontWeight.w600,
            )
          ],
        ),
      ),
    );
  }
}
