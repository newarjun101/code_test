import 'package:get/get.dart';

class ProductDetailController extends GetxController {
  RxInt currentIndex = 0.obs;
  RxBool isSelected = false.obs;
  RxInt colorSelectedIndex = 0.obs;
  RxInt textSelectedIndex = 0.obs;
  RxInt addToCartItem = 2.obs;

  ProductDetailController() {
    print("Hello World");
  }

  changeCarousel(index) {
    currentIndex.value = index;
  }

  onColorSelected(position) {
    colorSelectedIndex.value = position;
  }
  onTextSelected(position) {
    textSelectedIndex.value = position;
  }

  onAddToCartClick() {

    addToCartItem++;
    print(addToCartItem);
  }


}

// String x = "Stephen Ricard";
// String[] nameparts = x.split(" ");
// String initials = nameparts[0].charAt(0).toUpperCase()+nameparts[1].charAt(0).toUpperCase();