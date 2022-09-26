import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  int selectedfavourite = 0;

  @override
  Widget build(BuildContext context) {
    List<String> favourite = [
      "Stores",
      "Products",
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.all(SizeConfig.widthMultiplier * 3.9),
          child: GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: SvgPicture.asset(AppIcons.drawer)),
        ),
        title: Text(
          "FAVOURITE",
          style: TextStyle(
            fontSize: SizeConfig.textMultiplier * 1.8,
            color: AppColors.primarydarkColor,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),
        ),
        actions: [
          Stack(children: [
            Padding(
              padding: EdgeInsets.only(
                  top: SizeConfig.widthMultiplier * 3.9,
                  right: SizeConfig.widthMultiplier * 3.9),
              child: SvgPicture.asset(AppIcons.cart),
            ),
            Positioned(
              top: SizeConfig.heightMultiplier * 2,
              right: SizeConfig.widthMultiplier * 3.1,
              child: CircleAvatar(
                backgroundColor: AppColors.primarylightColor,
                radius: SizeConfig.widthMultiplier * 1.1,
              ),
            )
          ]),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              ...List.generate(
                  favourite.length,
                  (index) => GestureDetector(
                        onTap: () {
                          selectedfavourite = index;
                          setState(() {});
                        },
                        child: SizedBox(
                          height: SizeConfig.heightMultiplier * 3.5,
                          width: SizeConfig.widthMultiplier * 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                favourite[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: selectedfavourite == index
                                        ? AppColors.primarylightColor
                                        : Colors.black,
                                    fontSize: SizeConfig.textMultiplier * 1.8),
                              ),
                              AnimatedContainer(
                                decoration: BoxDecoration(
                                    color: AppColors.primarylightColor,
                                    borderRadius: BorderRadius.circular(30)),
                                duration: Duration(milliseconds: 200),
                                curve: Curves.bounceInOut,
                                height: SizeConfig.heightMultiplier * 0.4,
                                width: selectedfavourite == index
                                    ? SizeConfig.widthMultiplier * 50
                                    : 0,
                              )
                            ],
                          ),
                        ),
                      ))
            ],
          ),
        ],
      ),
    );
  }
}
