import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function _addProduct;
  ProductControl(this._addProduct);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      onPressed: () {
        _addProduct({'title': 'Schokolade', 'imageUrl': 'assets/foods.jpg'});
      },
      child: Text('Add Product'),
    );
  }
}
