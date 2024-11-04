import 'package:flutter/material.dart';
import 'package:list_view/models/pokemon_colors.dart';
import 'package:list_view/models/pokemon_types.dart';

class Pokemon {
  final num id;
  final String name;
  final List<PokemonTypes> type;
  final num generation;
  late final Color color;

  Pokemon(
      {required this.id,
      required this.name,
      required this.type,
      required this.generation}) {
    color = _getColor();
  }

  Color _getColor() {
    return pokemonColors[type.first] ?? Colors.grey;
  }
}
