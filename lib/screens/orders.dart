import 'package:flutter/material.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Orders'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: 300,
            margin: EdgeInsets.all(30),
            padding: EdgeInsets.all(40),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image:AssetImage('images/cart.jpg'),
                fit: BoxFit.cover
              ),
              shape: BoxShape.circle
            ),
          ),
          const Center(
            child: Text("No orders yet!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Verdana',
              color: Colors.redAccent,
              fontWeight: FontWeight.bold
            ),),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 12,
                  backgroundColor: Colors.deepOrange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(14),
                  child: Text('Continue Shopping!',
                  style: TextStyle(fontSize: 20, color: Colors.white),),
                ),
                onPressed: (){
                  Navigator.pushNamed(context, '/categories');
                },
              )
            ),
          )
        ],
      )
    );
  }
}
