import 'package:get/get.dart';
import 'package:mm_it_code_test/app/core/model/CartModel.dart';

class CartMainController extends GetxController {


  RxList<CartModel> mCartList = [
    CartModel(
        id: 1,
        name: "Nike Shoes",
        type: "Shoese",
        price: "3000",
        count: 1,
        image: "assets/images/girl_shoe.png"),
    CartModel(
        id: 2,
        name: "Nike Shoes",
        type: "Shoese",
        price: "3000",
        count: 1,
        image: "assets/images/girl_shoe.png"),
    CartModel(
        id: 3,
        name: "Nike Shoes",
        type: "Shoese",
        price: "3000",
        count: 1,
        image: "assets/images/girl_shoe.png"),
    CartModel(
        id: 4,
        name: "Nike Shoes",
        type: "Shoese",
        price: "3000",
        count: 1,
        image: "assets/images/girl_shoe.png"),
    CartModel(
        id: 5,
        name: "Nike Shoes",
        type: "Shoese",
        price: "3000",
        count: 1,
        image: "assets/images/girl_shoe.png"),
  ].obs;
  RxInt mCount = 1.obs;


  CartMainController() {


  }

  addData(index,CartModel mCart) {

    CartModel oldModel = mCartList[index];
    oldModel.count++;
    mCartList[index]= oldModel;
    print(mCartList[index].count);
    print(index);

  }
  removeData(index,CartModel mCart) {

    CartModel oldModel = mCartList[index];

    if(oldModel.count>0) {

      oldModel.count--;
    }
    mCartList[index]= oldModel;
    print(mCartList[index].count);
    print(index);

  }
}