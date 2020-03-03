import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex/models/pokemon.model.dart';

class HomeScreen extends StatelessWidget {
  final List<Pokemon> pokemons;

  HomeScreen({this.pokemons});

  @override
  Widget build(BuildContext context) {
    // Map the list of Pokémons to a list of Text widgets
    List<Widget> list = pokemons.map((p) => PokemonGridItem(pokemon: p)).toList();



    // Show the Text widgets in a Column widget

    return GridView.count(crossAxisCount: 2, children: list);
  }

  
}

class PokemonGridItem extends StatelessWidget{

  final Pokemon pokemon;

  PokemonGridItem({this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[Container(
      child: CachedNetworkImage(imageUrl: pokemon.image),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        shape: BoxShape.circle
      ),
    ),
      Text(pokemon.name),
      Text(pokemon.number)
    ]);
  }

}
