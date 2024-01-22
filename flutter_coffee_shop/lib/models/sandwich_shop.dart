import 'package:flutter/material.dart';
import 'package:flutter_coffee_shop/models/sandwich.dart';

class SandwichShop  extends ChangeNotifier {
  // sandwiches for sale list
    final List<Sandwich> _shop = [
      // cheese sandiwch
      Sandwich(
        name: 'Cheese Sandwich',
        price: '14zł',
        imagePath: "lib/coffee_images/cheese-sandwich.png"
        ),

      // ham sandwich
      Sandwich(
        name: 'Ham Sandwich',
        price: '12zł',
        imagePath: "lib/coffee_images/ham-sandwich.png"
        ),

      // Hot Dog
      Sandwich(
        name: 'Hot Dog',
        price: '10zł',
        imagePath: "lib/coffee_images/hotdog.png"
        ),
    ];

  // user cart
  List<Sandwich> _userCart = [];
  
  // get sandwiches list
  List<Sandwich> get sandwichShop => _shop;

  // get user cart
  List<Sandwich> get userCart => _userCart;

  // add item to cart
  void addItemToCart(Sandwich sandwich) {
    _userCart.add(sandwich);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Sandwich sandwich) {
    _userCart.remove(sandwich);
    notifyListeners();
  }
}