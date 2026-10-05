import 'package:flutter/material.dart';
import '../utils/constants.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('خلفيات ونغمات حلال')),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
        itemCount: AppConstants.categories.length,
        itemBuilder: (ctx, i) => Container(decoration: BoxDecoration(color: Colors.teal.shade100, borderRadius: BorderRadius.circular(12)), child: Center(child: Text(AppConstants.categories[i]))),
      ),
    );
  }
}
