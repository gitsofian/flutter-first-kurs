import 'package:flutter/material.dart';

import './pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function delProduct;

  Products(this.products, {this.delProduct}) {
    print('[Products Widget] Constructor');
  }

  Widget _builProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['imageUrl']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                  child: Text('Details'),
                  onPressed: () {
                        Navigator.pushNamed<bool>(
                          context,
                          '/product/' + index.toString()
                        ).then((bool onValue) {
                          if (onValue) {
                            delProduct(index);
                          }
                        });
                      }),
              FlatButton(
                child: Text('About'),
                onPressed: () => {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProductList() {
    return products.length > 0
        ? ListView.builder(
            itemBuilder: _builProductItem,
            itemCount: products.length,
          )
        : Center(
            child: Text('No product found! please add some data'),
          );
  }

  Widget build(BuildContext context) {
    return _buildProductList();
  }
}
