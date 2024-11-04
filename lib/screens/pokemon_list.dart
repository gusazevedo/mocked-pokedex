import 'package:flutter/material.dart';
import 'package:list_view/components/pokemon_card.dart';
import 'package:list_view/data/pokemon_list_data.dart';

class PokemonListScreen extends StatelessWidget {
  const PokemonListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        children: pokemonDataList.map((item) {
          return PokemonCard(pokemon: item);
        }).toList(),
      ),
    );
  }
}
