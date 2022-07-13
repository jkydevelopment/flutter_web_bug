
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home/home_library.dart';

class UnknownPage extends GetView<UnknownController> {

  @override
  Widget build(BuildContext context) {
    return _getBody(context);
  }

  Widget _getBody(BuildContext context) {
    return const Text('404 Not found');
  }
}