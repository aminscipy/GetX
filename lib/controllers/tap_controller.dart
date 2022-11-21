import 'package:get/get.dart';

class TapController extends GetxController {
  var x = 0;
  var y = 0.obs;
  var z = 0.obs;
  List total = [].obs;
  increaseX() {
    x++;
    update();
  }

  decreaseX() {
    x--;
    update();
  }

  increaseY() {
    y++;
  }

  decreaseY() {
    y--;
  }

  totalXY() {
    z.value = x + y.value;
  }

  add() {
    total.add(z.value);
  }
}
