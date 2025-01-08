import 'package:flutter/material.dart';
import '../screens/welcome_screen.dart';
import '../screens/second_screen.dart';
import '../screens/iframe_screen.dart';
import '../screens/product_list_screen.dart';

class Routes {
  static const String welcome = '/';
  static const String second = '/second';
  static const String iframe = '/iframe';
  static const String productList = '/product-list';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcome:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case second:
        return MaterialPageRoute(builder: (_) => const SecondScreen());
      case iframe:
        return MaterialPageRoute(builder: (_) => const IframeScreen());
      case productList:
        return MaterialPageRoute(builder: (_) => ProductListScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
