import 'package:flutter/cupertino.dart';
import 'package:sample_app/screens/address.dart';
import 'package:sample_app/screens/categories.dart';
import 'package:sample_app/screens/home.dart';
import 'package:sample_app/screens/orders.dart';
import 'package:sample_app/screens/products.dart';
import 'package:sample_app/screens/reviews.dart';

class RouteGenerator {
  final List<String> _cart = [];

  Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
      case '/home':
        return CupertinoPageRoute(builder: (_) => const HomePage());
      case '/categories':
        return CupertinoPageRoute(builder: (_) => const CategoriesPage());
      case '/products':
        return CupertinoPageRoute(builder: (_) =>  ProductsPage(
          args: args,
          cart:_cart,
          cartItemChanged: (List<String> updateCart) {
            _cart.clear();
            _cart.addAll(updateCart);
          },
        ));
      case '/orders':
        return CupertinoPageRoute(builder: (_) => const MyOrders());
      case '/address':
        return CupertinoPageRoute(builder: (_) => const MyAddresses());
      case '/reviews':
        return CupertinoPageRoute(builder: (_) => const MyReviews());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return CupertinoPageRoute(
        builder: (_) =>  const CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                backgroundColor: CupertinoColors.systemRed,
                middle: Text('Error'),
              ),
              child:  Center(
                child: Text('oops! page not found'),
              ),
            ));
  }
}
