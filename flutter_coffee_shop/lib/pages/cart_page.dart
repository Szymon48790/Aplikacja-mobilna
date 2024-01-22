import 'package:flutter/material.dart';
import 'package:flutter_coffee_shop/components/coffee_title.dart';
import 'package:flutter_coffee_shop/models/coffee.dart';
import 'package:flutter_coffee_shop/models/coffee_shop.dart';
import 'package:flutter_coffee_shop/models/sandwich.dart';
import 'package:flutter_coffee_shop/models/sandwich_shop.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // remove item from cart
  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeItemFromCart(coffee);
  }

  // pay button tapped
  void payNow() {
    /*
      fill out your payment service here
    */
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
        builder: ((context, value, child) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    // heading
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Twój koszyk',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),

                    // list of cart items
                    Expanded(
                      child: ListView.builder(
                        itemCount: value.userCart.length,
                        itemBuilder: (context, index) {
                          // get individual cart items
                          Coffee eachCoffee = value.userCart[index];

                          // return cofee tile
                          return CoffeeTile(
                            coffee: eachCoffee,
                            onPressed: () => removeFromCart(eachCoffee),
                            icon: Icon(Icons.delete),
                          );
                        },
                      ),
                    ),

                    // pay button
                    GestureDetector(
                      onTap: payNow,
                      child: Container(
                        padding: const EdgeInsets.all(25),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFFFC8721),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Text(
                            "Pay Now",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}
