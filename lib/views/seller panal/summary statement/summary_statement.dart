import 'package:flutter/material.dart';
import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/seller%20panal/Dialogues/menstrual_cycle_date_picker.dart';
import 'package:ecommerce_app/views/seller%20panal/seller%20bottom%20nav%20bar/wallet/components/statement_card.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:get/get.dart';

class SummaryStatement extends StatelessWidget {
  const SummaryStatement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            TextView(
              text: "DATE",
              size: SizeConfig.textMultiplier * 1.9,
              fontWeight: FontWeight.w600,
              color: const Color(0xff2B0806),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextView(
                  text: "2ND JUN - 3RD JUL",
                  size: SizeConfig.textMultiplier * 1.9,
                  // size: 16,
                  fontWeight: FontWeight.w700,
                  color: AppColors.primarylightColor,
                ),
                TextButton(
                  onPressed: () {},
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
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Container(
              height: SizeConfig.heightMultiplier * 72,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListView.builder(
                      itemCount: 2,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return StatementCard();
                      },
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 2,
                    ),
                    TextView(
                      text: "SUMMARY",
                      size: 18,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primarylightColor,
                      line: TextDecoration.underline,
                    ),
                    Row(
                      children: [
                        TextView(
                          text: "No of Orders -",
                          // size: 16,
                          size: SizeConfig.textMultiplier * 2,
                          fontWeight: FontWeight.w600,
                        ),
                        SizedBox(
                          width: SizeConfig.widthMultiplier * 1,
                        ),
                        TextView(
                          text: "2",
                          size: SizeConfig.textMultiplier * 3,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primarylightColor,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        TextView(
                          text: "Revenue -",
                          size: SizeConfig.textMultiplier * 2,
                          fontWeight: FontWeight.w600,
                        ),
                        SizedBox(
                          width: SizeConfig.widthMultiplier * 1,
                        ),
                        TextView(
                          text: "₹36,174",
                          size: SizeConfig.textMultiplier * 3,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primarylightColor,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        TextView(
                          text: "Withdrawals -",
                          size: SizeConfig.textMultiplier * 2,
                          fontWeight: FontWeight.w600,
                        ),
                        SizedBox(
                          width: SizeConfig.widthMultiplier * 1,
                        ),
                        TextView(
                          text: "₹36,174",
                          size: SizeConfig.textMultiplier * 3,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primarylightColor,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        TextView(
                          text: "Balance -",
                          size: SizeConfig.textMultiplier * 2,
                          fontWeight: FontWeight.w600,
                        ),
                        SizedBox(
                          width: SizeConfig.widthMultiplier * 1,
                        ),
                        TextView(
                          text: "₹36,174",
                          size: SizeConfig.textMultiplier * 3,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primarylightColor,
                        ),
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
