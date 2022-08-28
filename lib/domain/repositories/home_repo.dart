import 'package:maksafy/domain/entities/product_entity.dart';

abstract class HomeRepo {

  List<ProductEntity> getProducts();
}