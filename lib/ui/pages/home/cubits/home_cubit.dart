import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maksafy/domain/entities/product_entity.dart';
import 'package:maksafy/domain/usecases/home_uc.dart';

class HomeCubit extends Cubit<void> {
  HomeCubit({
    required this.homeUc,
  }) : super(null);

  final HomeUc homeUc;

  List<ProductEntity> getProducts() {
    return homeUc.getProducts();
  }
}
