import 'package:flutter/material.dart';
import '../utils/constants.dart';
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('التصنيفات')), body: ListView.builder(itemCount: AppConstants.categories.length, itemBuilder: (c,i) => ListTile(title: Text(AppConstants.categories[i]))));
  }
}
