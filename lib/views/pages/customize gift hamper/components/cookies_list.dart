import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';

class CookiesList extends StatefulWidget {
  const CookiesList({Key? key}) : super(key: key);

  @override
  State<CookiesList> createState() => _CookiesListState();
}

class _CookiesListState extends State<CookiesList> {
  List<String> cookies = ["Chocolate Chip", "Oreos", "Dark "];
  int isselectescookies = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        TextView(
          text: "Cookies ",
          size: SizeConfig.textMultiplier * 1.8,
          fontWeight: FontWeight.w600,
          color: Color(0xff2B0806),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 1,
        ),
        Row(
          children: [
            ...List.generate(
                cookies.length,
                (index) => InkWell(
                      onTap: () {
                        setState(() {
                          isselectescookies = index;
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
                              color: isselectescookies == index
                                  ? AppColors.primarylightColor
                                  : Colors.white),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 5),
                            child: TextView(
                              text: cookies[index],
                              size: SizeConfig.textMultiplier * 1.6,
                              fontWeight: FontWeight.w400,
                              color: isselectescookies == index
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
