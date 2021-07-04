import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  const ProductCard({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: [
          Spacer(flex: 3),
          Expanded(flex: 10, child: Image.asset('assets/broccoli.png')),
          Spacer(flex: 2),
          buildText(context),
          Spacer(flex: 2),
        ],
      ),
    );
  }

  Text buildText(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline6?.copyWith(
            fontWeight: FontWeight.w500,
          ),
    );
  }
}
