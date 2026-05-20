import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/product_model.dart';

class ProductLocalDataSource {

  Future<List<ProductModel>> getProducts() async {

    await Future.delayed(
      const Duration(seconds: 2),
    );

    final jsonString = await rootBundle.loadString(
      'assets/json/products.json',
    );

    final List<dynamic> jsonData =
        json.decode(jsonString);

    return jsonData
        .map((e) => ProductModel.fromJson(e))
        .toList();
  }
}