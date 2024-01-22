import 'package:flutter/material.dart';
import 'package:flutter_coffee_shop/models/sandwich.dart';

class SandwichTlie extends StatelessWidget {
  final Sandwich sandwich;
  void Function()? onPressed;
  final Widget icon;
  SandwichTlie({
    super.key,
    required this.sandwich,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 235, 124, 27),
          borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: ListTile(
        title: Text(sandwich.name),
        subtitle: Text(sandwich.price),
        leading: Image.asset(sandwich.imagePath),
        trailing: IconButton(
          icon: icon,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
