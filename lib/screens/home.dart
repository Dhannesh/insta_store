import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Insta Store'),
      ),
      body: Column(
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
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 12,
                      backgroundColor: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  child: const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'Shop Now!',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/categories');
                  },
                ),
              ))
        ],
      ),
      drawer: Profile(),
    );
  }
}
