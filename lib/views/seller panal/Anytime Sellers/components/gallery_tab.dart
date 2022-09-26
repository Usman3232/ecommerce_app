import 'package:flutter/material.dart';

import '../../../../../constants/height.dart';

import '../../../../../constants/width.dart';
import '../../../../../models/curated_store_models/productmodel.dart';
import '../../../../../utils/size_config.dart';
import '../../Curated Store Seller/components/dotted_container_widget.dart';
import '../../Curated Store Seller/curated_store_seller.dart';
class GalleryTab extends StatelessWidget {
  const GalleryTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: product_model.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: SizeConfig.heightMultiplier * .10,
          mainAxisSpacing: SizeConfig.heightMultiplier * 2,
          crossAxisCount: 2),
      itemBuilder: (context, index) {
        return index == 0
            ? Padding(
          padding:  EdgeInsets.only(left: SizeConfig.heightMultiplier * 1,right: SizeConfig.heightMultiplier * 1),
          child: GestureDetector(
            onTap: () {},
            child:   DottedContainerWidget(text: 'Add Pictures',icon: false,),
          ),
        ) :  Container(
          margin:  EdgeInsets.only(
              left: SizeConfig.heightMultiplier * 1,right: SizeConfig.heightMultiplier * 1),
          height: AppHeights.height151,
          width: AppWidths.width150,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                  image: AssetImage('assets/images/product.png'), fit: BoxFit.fill)),
        );
      },
    );
  }
}
