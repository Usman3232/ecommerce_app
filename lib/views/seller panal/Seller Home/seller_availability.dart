import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';


import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';


import '../../widgets/TextView.dart';


class SellerAvailability extends StatefulWidget {
  const SellerAvailability({Key? key}) : super(key: key);

  @override
  State<SellerAvailability> createState() => _SellerAvailabilityState();
}

class _SellerAvailabilityState extends State<SellerAvailability> {
  bool value=false;
  bool isStatus=false;
  bool isStatus1=false;
  int val=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.menu,color: Colors.black,size: SizeConfig.imageSizeMultiplier*5,),
        title:  Text("VENTI - Seller AVAILABILITY",
          style: TextStyle(
            color: AppColors.primarydarkColor,
            fontSize: SizeConfig.textMultiplier * 1.8,
            fontWeight: FontWeight.w600,
            letterSpacing: 2,
          ),
        ),
        actions: [
          SvgPicture.asset(AppIcons.message),
          SizedBox(
            width: AppWidths.width15,
          ),
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 3.9),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: AppHeights.height10,
            ),
            Row(
              children: [
                SizedBox(
                  width: SizeConfig.widthMultiplier*68,
                  child: Text("Turn Your Shop On and Make Your Sales ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: SizeConfig.textMultiplier * 2.04,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                const Spacer(),
                FlutterSwitch(
                  switchBorder: Border.all(color:AppColors.primarydarkColor),
                  activeColor: Colors.white,
                  inactiveColor: Colors.white,
                  activeToggleColor: AppColors.primarylightColor,
                  inactiveToggleColor: AppColors.primarylightColor,
                  width: AppWidths.width30,
                  height: AppHeights.height18,
                  toggleSize:12,
                  padding: 2,
                  value: isStatus1,
                  borderRadius: 30.0,
                  onToggle: (value) {
                    setState(() {
                      isStatus1 = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: AppHeights.height40,
            ),
            Text("Set your availabilty schedule",
              style: TextStyle(
                color: Colors.black,
                fontSize: SizeConfig.textMultiplier * 2.04,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
              ),
            ),
            SizedBox(
              height: AppHeights.height18,
            ),
            Container(
              height: AppHeights.height235,
              color: Colors.blueGrey,
            ),
            SizedBox(
              height: AppHeights.height45,
            ),
            Row(
              children: [
                Checkbox(value: value,
                    activeColor: AppColors.primarylightColor,
                    onChanged:( val) {
                      setState(() {
                        value = val!;
                      });
                    }),
                Text("Set this store timing availabilty for everyday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.textMultiplier * 1.4,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: AppHeights.height66,
            ),
            Row(
              children: [
                Text("Turn Your Distance Settings",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.textMultiplier * 1.92,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                ),
               const Spacer(),
                FlutterSwitch(
                  switchBorder: Border.all(color:AppColors.primarydarkColor),
                  activeColor: Colors.white,
                  inactiveColor: Colors.white,
                  activeToggleColor: AppColors.primarylightColor,
                  inactiveToggleColor:AppColors.primarylightColor,
                  width: AppWidths.width30,
                  height: AppHeights.height18,
                  toggleSize:12,
                  padding: 2,
                  value: isStatus,
                  borderRadius: 30.0,
                  onToggle: (value) {
                    setState(() {
                      isStatus = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: AppHeights.height30,
            ),
            Row(
              children: [
                Text("Distance (Radius)",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.textMultiplier * 2.04,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
                Container(
                  height: AppHeights.height14,
                  width: AppWidths.width15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xff607FA9).withOpacity(0.5),
                  ),
                  child: const Center(child: Text("i")),
                ),
                const Spacer(),
                InkWell(
                    onTap: () {
                      setState(() {
                        if (val == 0) {
                          val = val;
                        } else {
                          val = val - 1;
                        }
                      });
                    },
                    child: SvgPicture.asset(
                        AppIcons.minuscircle)),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.heightMultiplier * 1),
                  child: TextView(
                    text:val
                        .toString(),
                    size: SizeConfig.textMultiplier * 1.8,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                InkWell(
                    onTap: () {
                      setState(() {
                        val = val + 1;
                      });
                    },
                    child: SvgPicture.asset(
                        AppIcons.addcircle))
              ],
            )
          ],
        ),
      ),
    );
  }
}