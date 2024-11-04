import 'package:flutter/material.dart';
import 'package:list_view/screens/pokemon_list.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red[400]),
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Pokémons',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontFamily: 'Roboto'),
          ),
          backgroundColor: const Color.fromARGB(255, 239, 83, 80),
        ),
        body: const PokemonListScreen(),
      ),
    );
  }
}
