import 'package:get/get.dart';
import 'package:mm_it_code_test/app/core/model/CartModel.dart';

class CartMainController extends GetxController {
  RxList<CartModel> mCartList = [
    CartModel(
        id: 1,
        name: "Nike  Girl Shoes",
        type: "Shoese",
        price: "3000",
        count: 1,
        image: "assets/images/girl_shoe.png"),
    CartModel(
        id: 2,
        name: "Nike Man Shoes",
        type: "Rk Shoe",
        price: "9000",
        count: 2,
        image: "assets/images/boy_shoe.png"),
    CartModel(
        id: 3,
        name: "Baggy Bag",
        type: "Baggy Afirca",
        price: "3070",
        count: 1,
        image: "assets/images/baggy.png"),
    CartModel(
        id: 1,
        name: "Test  Girl Shoes",
        type: "Shoese",
        price: "3000",
        count: 1,
        image: "assets/images/girl_shoe.png"),
    CartModel(
        id: 2,
        name: "Testing Shoes",
        type: "Rk Shoe",
        price: "9000",
        count: 2,
        image: "assets/images/boy_shoe.png"),
    CartModel(
        id: 3,
        name: "Testing data Bag",
        type: "Baggy Afirca",
        price: "3070",
        count: 1,
        image: "assets/images/baggy.png"),

  ].obs;
  RxInt mCount = 1.obs;

  CartMainController() {}

  addData(index, CartModel mCart) {
    CartModel oldModel = mCartList[index];
    oldModel.count++;
    mCartList[index] = oldModel;
    print(mCartList[index].count);
    print(index);
  }

  removeData(index, CartModel mCart) {
    CartModel oldModel = mCartList[index];

    if (oldModel.count > 0) {
      oldModel.count--;
    }
    mCartList[index] = oldModel;
    print(mCartList[index].count);
    print(index);
  }
}
