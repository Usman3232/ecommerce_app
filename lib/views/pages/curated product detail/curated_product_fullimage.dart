import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FullImage extends StatelessWidget {
  const FullImage({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    final controller = PageController(viewportFraction: 1, keepPage: true);

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: SizeConfig.heightMultiplier * 100,
            width: SizeConfig.widthMultiplier * 100,
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              padEnds: false,
              controller: controller,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.cover)),
                );
              },
            ),
          ),
          Positioned(
            top: SizeConfig.heightMultiplier * 7,
            left: SizeConfig.widthMultiplier * 5,
            child: InkWell(
              onTap: () {
                Get.back();
              },
              child: Container(
                padding: const EdgeInsets.all(9),
                height: SizeConfig.heightMultiplier * 4,
                width: SizeConfig.widthMultiplier * 8,
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                child: SvgPicture.asset(AppIcons.cancel),
              ),
            ),
          ),
          Positioned(
            bottom: SizeConfig.heightMultiplier * 5,
            child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: WormEffect(
                activeDotColor: AppColors.primarylightColor,
                dotHeight: SizeConfig.heightMultiplier * 1.3,
                dotWidth: SizeConfig.widthMultiplier * 2.6,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
