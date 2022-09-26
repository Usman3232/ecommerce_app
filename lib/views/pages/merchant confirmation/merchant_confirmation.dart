import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/images.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MerchantConfirmation extends StatefulWidget {
  const MerchantConfirmation({Key? key}) : super(key: key);

  @override
  State<MerchantConfirmation> createState() => _MerchantConfirmationState();
}

class _MerchantConfirmationState extends State<MerchantConfirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: SizeConfig.imageSizeMultiplier * 5,
              color: Colors.black,
            ),
          ), //size5
          title: Text(
            'Confirmation',
            style: TextStyle(
              color: AppColors.primarydarkColor,
              fontWeight: FontWeight.w600,
              fontSize: SizeConfig.textMultiplier * 1.92,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(
                  top: SizeConfig.heightMultiplier * 2,
                  right: SizeConfig.widthMultiplier * 4),
              child: Text(
                'Store Policy',
                style: TextStyle(
                  color: AppColors.primarylightColor,
                  fontWeight: FontWeight.w400,
                  fontSize: SizeConfig.textMultiplier * 1.8,
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.widthMultiplier * 7.5),
          child: Column(
            children: [
              SizedBox(
                height: AppHeights.height10,
              ),
              Text(
                'Hi there, we have received your order! We’re just checking with the seller and will let you know as soon as the seller confirms! ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: SizeConfig.textMultiplier * 1.92,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(
                height: AppHeights.height45,
              ),
              Image.asset(
                AppImages.timer,
                height: SizeConfig.heightMultiplier * 34,
                width: SizeConfig.widthMultiplier * 67,
              ),
              SizedBox(
                height: AppHeights.height48,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "MerchantConfirmation Time",
                  style: TextStyle(
                    fontSize: SizeConfig.textMultiplier * 1.92,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    color: AppColors.primarylightColor,
                  ),
                ),
              ),
              SizedBox(
                height: AppHeights.height8,
              ),
              Text(
                "02:39",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: SizeConfig.textMultiplier * 2.55,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(
                height: AppHeights.height48,
              ),
              SizedBox(
                height: AppHeights.height50,
                width: AppWidths.width150,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      primary: const Color(0xffFFEDEF),
                    ),
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        color: const Color(0xffFF4C5E),
                        fontSize: SizeConfig.textMultiplier * 1.8,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    )),
              ),
            ],
          ),
        ));
  }
}
