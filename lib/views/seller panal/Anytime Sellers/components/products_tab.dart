import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../models/curated_store_models/productmodel.dart';
import '../../../../../utils/size_config.dart';
import '../../Curated Store Seller/components/dotted_container_widget.dart';
import '../../Curated Store Seller/curated_store_seller.dart';
import '../../Dialogues/add_product_dialogue.dart';
import '../../Dialogues/edit_product_dialogue.dart';

class ProductsTab extends StatelessWidget {
  ProductsTab({Key? key}) : super(key: key);
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
          childAspectRatio: SizeConfig.heightMultiplier * .08,
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
