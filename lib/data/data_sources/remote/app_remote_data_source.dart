import 'package:maksafy/data/models/product_model.dart';
import 'package:maksafy/core/styles/r.dart';

class AppRemoteDataSource{
///region homepage
  List<ProductModel> getProducts()  {

    List<ProductModel> products = [
 ProductModel(description: 'عصير تفاح 250مل',
        calories: '200 Kcal',
        id: 1,
        image: R.drawables.product1,
        price: '255 ريال'
    ),
      ProductModel(description: 'عصير تفاح 250مل',
          calories: '200 Kcal',
          id: 2,
          image: R.drawables.product1,
          price: '255 ريال'
      ),
      ProductModel(description: 'عصير تفاح 250مل',
          calories: '200 Kcal',
          id: 3,
          image: R.drawables.product2,
          price: '255 ريال'
      ),
      ProductModel(description: 'عصير تفاح 250مل',
          calories: '200 Kcal',
          id: 4,
          image: R.drawables.product2,
          price: '255 ريال'
      ),
    ];
    return products;
  }
  ///endregion
}