import 'package:flutter/material.dart';
import 'package:flutter_coffee_shop/models/coffee_shop.dart';
import 'package:flutter_coffee_shop/models/sandwich_shop.dart';
import 'package:flutter_coffee_shop/theme/theme.dart';
import 'package:flutter_coffee_shop/theme/theme_provider.dart';
import 'package:provider/provider.dart';
import 'pages/home_page.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => CoffeeShop(),
//       builder:(context, child) => const MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: const HomePage(),
//       ),
//     );
//   }
  
//   @override
//   Widget add(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => SandwichShop(),
//       builder:(context, child) => const MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: const HomePage(),
//       ),
//     );
//   }
// }

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CoffeeShop()),
        ChangeNotifierProvider(create: (context) => SandwichShop()),
        // Dodaj więcej providerów, jeśli to konieczne
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}