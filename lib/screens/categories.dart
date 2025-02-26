import 'package:flutter/cupertino.dart';
import 'package:sample_app/data/categories_products_util.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CupertinoPageScaffold(
            navigationBar: const CupertinoNavigationBar(
              middle: Text('Insta Store'),
            ),
            child: GridView.custom(
                padding: const EdgeInsets.all(10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1),
                childrenDelegate: SliverChildBuilderDelegate(
                  (context, int index) {
                    return SafeArea(
                      child: Stack(
                        children: <Widget>[
                          Container(
                            width: 300,
                            height: 300,
                            decoration: BoxDecoration(
                              border: Border.all(color: CupertinoColors.white),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Image.asset(
                              categoriesMap[index].image,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomCenter,
                            child: CupertinoButton.filled(
                              child: Text(categoriesMap[index].title),
                              onPressed: () {
                                Navigator.pushNamed(context, '/products',
                                    arguments: {
                                      'category': categoriesMap[index].title
                                    });
                              },
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  childCount: categoriesMap.length,
                ))));
  }
}
