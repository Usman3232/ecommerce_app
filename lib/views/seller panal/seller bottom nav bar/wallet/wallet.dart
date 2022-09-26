import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/seller%20panal/Dialogues/menstrual_cycle_date_picker.dart';
import 'package:ecommerce_app/views/seller%20panal/seller%20bottom%20nav%20bar/wallet/components/statement_card.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:ecommerce_app/views/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Wallet extends StatelessWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController(viewportFraction: 1, keepPage: true);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Text(""),
        title: TextView(
          text: "Statement & Settlement",
          size: SizeConfig.textMultiplier * 2,
          fontWeight: FontWeight.w600,
          color: const Color(0xff2B0806),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextView(
                  text: "Current Balance",
                  size: SizeConfig.textMultiplier * 1.9,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff2B0806),
                ),
                CustomTextButton(
                  callback: () {},
                  colour: AppColors.primarylightColor,
                  height: 26,
                  width: 83,
                  title: "Withdraw",
                  fontSize: SizeConfig.textMultiplier * 1.6,
                  fontWeight: FontWeight.w500,
                  radius: 45,
                  textcolour: Colors.white,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextView(
                  text: "₹36,174",
                  size: SizeConfig.textMultiplier * 4,
                  fontWeight: FontWeight.w700,
                  color: AppColors.primarylightColor,
                ),
                TextButton(
                  onPressed: () {
                    Get.dialog(SyncDatePicker());
                  },
                  child: TextView(
                    text: "View Full Statement",
                    size: SizeConfig.textMultiplier * 1.5,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primarylightColor,
                    line: TextDecoration.underline,
                  ),
                )
              ],
            ),
            Container(
              height: SizeConfig.heightMultiplier * 67,
              width: SizeConfig.widthMultiplier * 100,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                child: Column(
                  children: [
                    ListView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return StatementCard();
                      },
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(
                              right: SizeConfig.widthMultiplier * 2),
                          padding: EdgeInsets.only(
                              left: SizeConfig.widthMultiplier * 1.2),
                          height: SizeConfig.heightMultiplier * 3,
                          width: SizeConfig.widthMultiplier * 6,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.12),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(6)),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                            size: SizeConfig.imageSizeMultiplier * 4,
                          ),
                        ),
                        SmoothPageIndicator(
                          controller: controller,
                          count: 8,
                          effect: WormEffect(
                            activeDotColor: AppColors.primarylightColor,
                            dotHeight: SizeConfig.heightMultiplier * .7,
                            dotWidth: SizeConfig.widthMultiplier * 1.4,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: SizeConfig.widthMultiplier * 2),
                          padding: EdgeInsets.only(
                              right: SizeConfig.widthMultiplier * 1.2),
                          height: SizeConfig.heightMultiplier * 3,
                          width: SizeConfig.widthMultiplier * 6,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.12),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(6)),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.black,
                            size: SizeConfig.imageSizeMultiplier * 4,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
