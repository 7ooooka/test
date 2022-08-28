import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maksafy/domain/entities/product_entity.dart';
import 'package:maksafy/ui/pages/home/widgets/products_list/index.dart';

class ProductsListItem extends StatelessWidget {
  const ProductsListItem({Key? key, required this.productEntity})
      : super(key: key);
  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10.r),
        ),
      ),
      child: Column(
        children: [
          ProductItemHeader(
            productCalories: productEntity.calories,
          ),
          Expanded(
            child: Image.asset(
              productEntity.image,

            ),
          ),
          Text(productEntity.description),
          ProductItemFooter(productPrice: productEntity.price,)
        ],
      ),
    );
  }
}
