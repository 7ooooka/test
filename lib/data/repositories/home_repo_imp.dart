import 'package:maksafy/data/data_sources/remote/app_remote_data_source.dart';
import 'package:maksafy/domain/entities/product_entity.dart';
import 'package:maksafy/domain/repositories/home_repo.dart';

class HomeRepoImp extends HomeRepo{
  final AppRemoteDataSource appRemoteDataSource;

  HomeRepoImp({required this.appRemoteDataSource});
  @override
  List<ProductEntity> getProducts() {
   return appRemoteDataSource.getProducts();
  }

}