import 'package:asroshop/View/Widget/CategoryItem.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 10, left: 4),
                alignment: Alignment.topLeft,
                child: const Text(
                  "Category",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
              CategoryItem(),
            ],
          ),
        ),
      ),
    );
  }
}
