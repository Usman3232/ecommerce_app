import 'package:ecommerce_app/constants/height.dart';


import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrackingCartWidget extends StatelessWidget {
  final String image;
  final String title;
  final String size;
  final String color;
  final double price;
  final int count;
  const TrackingCartWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.size,
    required this.color,
    required this.price,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.widthMultiplier * 2,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: SizeConfig.heightMultiplier * 11.5,
                width: SizeConfig.widthMultiplier * 22,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        image,
                      ),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: SizeConfig.textMultiplier * 2.04,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 0.8,
                    ),
                    Text(
                      'Size:$size}',
                      style: TextStyle(
                        fontSize: SizeConfig.textMultiplier * 1.53,
                        color: const Color(0xffAE9A99),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 0.8,
                    ),
                    Text(
                      'Color:$color}',
                      style: TextStyle(
                        fontSize: SizeConfig.textMultiplier * 1.53,
                        color: const Color(0xffAE9A99),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: AppHeights.height8),
                    Text(
                      '₹$price',
                      style: TextStyle(
                        fontSize: SizeConfig.textMultiplier * 2.29,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Text(
                count.toString(),
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            height: AppHeights.height20,
          )
        ],
      ),
    );
  }
}
