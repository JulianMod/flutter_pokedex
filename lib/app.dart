import 'package:favourite_pokemon_repository/favourite_pokemon_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pokedex/pokemon/pokemon.dart';
import 'package:flutter_pokedex/favourites/favourites.dart';
import 'package:flutter_pokedex/search/view/search_page.dart';
import 'package:pokemon_repository/pokemon_repository.dart';

class App extends StatelessWidget {
  const App({Key? key,
    required this.pokemonRepository,
    required this.favouritePokemonRepository
    }) : super(key: key);

  final PokemonRepository pokemonRepository;
  final FavouritePokemonRepository favouritePokemonRepository;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => PokemonCubit(pokemonRepository)),
        BlocProvider(create: (_) => FavouritePokemonCubit(favouritePokemonRepository)),
      ],
      child: const MaterialApp(
        home: SearchView(),
      ),
    );
  }
}
