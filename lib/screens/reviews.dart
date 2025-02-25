import 'package:flutter/material.dart';

class MyReviews extends StatelessWidget {
  const MyReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Reviews'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(4, 24, 4, 24),
        child: ListView(
          children: const <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/fashion_heels.jpg'),
              ),
              title: Text('Awesome fit!',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              trailing: Icon(Icons.favorite),
              subtitle: Text('Loved the color and fit, excellent'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/pocket_watches.jpg'),
              ),
              title: Text('Broken Item',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              trailing: Icon(Icons.mood_bad_sharp),
              subtitle: Text('Received item was broken'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/joystick.jpg'),
              ),
              title: Text('Value for money',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              trailing: Icon(Icons.thumb_up_sharp),
              subtitle: Text('The joystick is functional works well'),
            )
          ],
        ),
      ),
    );
  }
}
