import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class AddNewCardsCarouselWidget extends StatelessWidget {
  final String image;
  final int number;
  final String title;
  const AddNewCardsCarouselWidget({
    Key? key,
    required this.image,
    required this.number,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 6.35),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                offset: const Offset(0, 4),
                blurRadius: 2,
                spreadRadius: 3),
          ],
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 6.35),
          child: Column(
            children: [
              SizedBox(
                height: AppHeights.height88,
              ),
              Row(
                children: [
                  Text(
                    '•••• ',
                    style: TextStyle(
                        fontSize: SizeConfig.textMultiplier * 2.85,
                        color: Colors.white),
                  ),
                  Text(
                    '•••• ',
                    style: TextStyle(
                        fontSize: SizeConfig.textMultiplier * 2.85,
                        color: Colors.white),
                  ),
                  Text(
                    '•••• ',
                    style: TextStyle(
                        fontSize: SizeConfig.textMultiplier * 2.85,
                        color: Colors.white),
                  ),
                  Text(
                    '•••• ',
                    style: TextStyle(
                        fontSize: SizeConfig.textMultiplier * 2.85,
                        color: Colors.white),
                  ),
                  Text(
                    ' $number',
                    style: TextStyle(
                        fontSize: SizeConfig.textMultiplier * 1.53,
                        color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: AppHeights.height25,
              ),
              Row(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: SizeConfig.textMultiplier * 1.53,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: AppWidths.width30,
                  ),
                  Text(
                    '12/21',
                    style: TextStyle(
                        fontSize: SizeConfig.textMultiplier * 1.53,
                        color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
