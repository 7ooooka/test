import 'package:maksafy/domain/entities/product_entity.dart';
import 'package:maksafy/domain/repositories/home_repo.dart';

class HomeUc {
  final HomeRepo homeRepo;

  HomeUc({required this.homeRepo});

  List<ProductEntity> getProducts() {
    return homeRepo.getProducts();
  }
}
