import 'package:flutter/cupertino.dart';

class MyReviews extends StatelessWidget {
  const MyReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('My Reviews'),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(4, 24, 4, 24),
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: SizedBox(
                    height: 28,
                    width: 28,
                    child: DecoratedBox(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      child: Image.asset('images/fashion_heels.jpg'),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    const Text('Awesome fit!',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Text('Loved the color and fit, excellent',
                        style: TextStyle(
                            fontSize: 15, color: CupertinoColors.systemGrey)),
                  ],
                ),
                const SizedBox(
                  width: 70,
                ),
                const Icon(CupertinoIcons.heart_solid)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: SizedBox(
                    height: 28,
                    width: 28,
                    child: DecoratedBox(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      child: Image.asset('images/pocket_watches.jpg'),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    const Text('Broken Item!',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Text('Received item was broken',
                        style: TextStyle(
                            fontSize: 15, color: CupertinoColors.systemGrey)),
                  ],
                ),
                const SizedBox(
                  width: 70,
                ),
                const Icon(CupertinoIcons.hand_thumbsdown_fill)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: SizedBox(
                    height: 28,
                    width: 28,
                    child: DecoratedBox(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      child: Image.asset('images/joystick.jpg'),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    const Text('Value for money',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Text('The joystick is functional works well',
                        style: TextStyle(
                            fontSize: 15, color: CupertinoColors.systemGrey)),
                  ],
                ),
                const SizedBox(
                  width: 70,
                ),
                const Icon(CupertinoIcons.hand_thumbsup_fill)
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
