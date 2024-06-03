import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/product_model.dart';

class HomePageProvider with ChangeNotifier {
  List<ProductModel> items = [];
  List<ProductModel> findItems = [];

  final TextEditingController searchTextController = TextEditingController();

  void getItems() async {
    final url = Uri.parse('https://dummyjson.com/products');
    final response = await http.get(url);

    final List<dynamic> products = jsonDecode(response.body)['products'];

    for (var item in products) {
      items.add(ProductModel.fromJson(item));
    }

    findItems = items;

    notifyListeners();
  }

  void searchItems(String text) {
    findItems = items.where((element) => element.title.contains(text)).toList();

    notifyListeners();
  }
}
