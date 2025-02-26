import 'package:flutter/cupertino.dart';

class MyAddresses extends StatelessWidget {
  const MyAddresses({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CupertinoPageScaffold(
            navigationBar: const CupertinoNavigationBar(
              middle: Text('My Addresses'),
            ),
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              children: List.generate(addresses.length,
                  (index) => AddressItem(address: addresses[index])),
            )));
  }
}

class Address {
  final String title;
  final String subtitle;
  Address({required this.title, required this.subtitle});
}

List<Address> addresses = [
  Address(
      title: 'Home',
      subtitle:
          'Mr. Bob Baker,\n50 Oakland Ave, \n#206 A City, \nFlorida, USA'),
  Address(
      title: 'Office',
      subtitle:
          'Mr. Bob Baker, \n320 Davis Lane, \nCentennial, \nColorado, USA'),
  Address(
      title: 'Gym',
      subtitle: 'Mr. Bob Baker, \n3158 Ingram Street, \nXenia, \nOhio, USA')
];

class AddressItem extends StatelessWidget {
  final Address address;
  const AddressItem({super.key, required this.address});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: CupertinoColors.white),
          ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      address.title,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: CupertinoColors.white),
                    ),
                    Text(
                      address.subtitle,
                      style: const TextStyle(fontSize: 15, color: CupertinoColors.white),
                    )
                  ],
                ),
              ),
            ),
          )
        );

  }
}
