import 'package:flutter/cupertino.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CupertinoPageScaffold(
            navigationBar: const CupertinoNavigationBar(
              middle: Text('My Orders'),
            ),
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: 300,
                  margin: EdgeInsets.all(60),
                  padding: EdgeInsets.all(40),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/cart.jpg'),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle),
                ),
                const Center(
                  child: Text(
                    "No orders yet!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Verdana',
                        color: CupertinoColors.systemRed,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Center(
                      child: CupertinoButton.filled(
                    child: const Padding(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'Continue Shopping!',
                        style: TextStyle(
                            fontSize: 18,
                            color: CupertinoColors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/categories');
                    },
                  )),
                )
              ],
            )));
  }
}
