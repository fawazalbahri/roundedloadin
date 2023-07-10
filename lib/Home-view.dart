import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'Home-controller.dart';

class HomeView extends GetView<HomeController>{
  @override
  Widget build(BuildContext context){
    HomeController controller=Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: Text('ROUNDED'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundedLoadingButton(
              successIcon: Icons.cloud,
              failedIcon: Icons.cottage,
              child: Text('Tap me!', style: TextStyle(color: Colors.white)),
              controller:controller.btnController1,
              onPressed: () =>controller.doSomething(controller.btnController1),
            ),
            SizedBox(
              height: 50,
            ),
            RoundedLoadingButton(
              color: Colors.amber,
              successColor: Colors.amber,
              controller: controller.btnController2,
              onPressed: () => controller.doSomething(controller.btnController2),
              valueColor: Colors.black,
              borderRadius: 10,
              child: Text('''
Tap me i have a huge text''', style: TextStyle(color: Colors.white)),
            ),
            SizedBox(
              height: 50,
            ),
            OutlinedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
                ),
                onPressed: () {
                  controller.btnController1.reset();
                  controller.btnController2.reset();
                },
                child: Text('Reset')),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
              ),
              onPressed: () {
                controller.btnController1.error();
                controller.btnController2.error();
              },
              child: Text('Error'),
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
              ),
              onPressed: () {
                // _btnController1.success();
                // _btnController2.success();
                // _btnController1
                print(controller.btnController1.currentState);
              },
              child: Text('Success'),
            )
          ],
        ),

      ),);

  }



}
