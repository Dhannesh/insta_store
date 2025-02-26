import 'package:flutter/cupertino.dart';
import 'package:sample_app/screens/product_item.dart';

import '../data/categories_products_util.dart';
import 'cart.dart';

class ProductsPage extends StatefulWidget {
  final dynamic args;
  final List<String> cart;
  final ValueChanged<List<String>> cartItemChanged;
  const ProductsPage(
      {super.key,
      required this.args,
      required this.cart,
      required this.cartItemChanged});

  @override
  ProductsPageState createState() => ProductsPageState();
}

class ProductsPageState extends State<ProductsPage> {
  final List<String> _cartCopy = [];
  @override
  void initState() {
    super.initState();
    _cartCopy.clear();
    _cartCopy.addAll(widget.cart);
  }

  @override
  Widget build(BuildContext context) {
    var category = widget.args['category'] as String;
    var products = productsMap[category] ?? [];

    return SafeArea(
        child: CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        trailing: Align(
          alignment: const Alignment(1, 0),
          child: CupertinoButton(
            child: Stack(alignment: Alignment.topCenter, children: <Widget>[
              const Icon(CupertinoIcons.cart, size: 25),
              if (_cartCopy.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    _cartCopy.length.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                )
            ]),
            onPressed: () {
              if (_cartCopy.isNotEmpty) {
                Navigator.of(context).push(CupertinoPageRoute(
                    builder: (context) => CartPage(
                        cart: _cartCopy,
                        cartItemChanged: (List<String> cart) {
                          setState(() {
                            _cartCopy.clear();
                            _cartCopy.addAll(cart);
                            debugPrint("Products state is updataed from cart");
                            widget.cartItemChanged(_cartCopy);
                          });
                        })));
              }
            },
          ),
        ),
      ),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: products.length,
          itemBuilder: (context, index) {
            var product = products[index];
            return ProductItem(
                product: product,
                isSelected: _cartCopy.contains(product.title),
                productItemSelectedStateChanged: (bool value) {
                  setState(() {
                    if (value) {
                      _cartCopy.add(products[index].title);
                    } else {
                      _cartCopy.remove(products[index].title);
                    }
                    debugPrint("Products state is updataed from product");
                    widget.cartItemChanged(_cartCopy);
                  });
                });
          }),
    ));
  }
}
