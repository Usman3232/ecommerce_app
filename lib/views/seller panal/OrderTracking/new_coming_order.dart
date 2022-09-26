import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/images.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'out_for_delivery.dart';

class NewInComingOrder extends StatefulWidget {
  const NewInComingOrder({Key? key}) : super(key: key);

  @override
  State<NewInComingOrder> createState() => _NewInComingOrderState();
}

class _NewInComingOrderState extends State<NewInComingOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffFAFAFA),
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
          size: SizeConfig.imageSizeMultiplier * 6,
        ),
        title: Text(
          "New Incoming Order",
          style: TextStyle(
            color: Colors.black,
            fontSize: SizeConfig.textMultiplier * 1.92,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.filter_alt_outlined,
              size: 20,
              color: AppColors.primarydarkColor,
            ),
          ),
          SvgPicture.asset(
            AppIcons.message,
            color: Colors.black,
          ),
          SizedBox(
            width: SizeConfig.widthMultiplier * 2,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.widthMultiplier * 6.5,
            vertical: SizeConfig.heightMultiplier * 5.5),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Confirmation Time Left',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: SizeConfig.textMultiplier * 1.8,
                    color: AppColors.primarylightColor),
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Container(
              height: SizeConfig.heightMultiplier * 13.5,
              width: SizeConfig.widthMultiplier * 30,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppImages.confirmationtime),
                      fit: BoxFit.fill)),
              child: Center(
                child: Text(
                  '02:38',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: SizeConfig.textMultiplier * 2.6),
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 13,
            ),
            Container(
              height: SizeConfig.widthMultiplier * 40,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                color: const Color(0xff7496C2).withOpacity(0.3),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Delivery Address",
                      style: TextStyle(
                        color: const Color(0xff7496C2),
                        fontSize: SizeConfig.textMultiplier * 1.95,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      "27 Independence Street, Sukamulya, Cikembar, Sukabumi, Jawa Barat 43157",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: SizeConfig.textMultiplier * 1.8,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "Ch Hassaan Saleem, +91 888 888 8888",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: SizeConfig.textMultiplier * 1.8,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 3,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Order Details',
                  style: TextStyle(
                      color: AppColors.primarylightColor,
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.textMultiplier * 2),
                )),
            SizedBox(
              height: SizeConfig.heightMultiplier * 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextButton(
                  callback: () {
                    Get.to(const OutForDelivery());
                  },
                  title: 'ACCEPT',
                  textcolour: Colors.white,
                  colour: const Color(0xff4CD964),
                  radius: 100,
                  height: SizeConfig.heightMultiplier * 6.3,
                  fontWeight: FontWeight.w600,
                  width: SizeConfig.widthMultiplier * 40,
                ),
                CustomTextButton(
                  callback: () {},
                  title: 'REJECT',
                  textcolour: Colors.redAccent,
                  fontWeight: FontWeight.w600,
                  colour: const Color(0xffFFEDEF),
                  radius: 100,
                  height: SizeConfig.heightMultiplier * 6.3,
                  width: SizeConfig.widthMultiplier * 40,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
