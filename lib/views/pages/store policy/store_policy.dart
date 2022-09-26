import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class StorePolicy extends StatefulWidget {
  const StorePolicy({Key? key}) : super(key: key);

  @override
  State<StorePolicy> createState() => _StorePolicyState();
}

class _StorePolicyState extends State<StorePolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: SizeConfig.heightMultiplier * 40.9,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/curatedpopular.png'),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: AppHeights.height66,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            height: SizeConfig.heightMultiplier * 3.8,
                            width: SizeConfig.widthMultiplier * 7.7,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: Padding(
                              padding: EdgeInsets.all(
                                  SizeConfig.widthMultiplier * 1.8),
                              child: SvgPicture.asset(
                                AppIcons.back,
                                color: AppColors.primarylightColor,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: SizeConfig.heightMultiplier * 3.8,
                          width: SizeConfig.widthMultiplier * 7.7,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Padding(
                            padding: EdgeInsets.all(
                                SizeConfig.widthMultiplier * 1.8),
                            child: SvgPicture.asset(
                              AppIcons.message,
                              color: AppColors.primarylightColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: SizeConfig.widthMultiplier * 1.7,
                        ),
                        Container(
                          height: SizeConfig.heightMultiplier * 3.8,
                          width: SizeConfig.widthMultiplier * 7.7,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Padding(
                            padding: EdgeInsets.all(
                                SizeConfig.widthMultiplier * 1.6),
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
                                    backgroundColor:
                                        AppColors.primarylightColor,
                                    radius: SizeConfig.widthMultiplier * 1,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: AppHeights.height110,
            child: Image.asset("assets/images/RalphLauren.png"),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: AppHeights.height525,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 4.25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 4.3,
                    ),
                    TextView(
                      text: "Ralph Lauren",
                      size: SizeConfig.textMultiplier * 2.55,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(
                      height: AppHeights.height10,
                    ),
                    TextView(
                      text: "Store Policy",
                      size: SizeConfig.textMultiplier * 2.04,
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(
                      height: AppHeights.height37,
                    ),
                    Container(
                      width: AppWidths.width325,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        border: Border.all(
                          color: Color(0xffCFCFCF),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(SizeConfig.widthMultiplier * 3),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tristique amet, maecenas sed vitae pretium. Nulla mattis et tortor, viverra mauris lacus. Tristique amet, maecenas sed vitae pretium. Nulla mattis et tortor",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.textMultiplier * 1.28,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
