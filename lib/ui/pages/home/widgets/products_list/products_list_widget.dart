import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maksafy/domain/entities/product_entity.dart';
import 'package:maksafy/ui/pages/home/cubits/home_cubit.dart';
import 'package:maksafy/ui/pages/home/widgets/products_list/index.dart';

class ProductsListWidget extends StatelessWidget {
  const ProductsListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ProductEntity> products =
        context.read<HomeCubit>().getProducts();
    return Flexible(
      child: GridView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) => ProductsListItem(
          productEntity: products[index],
        ),
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
