import 'dart:async';

import 'package:get/get.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class HomeController extends GetxController{
  @override
  void onInit(){
    super.onInit();
    btnController1.stateStream.listen((value) {
      print(value);

    });
  }
  final RoundedLoadingButtonController btnController1 =
  RoundedLoadingButtonController();

  final RoundedLoadingButtonController btnController2 =
  RoundedLoadingButtonController();

  void doSomething(RoundedLoadingButtonController controller) async {
    Timer(Duration(seconds: 10), () {
      controller.success();
    });}

}