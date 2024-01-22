import 'package:flutter/material.dart';
import 'package:flutter_coffee_shop/components/sandwich_title.dart';
import 'package:flutter_coffee_shop/models/coffee_shop.dart';
import 'package:flutter_coffee_shop/models/sandwich.dart';
import 'package:flutter_coffee_shop/models/sandwich_shop.dart';
import 'package:provider/provider.dart';

class SandwichPage extends StatefulWidget {
  const SandwichPage({super.key});

  @override
  State<SandwichPage> createState() => _SandwichPageSate();
}

class _SandwichPageSate extends State<SandwichPage> {
  // add sandwich to cart
  void addToCart(Sandwich sandwich) {
    // add to cart
    Provider.of<SandwichShop>(context, listen: false).addItemToCart(sandwich);

    // let user know it add been successfully added
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Kanapka została pomyślnie dodana do koszyka"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SandwichShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              // heading message
              const Text(
                "Jaka kanapeczka wariacie?",
                style: TextStyle(fontSize: 20),
              ),

              const SizedBox(
                height: 25,
              ),

              // list of sandwiches to buy
              Expanded(
                child: ListView.builder(
                  itemCount: value.sandwichShop.length,
                  itemBuilder: (context, index) {
                    // get individual sandwich
                    Sandwich eachSandwich = value.sandwichShop[index];

                    // return the tile for sandwich
                    return SandwichTlie(
                      sandwich: eachSandwich,
                      icon: Icon(Icons.add),
                      onPressed: () => addToCart(eachSandwich),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
