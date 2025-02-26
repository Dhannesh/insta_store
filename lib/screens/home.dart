import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> carouselImages = [
      'images/fruits.jpg',
      'images/veggies.jpg',
      'images/snacks.jpg',
      'images/beverages.jpg',
      'images/fashion.jpg',
      'images/gadgets.jpg',
      'images/shoes.jpg',
      'images/cosmetics.jpg',
    ];
    return SafeArea(
      child: CupertinoPageScaffold(
          child: CustomScrollView(slivers: <Widget>[
        CupertinoSliverNavigationBar(
          leading: IconButton(
            icon: Icon(CupertinoIcons.person_circle),
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => Profile()),
              );
            },
          ),
          largeTitle: Text('Insta Store'),
          // trailing: Icon(CupertinoIcons.add_circled),
        ),
        SliverFillRemaining(
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 450,
                  viewportFraction: 1.0,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  // autoPlayInterval: const Duration(seconds: 3),
                ),
                items: carouselImages
                    .map((e) => Image.asset(
                          e,
                          fit: BoxFit.cover,
                        ))
                    .toList(),
              ),
              Expanded(
                  flex: 1,
                  child: Center(
                    child: CupertinoButton.filled(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      child: const Text('Show Now!',
                          style: TextStyle(
                              fontSize: 20, color: CupertinoColors.white)),
                      onPressed: () {
                        Navigator.pushNamed(context, '/categories');
                      },
                    ),
                  ))
            ],
          ),
        )
      ])),
    );
  }
}
