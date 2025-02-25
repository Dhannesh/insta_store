import 'package:flutter/material.dart';
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

    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16, top: 8),
            child: GestureDetector(
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  const Icon(Icons.shopping_cart, size: 20),
                  if (_cartCopy.isNotEmpty)
                    Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          child: Text(
                            _cartCopy.length.toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ))
                ],
              ),
              onTap: () {
                if (_cartCopy.isNotEmpty) {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CartPage(
                          cart: _cartCopy,
                          cartItemChanged: (List<String> cart) {
                            setState(() {
                              _cartCopy.clear();
                              _cartCopy.addAll(cart);
                              debugPrint(
                                  "Products state is updataed from cart");
                              widget.cartItemChanged(_cartCopy);
                            });
                          })));
                }
                ;
              },
            ),
          ),
        ],
      ),
      body: GridView.builder(
          padding: EdgeInsets.all(4),
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
    );
  }
}
