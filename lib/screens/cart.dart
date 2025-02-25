import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  final List<String> cart;
  final ValueChanged<List<String>> cartItemChanged;
  const CartPage(
      {super.key, required this.cart, required this.cartItemChanged});

  @override
  CartPageState createState() => CartPageState();
}

class CartPageState extends State<CartPage> {
  final List<String> _cartCopy = [];

  @override
  initState() {
    super.initState();
    _cartCopy.addAll(widget.cart);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: ListView.builder(
          itemCount: _cartCopy.length,
          itemBuilder: (context, index) {
            var item = _cartCopy[index];
            return Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                child: Card(
                  elevation: 4,
                  child: ListTile(
                    title: Text(item),
                    trailing: GestureDetector(
                        child: const Icon(Icons.remove_circle,
                            color: Colors.amber),
                        onTap: () {
                          setState(() {
                            _cartCopy.remove(item);
                            widget.cartItemChanged(_cartCopy);
                          });
                        }),
                  ),
                ));
          }),
    );
  }
}
