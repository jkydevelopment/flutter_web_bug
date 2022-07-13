
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home/home_library.dart';

class WelcomePage extends GetView<WelcomeController> {

  @override
  Widget build(BuildContext context) {
      return _getBody(context);
  }

  Widget _getBody(BuildContext context) {

    return Center(
      child: Text('Welcome Page')
    );
  }
}