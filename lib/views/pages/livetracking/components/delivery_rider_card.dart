import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';



import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DliveryRiderCard extends StatelessWidget {
  const DliveryRiderCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.heightMultiplier*30,
      width: SizeConfig.widthMultiplier * 100,
      child: Card(
        elevation: 1,
        color: Colors.white,
        shadowColor: Colors.blueGrey.withOpacity(0.5),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.widthMultiplier * 4.95,
              vertical: SizeConfig.heightMultiplier * 1.6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Delivery Rider’s Details',
                style: TextStyle(
                  color: AppColors.primarydarkColor,
                  fontWeight: FontWeight.w900,
                  fontSize: SizeConfig.textMultiplier * 1.8,
                ),
              ),
              SizedBox(
                height: AppHeights.height8,
              ),
              Text(
                'Joshua Gillani \n+91 888 888 8888',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: SizeConfig.textMultiplier * 1.65,
                ),
              ),
              SizedBox(
                height: AppHeights.height38,
              ),
              Text(
                'Delivery Address',
                style: TextStyle(
                  color: AppColors.primarydarkColor,
                  fontWeight: FontWeight.w900,
                  fontSize: SizeConfig.textMultiplier * 1.8,
                ),
              ),
              SizedBox(
                height: AppHeights.height8,
              ),
              Text(
                '27 Independence Street, Sukamulya, Cikembar, Sukabumi, Jawa Barat 43157',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: SizeConfig.textMultiplier * 1.53,
                ),
              ),
              SizedBox(
                height: AppHeights.height8,
              ),
              Text(
                'Joshua Gillani, +91 888 888 8888',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: SizeConfig.textMultiplier * 1.53,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
