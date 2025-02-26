import 'package:flutter/cupertino.dart';

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
    return SafeArea(
        child: CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Cart'),
      ),
      child: ListView.builder(
          itemCount: _cartCopy.length,
          itemBuilder: (context, index) {
            var item = _cartCopy[index];
            return Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                child: Container(
                  decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    border: Border.all(
                        color: CupertinoColors.activeOrange, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        item,
                        style: const TextStyle(
                            fontSize: 16, color: CupertinoColors.black),
                      ),
                      CupertinoButton(
                          child: const Icon(CupertinoIcons.minus_circle),
                          onPressed: () {
                            setState(() {
                              _cartCopy.remove(item);
                              widget.cartItemChanged(_cartCopy);
                            });
                          })
                    ],
                  ),
                ));
          }),
    ));
  }
}
