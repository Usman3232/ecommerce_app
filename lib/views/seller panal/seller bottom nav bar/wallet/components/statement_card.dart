import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';

class StatementCard extends StatelessWidget {
  const StatementCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              TextView(
                text: "Order ID",
                size: SizeConfig.textMultiplier * 2,
                fontWeight: FontWeight.w600,
                color: const Color(0xff2B0806),
              ),
              SizedBox(width: SizeConfig.widthMultiplier * 3),
              TextView(
                text: "4590",
                size: SizeConfig.textMultiplier * 2.2,
                fontWeight: FontWeight.w400,
                color: AppColors.primarylightColor,
              ),
              Spacer(),
              TextView(
                text: "Date",
                size: SizeConfig.textMultiplier * 2,
                fontWeight: FontWeight.w600,
                color: const Color(0xff2B0806),
              ),
              SizedBox(width: SizeConfig.widthMultiplier * 3),
              TextView(
                text: "08.04.22",
                size: SizeConfig.textMultiplier * 2.2,
                fontWeight: FontWeight.w400,
                color: AppColors.primarylightColor,
              ),
            ],
          ),
          SizedBox(height: SizeConfig.heightMultiplier * 1.5),
          TextView(
            text: "Jordan Nike",
            size: SizeConfig.textMultiplier * 2,
            fontWeight: FontWeight.w600,
            color: const Color(0xff2B0806),
          ),
          SizedBox(height: SizeConfig.heightMultiplier * 1),
          TextView(
            text:
                "Tie and die comfortable and long lasting durable sole with 2 year warranty",
            size: SizeConfig.textMultiplier * 1.5,
            fontWeight: FontWeight.w400,
            color: const Color(0xff666666),
          ),
          Row(
            children: [
              Spacer(),
              TextView(
                text: "Amount",
                size: SizeConfig.textMultiplier * 2,
                fontWeight: FontWeight.w600,
                color: const Color(0xff2B0806),
              ),
              SizedBox(width: SizeConfig.widthMultiplier * 3),
              TextView(
                text: "₹36,174",
                size: SizeConfig.textMultiplier * 2.2,
                fontWeight: FontWeight.w400,
                color: AppColors.primarylightColor,
              ),
            ],
          ),
          SizedBox(height: SizeConfig.heightMultiplier * .5),
          Divider(color: AppColors.primarylightColor, thickness: 1),
          SizedBox(height: SizeConfig.heightMultiplier * .5),
        ],
      ),
    );
  }
}
