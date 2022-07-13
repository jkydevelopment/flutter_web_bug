import 'package:example_bug_web/example_app.dart';
import 'package:core/core_library.dart';
import 'package:flutter/material.dart';

void main() async {

  BuildEnvironment.init(flavor: BuildFlavor.prod);
  assert(env != null);
  
  await ExampleAppInit.init();
  runApp(ExampleApp());
}
