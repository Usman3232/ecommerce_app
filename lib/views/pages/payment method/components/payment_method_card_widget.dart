import 'package:ecommerce_app/constants/height.dart';

import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethodCard extends StatelessWidget {
  final String image;
  final String title;
  final double price;
  final int num;
  const PaymentMethodCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.price,
      required this.num})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: AppWidths.width15),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(SizeConfig.widthMultiplier * 2),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppWidths.width25, vertical: AppHeights.height27),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.textMultiplier * 2.04,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: AppHeights.height27,
              ),
              Row(
                children: [
                  Text(
                    '••••',
                    style: TextStyle(
                        color: Colors.white, fontSize: SizeConfig.textMultiplier * 3.8),
                  ),
                  SizedBox(
                    width: AppWidths.width20,
                  ),
                  Text(
                    '••••',
                    style: TextStyle(
                        color: Colors.white, fontSize: SizeConfig.textMultiplier * 3.8),
                  ),
                  SizedBox(
                    width: AppWidths.width20,
                  ),
                  Text(
                    '••••',
                    style: TextStyle(
                        color: Colors.white, fontSize: SizeConfig.textMultiplier * 3.8),
                  ),
                  SizedBox(
                    width: AppWidths.width20,
                  ),
                  Text(
                    num.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.textMultiplier * 2.04,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                'Balance',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.textMultiplier * 1.53,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 0.5,
              ),
              Text(
                '₹ $price',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.textMultiplier * 2.55,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
