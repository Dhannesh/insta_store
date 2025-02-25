import 'package:flutter/material.dart';
import 'package:sample_app/data/categories_products_util.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Insta Store'),
          backgroundColor: Colors.blueGrey,
        ),
        body: GridView.custom(
            padding: const EdgeInsets.all(10),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
            childrenDelegate: SliverChildBuilderDelegate((context, int index) {
              return Stack(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      categoriesMap[index].image,
                      height: double.infinity,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/products', arguments: {
                          'category': categoriesMap[index].title
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrangeAccent,
                          fixedSize: const Size(200, 48),
                          shape: const StadiumBorder()),
                      child: Text(categoriesMap[index].title,
                      style: TextStyle(
                        color: Colors.white
                      ),),
                    ),
                  )
                ],
              );
            },
              childCount: categoriesMap.length,
            )));
  }
}
