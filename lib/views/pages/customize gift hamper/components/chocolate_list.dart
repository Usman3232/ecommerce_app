import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';

class ChocolatesList extends StatefulWidget {
  const ChocolatesList({Key? key}) : super(key: key);

  @override
  State<ChocolatesList> createState() => _ChocolatesListState();
}

class _ChocolatesListState extends State<ChocolatesList> {
  List<String> chocolates = ["White", "Dark", "Milk"];
  int isselectedchocolates = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: SizeConfig.heightMultiplier * 1.5,
        ),
        TextView(
          text: "Chocolates",
          size: SizeConfig.textMultiplier * 1.8,
          fontWeight: FontWeight.w600,
          color: const Color(0xff2B0806),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 1,
        ),
        Row(
          children: [
            ...List.generate(
                chocolates.length,
                (index) => InkWell(
                      onTap: () {
                        setState(() {
                          isselectedchocolates = index;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.bounceInOut,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.circular(100),
                              color: isselectedchocolates == index
                                  ? AppColors.primarylightColor
                                  : Colors.white),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 5),
                            child: TextView(
                              text: chocolates[index],
                              size: SizeConfig.textMultiplier * 1.6,
                              fontWeight: FontWeight.w400,
                              color: isselectedchocolates == index
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ))
          ],
        ),
      ],
    );
  }
}
