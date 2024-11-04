import 'package:flutter/material.dart';
import '../models/pokemon.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon pokemon;
  const PokemonCard({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: pokemon.color),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        splashColor: const Color.fromARGB(50, 255, 255, 255),
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: Center(
              child: Text(
            pokemon.name,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto'),
          )),
        ),
      ),
    );
  }
}
