import 'package:flutter/material.dart';

class MyAddresses extends StatelessWidget {
  const MyAddresses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Addresses'),
        backgroundColor: Colors.blueGrey,
      ),
      body: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(15),
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          children: List.generate(
    addresses.length,
    (index) =>
    AddressItem(address: addresses[index]
    )
    ),
    )
    );
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
      child: Card(
        color: Colors.amberAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                address.title,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                address.subtitle,
                style: const TextStyle(fontSize: 15, color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
