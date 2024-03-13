import 'package:animated/screens/home.dart';

import 'package:flutter/material.dart';

import '../constants.dart';

import 'example_first.dart';
import 'flutter_four.dart';
import 'example_two.dart';
import 'opacity.dart';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());

      case fifthScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleEight());
      case sixthScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleSix());
      case seventhScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleSeven());




      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
