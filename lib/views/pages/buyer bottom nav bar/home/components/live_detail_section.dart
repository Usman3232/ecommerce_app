import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/images.dart';


import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/livetracking/live_tracking_map.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LiveDetailSection extends StatelessWidget {
  const LiveDetailSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextView(
          text: "Live Tracking",
          color: AppColors.textColor,
          fontWeight: FontWeight.w600,
          size: SizeConfig.textMultiplier * 2.55,
        ),
        SizedBox(
          height: AppHeights.height8,
        ),
        GestureDetector(
          onTap: () {
            Get.to(LiveTrackingMap());
          },
          child: Container(
            height: AppHeights.height160,
            width: SizeConfig.widthMultiplier * 91,
            decoration: BoxDecoration(
                color: const Color(0xffE5EDF4),
                borderRadius:
                    BorderRadius.circular(SizeConfig.widthMultiplier * 2.7)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.timer_outlined,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: SizeConfig.widthMultiplier * 6.4,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextView(
                                    text: "8:50 PM",
                                    size: SizeConfig.textMultiplier * 1.53,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  SizedBox(
                                    height: SizeConfig.heightMultiplier * .5,
                                  ),
                                  TextView(
                                    text: "Delivery Time",
                                    size: SizeConfig.textMultiplier * 1.53,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on_outlined,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: SizeConfig.widthMultiplier * 6.4,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextView(
                                    text: "Gaur City",
                                    size: SizeConfig.textMultiplier * 1.53,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  SizedBox(
                                    height: SizeConfig.heightMultiplier * .5,
                                  ),
                                  TextView(
                                    text: "Delivery Place",
                                    size: SizeConfig.textMultiplier * 1.53,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: AppHeights.height73,
                    width: SizeConfig.widthMultiplier * 88,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage(AppImages.googlemap),
                          fit: BoxFit.cover),
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
