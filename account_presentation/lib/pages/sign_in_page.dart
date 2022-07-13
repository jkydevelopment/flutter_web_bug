import 'package:account_presentation/account_presentation_library.dart';
import 'package:core/core_library.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:get/get.dart';

class SignInPage extends GetView<SignInController> {

  @override
  Widget build(BuildContext context) {
    controller.stopOnBreakpoint();
    
    // return Obx(() {
      return Container(
        width: Get.width,
        height: Get.height,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(top: 120.0),
                decoration: const BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment(0.0, 1.0),
                    colors: const <Color>[
                      Color.fromRGBO(0, 0, 0, 0),
                      Color.fromRGBO(0, 0, 0, 0.41),
                    ],
                    tileMode: TileMode.repeated,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: _generateForm(context),
              ),
              // MyCircularLoaderTranslucent(controller.form.isLoading)
            ],
          ),
        ),
      );
    // });
  }

  Widget _generateForm(BuildContext context) {

    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            
            SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }

  
}