import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/models/curated_store_models/productmodel.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:ecommerce_app/views/widgets/auth_input_text_field.dart';
import 'package:ecommerce_app/views/widgets/custom_text_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../Dialogues/add_product_dialogue.dart';
import '../Dialogues/edit_product_dialogue.dart';
import 'components/dotted_container_widget.dart';

class CuratedStoreSellerDetail extends StatefulWidget {
  const CuratedStoreSellerDetail({
    Key? key,
  }) : super(key: key);

  @override
  State<CuratedStoreSellerDetail> createState() =>
      _CuratedStoreSellerDetailState();
}

class _CuratedStoreSellerDetailState extends State<CuratedStoreSellerDetail>
    with TickerProviderStateMixin {
  late TabController _tabController;

  List<String> tags = ["CLOTHES", "EDIT"];
  List<String> tabs = ["Popular"];
  int selectedTab = 0;
  List<Widget> tabWidgets = [PopularTab()];

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: SizeConfig.heightMultiplier * 40.9,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/curatedpopular.png'),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: AppHeights.height66,
                    ),
                    GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: SizeConfig.imageSizeMultiplier * 6,
                        )),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: AppHeights.height110,
            child: Image.asset("assets/images/RalphLauren.png"),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: AppHeights.height525,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.widthMultiplier * 4.95,
                          vertical: SizeConfig.widthMultiplier * 6.35),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ...List.generate(
                                  tags.length,
                                  (index) => Container(
                                        decoration: BoxDecoration(
                                            color: AppColors.primarylightColor
                                                .withOpacity(.3),
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        padding: EdgeInsets.symmetric(
                                            horizontal:
                                                SizeConfig.widthMultiplier * 3,
                                            vertical:
                                                SizeConfig.heightMultiplier *
                                                    .6),
                                        margin: EdgeInsets.only(
                                            right:
                                                SizeConfig.widthMultiplier * 2),
                                        child: TextView(
                                          text: tags[index],
                                          fontWeight: FontWeight.w500,
                                          size: SizeConfig.textMultiplier * 1.2,
                                          color: AppColors.primarydarkColor,
                                        ),
                                      ))
                            ],
                          ),
                          SizedBox(
                            height: AppHeights.height10,
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(AppIcons.star),
                                  SizedBox(
                                    width: SizeConfig.widthMultiplier * 1.6,
                                  ),
                                  TextView(
                                    text: "4.5",
                                    fontWeight: FontWeight.w600,
                                    size: SizeConfig.textMultiplier * 1.4,
                                  ),
                                  SizedBox(
                                    width: SizeConfig.widthMultiplier * 1.6,
                                  ),
                                  TextView(
                                    text: "(1045 Reviews)",
                                    fontWeight: FontWeight.w400,
                                    size: SizeConfig.textMultiplier * 1.4,
                                    color: const Color(0xff7E7C7C),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 2,
                          ),
                          TextView(
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui tristique fames dui integer euismod nec gravida mollis consequat.",
                            fontWeight: FontWeight.w400,
                            size: SizeConfig.textMultiplier * 1.65,
                          ),
                          SizedBox(
                            height: AppHeights.height8,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: SizeConfig.widthMultiplier * 3.9),
                      child: Row(
                        children: [
                          ...List.generate(
                              tabs.length,
                              (index) => InkWell(
                                    onTap: () {
                                      selectedTab = index;
                                      setState(() {});
                                    },
                                    child: SizedBox(
                                      height: SizeConfig.heightMultiplier * 3,
                                      width: SizeConfig.widthMultiplier * 25,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            tabs[index],
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: selectedTab == index
                                                    ? AppColors
                                                        .primarylightColor
                                                    : Colors.black,
                                                fontSize:
                                                    SizeConfig.textMultiplier *
                                                        1.6),
                                          ),
                                          AnimatedContainer(
                                            duration:
                                                const Duration(milliseconds: 0),
                                            curve: Curves.bounceInOut,
                                            height:
                                                SizeConfig.heightMultiplier *
                                                    0.5,
                                            width: selectedTab == index
                                                ? SizeConfig.widthMultiplier *
                                                    23
                                                : 0,
                                            color: AppColors.primarylightColor,
                                          )
                                        ],
                                      ),
                                    ),
                                  ))
                        ],
                      ),
                    ),
                    const Divider(
                      height: 0,
                      color: Color(0xffEDEDED),
                    ),
                    SizedBox(
                        width: SizeConfig.widthMultiplier * 100,
                        child: tabWidgets[selectedTab])
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PopularTab extends StatelessWidget {
  PopularTab({Key? key}) : super(key: key);
  TextEditingController priceController = TextEditingController();
  TextEditingController productController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController editpriceController = TextEditingController();
  TextEditingController editproductController = TextEditingController();
  TextEditingController editdiscountController = TextEditingController();
  TextEditingController editdescriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: product_model.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: SizeConfig.heightMultiplier * .09,
          mainAxisSpacing: SizeConfig.heightMultiplier * 2,
          crossAxisCount: 2),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 6.35),
          child: index == 0
              ? GestureDetector(
                  onTap: () {
                    Get.dialog(AddProductDialogue(
                      productController: productController,
                      priceController: priceController,
                      descriptionController: descriptionController,
                      discountController: discountController,
                    ));
                  },
                  child: DottedContainerWidget(
                    text: 'Add New Product',
                  ),
                )
              : ProductCard(
                  image: product_model[index].image,
                  title: product_model[index].title,
                  location: product_model[index].location,
                  reviews: product_model[index].reviews,
                  rating: product_model[index].rating,
                  price: product_model[index].price,
                  onTap: () {
                    Get.dialog(EditProductDialogue(
                      productController: editproductController,
                      priceController: editpriceController,
                      descriptionController: editdescriptionController,
                      discountController: editdiscountController,
                    ));
                  },
                  favourite: product_model[index].favourite),
        );
      },
    );
  }
}

class PriceDiscount extends StatelessWidget {
  const PriceDiscount({
    Key? key,
    required this.priceController,
    required this.discountController,
  }) : super(key: key);

  final TextEditingController priceController;
  final TextEditingController discountController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Price",
              style: TextStyle(
                color: Colors.black,
                fontSize: SizeConfig.textMultiplier * 1.8,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
              ),
            ),
            SizedBox(
              height: AppHeights.height8,
            ),
            SizedBox(
              width: SizeConfig.widthMultiplier * 35,
              child: AuthTextInputField(
                textEditingController: priceController,
                inputType: TextInputType.number,
                hintText: 'price',
                suffixIcon: Container(
                  padding: EdgeInsets.only(top: AppHeights.height14),
                  margin:
                      EdgeInsets.only(left: SizeConfig.widthMultiplier * 6.35),
                  child: Text(
                    '₹',
                    style: TextStyle(
                        fontSize: SizeConfig.textMultiplier * 2.29,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            )
          ],
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Discount",
              style: TextStyle(
                color: Colors.black,
                fontSize: SizeConfig.textMultiplier * 1.8,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
              ),
            ),
            SizedBox(
              height: AppHeights.height8,
            ),
            SizedBox(
              width: SizeConfig.widthMultiplier * 35,
              child: AuthTextInputField(
                textEditingController: discountController,
                inputType: TextInputType.number,
                hintText: 'discount',
                suffixIcon: Container(
                  padding: EdgeInsets.only(top: AppHeights.height14),
                  margin:
                      EdgeInsets.only(left: SizeConfig.widthMultiplier * 6.35),
                  child: Text(
                    '%',
                    style: TextStyle(
                        fontSize: SizeConfig.textMultiplier * 2.29,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}

class CustomColorWidget extends StatelessWidget {
  const CustomColorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Colors",
          style: TextStyle(
            fontSize: SizeConfig.textMultiplier * 1.8,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),
        ),
        SizedBox(
          height: AppHeights.height14,
        ),
        Row(
          children: [
            Container(
              height: AppHeights.height23,
              width: AppWidths.width23,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xff7496C2).withOpacity(0.2),
              ),
              child: const Center(
                  child: Icon(
                Icons.add,
                color: Color(0xff7496C2),
              )),
            ),
            SizedBox(
              width: AppWidths.width15,
            ),
            Text(
              "Add New Color",
              style: TextStyle(
                fontSize: SizeConfig.textMultiplier * 1.53,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
                color: const Color(0xff7496C2),
              ),
            ),
          ],
        ),
        SizedBox(
          height: AppHeights.height10,
        ),
        const ColorTile(color: Color(0xff505050), title: 'Slate'),
        const ColorTile(color: Colors.black, title: 'Black'),
        const ColorTile(color: Colors.purple, title: 'Purple'),
      ],
    );
  }
}

class ColorTile extends StatefulWidget {
  final Color color;
  final String title;
  const ColorTile({
    Key? key,
    required this.color,
    required this.title,
  }) : super(key: key);

  @override
  State<ColorTile> createState() => _ColorTileState();
}

class _ColorTileState extends State<ColorTile> {
  List<String> size = ["S", "M", "L", "XL", "XXL"];

  int selectedSize = 0;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      tilePadding: const EdgeInsets.symmetric(horizontal: 0),
      textColor: Colors.black,
      iconColor: Colors.black,
      leading: Container(
        height: AppHeights.height23,
        width: AppWidths.width23,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: widget.color,
        ),
      ),
      title: Text(
        widget.title,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: SizeConfig.textMultiplier * 1.8,
          letterSpacing: 1,
          color: Colors.black,
        ),
      ),
      children: [
        Text(
          "Select each size to view respective quantities",
          style: TextStyle(
            fontSize: SizeConfig.textMultiplier * 1.28,
            fontWeight: FontWeight.w400,
            letterSpacing: 1,
          ),
        ),
        SizedBox(
          height: AppHeights.height10,
        ),
        Padding(
          padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 6.35),
          child: Row(
            children: [
              ...List.generate(
                  size.length,
                  (index) => InkWell(
                        onTap: () {
                          setState(() {
                            selectedSize = index;
                          });
                        },
                        child: AnimatedContainer(
                          height: AppHeights.height23,
                          width: AppWidths.width23,
                          margin: EdgeInsets.only(
                              right: SizeConfig.heightMultiplier * 1),
                          decoration: selectedSize == index
                              ? BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: const Color(0xff7496C2)),
                                )
                              : null,
                          duration: const Duration(milliseconds: 300),
                          child: Center(
                            child: Text(
                              size[index],
                              style: TextStyle(
                                fontSize: SizeConfig.textMultiplier * 1.28,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      )),
              Container(
                height: AppHeights.height23,
                width: AppWidths.width23,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueGrey.withOpacity(0.2),
                ),
                child: const Center(
                    child: Icon(
                  Icons.add,
                  color: Color(0xff7496C2),
                )),
              ),
            ],
          ),
        ),
        SizedBox(
          height: AppHeights.height8,
        ),
        Padding(
          padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 6.35),
          child: Row(
            children: [
              Text(
                "QTY:",
                style: TextStyle(
                  fontSize: SizeConfig.textMultiplier * 1.28,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier * 1,
              ),
              Container(
                height: AppHeights.height14,
                width: AppWidths.width30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: const Color(0xff7496C2).withOpacity(0.3),
                ),
                child: Center(
                  child: Text(
                    "200",
                    style: TextStyle(
                      fontSize: SizeConfig.textMultiplier * 1.28,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier * 1,
              ),
              CustomTextButton(
                callback: () {},
                title: 'Remove Size',
                textcolour: Colors.redAccent,
                height: AppHeights.height14,
                radius: 10,
                fontSize: 8,
                colour: const Color(0xffFFE2DF),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class SelectedImageWidget extends StatelessWidget {
  const SelectedImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: SizeConfig.widthMultiplier * 0.5),
      height: AppHeights.height96,
      width: AppWidths.width93,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Stack(
        children: [
          Image.asset(
            "assets/images/men.png",
            height: SizeConfig.heightMultiplier * 12,
            width: SizeConfig.widthMultiplier * 24,
            fit: BoxFit.fill,
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
                height: AppHeights.height23,
                width: AppWidths.width23,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.redAccent,
                ),
                child: const Icon(
                  CupertinoIcons.minus,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatefulWidget {
  ProductCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.location,
      required this.reviews,
      required this.rating,
      required this.favourite,
      required this.price,
      required this.onTap})
      : super(key: key);
  final String image, title, location, price;
  final int reviews;
  final double rating;
  bool favourite;
  final VoidCallback onTap;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: AppHeights.height160,
          width: AppWidths.width150,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(widget.image), fit: BoxFit.cover)),
          child: Center(
            child: CustomTextButton(
              title: 'Edit',
              callback: widget.onTap,
              textcolour: Colors.red,
              colour: Colors.white,
              radius: 30,
            ),
          ),
        ),
        SizedBox(
          height: AppHeights.height10,
        ),
        TextView(
          text: widget.title,
          fontWeight: FontWeight.w600,
          size: SizeConfig.textMultiplier * 1.53,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 1,
        ),
        TextView(
          text: widget.location,
          fontWeight: FontWeight.w400,
          size: SizeConfig.textMultiplier * 1.28,
          color: AppColors.primarylightColor,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 1,
        ),
        Row(
          children: [
            SvgPicture.asset(AppIcons.star),
            SizedBox(
              width: SizeConfig.widthMultiplier * 1.6,
            ),
            TextView(
              text: widget.rating.toString(),
              fontWeight: FontWeight.w600,
              size: SizeConfig.textMultiplier * 1.4,
            ),
            SizedBox(
              width: SizeConfig.widthMultiplier * 1.6,
            ),
            TextView(
              text: "(${widget.reviews} Reviews)",
              fontWeight: FontWeight.w400,
              size: SizeConfig.textMultiplier * 1.4,
              color: const Color(0xff7E7C7C),
            ),
          ],
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 1,
        ),
        TextView(
          text: "₹${widget.price}",
          fontWeight: FontWeight.w600,
          size: SizeConfig.textMultiplier * 1.8,
        )
      ],
    );
  }
}
