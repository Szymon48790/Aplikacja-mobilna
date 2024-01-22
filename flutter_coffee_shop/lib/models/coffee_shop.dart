import 'package:flutter/material.dart';
import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {
  // coffee for sale list
  final List<Coffee> _shop = [
    // black coffee
    Coffee(
      name: 'Black Coffee',
      price: "6.99zł", 
      imagePath: "lib/coffee_images/black-coffee.png"
     ),

    // autumn coffee
    Coffee(
      name: 'Autumn Coffee',
      price: "9.99zł", 
      imagePath: "lib/coffee_images/autumn_coffee.png"
     ),

    // white coffee
    Coffee(
      name: 'White Coffee',
      price: "7.50zł", 
      imagePath: "lib/coffee_images/white-coffee.png"
     ),

    // iced coffee
    Coffee(
      name: 'Iced Coffee',
      price: "8.99zł", 
      imagePath: "lib/coffee_images/cold-coffee.png"
     ),

    // tea
    Coffee(
      name: 'Tea',
      price: "4,99zł", 
      imagePath: "lib/coffee_images/tea.png"
     ),
  ];

  // user cart
  List<Coffee> _userCart = [];

  // get coffee list
  List<Coffee> get coffeeShop => _shop;

  // get user cart
  List<Coffee> get userCart => _userCart;

  // add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}