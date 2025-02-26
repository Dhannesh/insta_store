import 'package:flutter/cupertino.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

  final Map<String, String> listInformation = {
    "My Orders": "See your past orders",
    "Shipping Addresses": "See your saved addresses",
    "My Reviews": "See your reviews",
    "Cart": "See your cart items"
  };

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CupertinoPageScaffold(
            navigationBar: const CupertinoNavigationBar(
              middle: Text('My Profile'),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/profile_pic.jpg'),
                              fit: BoxFit.cover),
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Bob Baker",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text("bob@loonycorn.com")
                          ],
                        ),
                      )
                    ],
                  ),
                  Expanded(
                      child: ListView.builder(
                    itemCount: listInformation.length,
                    itemBuilder: (context, index) {
                      var title = listInformation.keys.elementAt(index);
                      var subtitle = listInformation.values.elementAt(index);
                      return CupertinoButton(
                          onPressed: () {
                            switch (index) {
                              case 0:
                                Navigator.pushNamed(context, '/orders');
                                break;
                              case 1:
                                Navigator.pushNamed(context, '/address');
                              case 2:
                                Navigator.pushNamed(context, '/reviews');
                              case 3:
                                Navigator.pushNamed(context, '/orders');
                            }
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(title),
                                      Text(
                                        subtitle,
                                        style: const TextStyle(
                                          fontSize: 15,
                                          color: CupertinoColors.systemGrey,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              const Icon(
                                CupertinoIcons.arrow_right,
                                color: CupertinoColors.systemRed,
                              )
                            ],
                          ));
                    },
                  ))
                ],
              ),
            )));
  }
}
