import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:ecommerce_app/views/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:readmore/readmore.dart';

class ProductCustomization extends StatefulWidget {
  const ProductCustomization(
      {Key? key,
      required this.reviews,
      required this.rating,
      required this.price,
      required this.onpressed})
      : super(key: key);
  final int reviews;
  final double rating;
  final String price;
  final VoidCallback onpressed;

  @override
  State<ProductCustomization> createState() => _ProductCustomizationState();
}

class _ProductCustomizationState extends State<ProductCustomization> {
  List<Color> color = [
    const Color(0xff4D4A4A),
    const Color(0xffFFECC2),
    const Color(0xffFDF8EC),
    const Color(0xffE9F2FF)
  ];
  List<String> size = ["S", "M", "L", "XL", "XXL"];
  int selectedcolor = 0;
  int selectedsize = 0;
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: SizeConfig.heightMultiplier * 4,
          left: SizeConfig.widthMultiplier * 4.25,
          right: SizeConfig.widthMultiplier * 4.25),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                TextView(
                  text: 'Piqué Polo Shirt',
                  fontWeight: FontWeight.w600,
                  size: SizeConfig.textMultiplier * 2.29,
                ),
                const Spacer(),
                TextView(
                  text: "₹" + widget.price,
                  size: SizeConfig.textMultiplier * 2.8,
                  fontWeight: FontWeight.w600,
                )
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * .2,
            ),
            Row(
              children: [
                TextView(
                  text: 'Ralph Lauren',
                  fontWeight: FontWeight.w600,
                  size: SizeConfig.textMultiplier * 1.65,
                  color: const Color(0xff2B0806),
                ),
                const Spacer(),
                TextView(
                  text: "₹3,896",
                  size: SizeConfig.textMultiplier * 1.65,
                  fontWeight: FontWeight.w600,
                  line: TextDecoration.lineThrough,
                  color: const Color(0xffFF4D46),
                )
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1,
            ),
            Row(
              children: [
                SvgPicture.asset(AppIcons.star),
                SizedBox(
                  width: SizeConfig.widthMultiplier * .5,
                ),
                TextView(
                  text: widget.rating.toString(),
                  size: SizeConfig.textMultiplier * 1.4,
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * .5,
                ),
                InkWell(
                  onTap: widget.onpressed,
                  child: TextView(
                    text: "(" + widget.reviews.toString() + " reviews)",
                    size: SizeConfig.textMultiplier * 1.4,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffB7B7B7),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1,
            ),
            TextView(
              text: "Description",
              size: SizeConfig.textMultiplier * 1.8,
              fontWeight: FontWeight.w600,
              color: Color(0xff2B0806),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * .5,
            ),
            ReadMoreText(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tristique amet, maecenas sed vitae pretium. Nulla mattis et tortor, viverra mauris lacus. Tristique amet, maecenas sed vitae pretium. Nulla mattis et tortor, viverra mauris lacusTristique amet, maecenas sed vitae pretium. Tristique amet, maecenas.Tristique amet, maecenas sed vitae pretium. Nulla mattis et tortor, viverra mauris lacus.',
              trimLines: 3,
              style: TextStyle(fontSize: SizeConfig.textMultiplier * 1.5),
              trimMode: TrimMode.Line,
              trimCollapsedText: 'Read more',
              colorClickableText: AppColors.primarydarkColor,
              trimExpandedText: 'Read less',
              moreStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0080FF)),
            ),
            SizedBox(
              height: AppHeights.height8,
            ),
            TextView(
              text: "Color",
              size: SizeConfig.textMultiplier * 1.8,
              fontWeight: FontWeight.w600,
              color: Color(0xff2B0806),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * .5,
            ),
            Row(
              children: [
                ...List.generate(
                    color.length,
                    (index) => InkWell(
                          onTap: () {
                            selectedcolor = index;
                            setState(() {});
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 200),
                              padding: EdgeInsets.all(
                                  selectedcolor == index ? 3 : 0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: selectedcolor == index
                                          ? AppColors.primarylightColor
                                          : Colors.transparent)),
                              child: Container(
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: color[index]),
                              ),
                            ),
                          ),
                        ))
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1.5,
            ),
            TextView(
                text: "Avaliable Size",
                size: SizeConfig.textMultiplier * 1.8,
                fontWeight: FontWeight.w600,
                color: Color(0xff2B0806)),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1.5,
            ),
            Row(
              children: [
                ...List.generate(
                    size.length,
                    (index) => InkWell(
                          onTap: () {
                            setState(() {
                              selectedsize = index;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 7),
                            child: AnimatedContainer(
                                duration: Duration(milliseconds: 200),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: selectedsize == index
                                            ? AppColors.primarylightColor
                                            : Colors.transparent)),
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      selectedsize == index ? 8 : 0),
                                  child: TextView(
                                    text: size[index],
                                    size: SizeConfig.textMultiplier * 1.53,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )),
                          ),
                        ))
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 3.2,
            ),
            Row(
              children: [
                InkWell(
                    onTap: () {
                      setState(() {
                        if (num == 0) {
                          num = num;
                        } else {
                          num = num - 1;
                        }
                      });
                    },
                    child: SvgPicture.asset(AppIcons.minusbluecircle)),
                SizedBox(width: SizeConfig.widthMultiplier * 3),
                TextView(
                  text: num.toString(),
                  size: SizeConfig.textMultiplier * 1.53,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(width: SizeConfig.widthMultiplier * 3),
                InkWell(
                    onTap: () {
                      setState(() {
                        num = num + 1;
                      });
                    },
                    child: SvgPicture.asset(AppIcons.addbluecircle)),
                Spacer(),
                CustomTextButton(
                  callback: () {},
                  colour: AppColors.primarylightColor,
                  title: "Add to Cart",
                  textcolour: Colors.white,
                  height: SizeConfig.heightMultiplier * 6.5,
                  // width: 218,
                  width: SizeConfig.widthMultiplier * 55.5,
                  radius: 42,
                  fontSize: SizeConfig.textMultiplier * 2.04,
                  fontWeight: FontWeight.w500,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
