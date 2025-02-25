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
        return MaterialPageRoute(builder: (_) => const HomePage());
      case '/categories':
        return MaterialPageRoute(builder: (_) => const CategoriesPage());
      case '/products':
        return MaterialPageRoute(builder: (_) =>  ProductsPage(
          args: args,
          cart:_cart,
          cartItemChanged: (List<String> updateCart) {
            _cart.clear();
            _cart.addAll(updateCart);
          },
        ));
      case '/orders':
        return MaterialPageRoute(builder: (_) => const MyOrders());
      case '/address':
        return MaterialPageRoute(builder: (_) => const MyAddresses());
      case '/reviews':
        return MaterialPageRoute(builder: (_) => const MyReviews());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.red,
                title: Text('Error'),
              ),
              body: const Center(
                child: Text('oops! page not found'),
              ),
            ));
  }
}
