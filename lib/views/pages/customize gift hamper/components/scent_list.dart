import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';

class ScentList extends StatefulWidget {
  const ScentList({Key? key}) : super(key: key);

  @override
  State<ScentList> createState() => _ScentListState();
}

class _ScentListState extends State<ScentList> {
  List<String> scent = ["Crisp and Clean", "Lavender", "Eucalyptus"];
  int isselectedscent = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        TextView(
          text: "Scent",
          size: SizeConfig.textMultiplier * 1.8,
          fontWeight: FontWeight.w600,
          color: Color(0xff2B0806),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 1,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(
            children: [
              ...List.generate(
                  scent.length,
                  (index) => InkWell(
                        onTap: () {
                          setState(() {
                            isselectedscent = index;
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
                                color: isselectedscent == index
                                    ? AppColors.primarylightColor
                                    : Colors.white),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 5),
                              child: TextView(
                                text: scent[index],
                                size: SizeConfig.textMultiplier * 1.6,
                                fontWeight: FontWeight.w400,
                                color: isselectedscent == index
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ))
            ],
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 3,
        ),
      ],
    );
  }
}
