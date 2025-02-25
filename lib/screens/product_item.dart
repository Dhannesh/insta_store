import 'package:flutter/material.dart';

import '../data/categories_products_util.dart';

class ProductItem extends StatefulWidget {
  final Product product;
  final ValueChanged<bool> productItemSelectedStateChanged;
  final bool isSelected;

  const ProductItem(
      {super.key,
      required this.product,
      required this.productItemSelectedStateChanged,
      required this.isSelected});

  @override
  ProductItemState createState() => ProductItemState();
}

class ProductItemState extends State<ProductItem> {
  bool isSelected = false;
  @override
  initState() {
    super.initState();
    isSelected = widget.isSelected;
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
          widget.productItemSelectedStateChanged(isSelected);
        });

        debugPrint("${widget.product.title} is selected: ${isSelected}");
      },
      child: Stack(children: <Widget>[
        Padding(
          padding: EdgeInsets.all(5),
          child: Container(
            height: 200,
            width: 200,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.amberAccent, width: 2),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Column(
              children: [
                Image(
                  image: AssetImage(widget.product.imageName),
                  width: 125,
                  height: 125,
                  color: Colors.black.withOpacity(isSelected ? 0.9 : 0),
                  colorBlendMode: BlendMode.color,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(widget.product.title),
                )
              ],
            ),
          ),
        ),
        widget.isSelected
            ? const Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    Icons.check_circle,
                    color: Colors.blue,
                  ),
                ),
              )
            : Container()
      ]),
    );
  }
}
