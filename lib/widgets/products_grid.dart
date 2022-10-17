import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product.dart';
import './product_item.dart';
import '../providers/products_provider.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ProductData = Provider.of<Products>(context);
    final products = ProductData.items;
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 10),
      itemBuilder: (ctx, i) => ProductItem(
        products[i].id,
        products[i].title,
        products[i].imageUrl,
      ),
      itemCount: products.length,
      padding: const EdgeInsets.all(10),
    );
  }
}
