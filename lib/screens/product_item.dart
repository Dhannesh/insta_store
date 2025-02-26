import 'package:flutter/cupertino.dart';

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
    return CupertinoButton(
      onPressed: () {
        setState(() {
          isSelected = !isSelected;
          widget.productItemSelectedStateChanged(isSelected);
        });

        debugPrint("${widget.product.title} is selected: ${isSelected}");
      },
      child: Stack(
          children: <Widget>[
          Container(
            height: 250,
            width: 250,
            padding: const EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              border: Border.all(color: CupertinoColors.activeOrange, width: 2),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Column(
              children: [
                Image(
                  image: AssetImage(widget.product.imageName),
                  width: 75,
                  height: 75,
                  color: CupertinoColors.black.withOpacity(isSelected ? 0.9 : 0),
                  colorBlendMode: BlendMode.color,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(widget.product.title),
                )
              ],
            ),
          ),

        widget.isSelected
            ? const Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    CupertinoIcons.checkmark_alt_circle_fill,
                    color: CupertinoColors.activeBlue,
                  ),
                ),
              )
            : Container()
      ]),
    );
  }
}
