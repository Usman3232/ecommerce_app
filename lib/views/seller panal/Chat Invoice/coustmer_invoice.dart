import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';

import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:ecommerce_app/views/widgets/auth_input_text_field.dart';
import 'package:ecommerce_app/views/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';



import '../../../../utils/size_config.dart';

class CustomerInvoiceSeller extends StatefulWidget {
  const CustomerInvoiceSeller({Key? key}) : super(key: key);

  @override
  State<CustomerInvoiceSeller> createState() => _CustomerInvoiceSellerState();
}

class _CustomerInvoiceSellerState extends State<CustomerInvoiceSeller> {
  bool Status = false;
  bool SaveItemStatus = false;
  TextEditingController productNameController = TextEditingController();
  TextEditingController productDescriptionController = TextEditingController();
  TextEditingController productPriceController = TextEditingController();
  TextEditingController productCostController = TextEditingController();
  TextEditingController idController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        title: Text(
          "Create Your Custom Seller Invoice",
          style: TextStyle(
            fontSize: SizeConfig.textMultiplier * 1.92,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppHeights.height14,
              ),
              Text(
                "Order ID ",
                style: TextStyle(
                  fontSize: SizeConfig.textMultiplier * 1.8,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: AppHeights.height8,
              ),
              SizedBox(
                  width: double.infinity,
                  child: AuthTextInputField(
                    hintText: 'Order ID',
                    isoutline: true,
                    inputType: TextInputType.number,
                    inputAction: TextInputAction.done,
                    textEditingController: idController,
                  )),
              SizedBox(
                height: AppHeights.height25,
              ),
              SaveItemStatus
                  ? AddItemWidget(
                      productPrice: productPriceController.text,
                      productDescription: productDescriptionController.text,
                      productName: productNameController.text,
                      shippingCost: productCostController.text,
                    )
                  : Container(),
              SizedBox(
                height: AppHeights.height10,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Status = true;
                  });
                },
                child: Status == false
                    ? Container(
                        height: AppHeights.height62,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(10)),
                          color: const Color(0xff7496C2).withOpacity(0.3),
                        ),
                        child: Center(
                          child: Text(
                            "Add An Item",
                            style: TextStyle(
                              fontSize: SizeConfig.textMultiplier * 1.53,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1,
                              color: AppColors.primarylightColor,
                            ),
                          ),
                        ),
                      )
                    : Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(10)),
                          color: AppColors.primarylightColor.withOpacity(0.3),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 22.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: AppHeights.height23,
                              ),
                              Text(
                                "Product Name",
                                style: TextStyle(
                                  fontSize: SizeConfig.textMultiplier * 1.8,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1,
                                ),
                              ),
                              SizedBox(
                                height: AppHeights.height8,
                              ),
                              AuthTextInputField(
                                  textEditingController: productNameController,
                                  hintText: 'Product Name',
                                  focusedbordercolor:
                                      AppColors.primarylightColor,
                                  bordercolor: AppColors.primarylightColor),
                              Text(
                                "Description",
                                style: TextStyle(
                                  fontSize: SizeConfig.textMultiplier * 1.8,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1,
                                ),
                              ),
                              SizedBox(
                                height: AppHeights.height10,
                              ),
                              AuthTextInputField(
                                  textEditingController:
                                      productDescriptionController,
                                  hintText: 'Product Description',
                                  maxLine: 4,
                                  focusedbordercolor:
                                      AppColors.primarydarkColor,
                                  bordercolor: AppColors.primarylightColor),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Price",
                                      style: TextStyle(
                                        fontSize: SizeConfig.textMultiplier * 1.8,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                    Text(
                                      "Shipping Cost",
                                      style: TextStyle(
                                        fontSize: SizeConfig.textMultiplier * 1.8,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: AppHeights.height8,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                      width: SizeConfig.widthMultiplier * 30,
                                      child: AuthTextInputField(
                                          textEditingController:
                                              productPriceController,
                                          inputType: TextInputType.number,
                                          hintText: 'Price',
                                          focusedbordercolor:
                                              AppColors.primarylightColor,
                                          bordercolor:
                                              AppColors.primarylightColor)),
                                  SizedBox(
                                      width: SizeConfig.widthMultiplier * 30,
                                      child: AuthTextInputField(
                                          textEditingController:
                                              productCostController,
                                          inputType: TextInputType.number,
                                          inputAction: TextInputAction.done,
                                          hintText: 'Cost',
                                          focusedbordercolor:
                                              AppColors.primarylightColor,
                                          bordercolor:
                                              AppColors.primarylightColor)),
                                ],
                              ),
                              SizedBox(
                                height: AppHeights.height23,
                              ),
                              Container(
                                height: AppHeights.height62,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10)),
                                  color: AppColors.primarylightColor
                                      .withOpacity(0.3),
                                ),
                                child: Center(
                                  child: Text(
                                    "Upload Picture",
                                    style: TextStyle(
                                      fontSize: SizeConfig.textMultiplier * 1.53,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1,
                                      color: AppColors.primarylightColor,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: AppHeights.height23,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomTextButton(
                                    callback: () {
                                      setState(() {
                                        Status = false;
                                      });
                                    },
                                    height: AppHeights.height38,
                                    width: AppWidths.width135,
                                    radius: 100,
                                    title: 'Cancel',
                                    colour: const Color(0xffFF7971),
                                    textcolour: Colors.white,
                                  ),
                                  CustomTextButton(
                                    callback: () {
                                      setState(() {
                                        Status = false;
                                        SaveItemStatus = true;
                                      });
                                    },
                                    height: AppHeights.height38,
                                    width: AppWidths.width135,
                                    radius: 100,
                                    title: 'Save Item',
                                    colour: AppColors.primarydarkColor,
                                    textcolour: Colors.white,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: AppHeights.height23,
                              ),
                            ],
                          ),
                        )),
              ),
              SizedBox(
                height: AppHeights.height14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddItemWidget extends StatelessWidget {
  AddItemWidget(
      {required this.productPrice,
      required this.productDescription,
      required this.productName,
      required this.shippingCost,
      Key? key})
      : super(key: key);
  String productName;
  String productDescription;
  String productPrice;
  String shippingCost;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 4.55),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextView(
                  text: 'Items',
                  size: SizeConfig.textMultiplier * 1.8,
                  fontWeight: FontWeight.w600,
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 1,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextView(
                              text: '${index + 1}',
                              size: SizeConfig.textMultiplier * 1.8,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                            TextView(
                              text: productName,
                              size: SizeConfig.textMultiplier * 1.8,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () {},
                              child: TextView(
                                text: 'Edit',
                                fontWeight: FontWeight.w400,
                                size: SizeConfig.textMultiplier * 1.53,
                                line: TextDecoration.underline,
                                color: Colors.blue,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                size: SizeConfig.widthMultiplier * 6,
                              ),
                            )
                          ],
                        ),
                        TextView(
                          text: productDescription,
                          size: SizeConfig.textMultiplier * 1.8,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextView(
                              text: 'Price',
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              size: SizeConfig.textMultiplier * 1.8,
                            ),
                            SizedBox(
                              width: SizeConfig.widthMultiplier * 2,
                            ),
                            TextView(
                              text: productPrice.toString(),
                              size: SizeConfig.textMultiplier * 1.8,
                              fontWeight: FontWeight.w400,
                            ),
                            SizedBox(
                              width: SizeConfig.widthMultiplier * 0.5,
                            ),
                            TextView(
                              text: '₹',
                              size: SizeConfig.textMultiplier * 2.04,
                              fontWeight: FontWeight.w600,
                            ),
                            Spacer(),
                            TextView(
                              text: 'Shipping Cost',
                              fontWeight: FontWeight.w600,
                              size: SizeConfig.textMultiplier * 1.8,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: SizeConfig.widthMultiplier * 2,
                            ),
                            TextView(
                              text: shippingCost,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              size: SizeConfig.textMultiplier * 1.8,
                            ),
                            SizedBox(
                              width: SizeConfig.widthMultiplier * 0.5,
                            ),
                            TextView(
                              text: '₹',
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              size: SizeConfig.textMultiplier * 2.04,
                            )
                          ],
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 2,
                        ),
                        Container(
                          width: double.infinity,
                          height: AppHeights.height62,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage(
                                      'assets/images/custominvoicecardimage.png'),
                                  fit: BoxFit.cover),
                              borderRadius:
                                  BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 2,
                        ),
                      ],
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }
}
