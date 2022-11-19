import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pokedex/favourites/favourites.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage._();

  static Route<String> route(){
    return MaterialPageRoute(builder: (_) => const FavouritesPage._());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Favourites'),),
        body: Center(
          child: BlocConsumer<FavouritePokemonCubit, FavouritePokemonState>(
            listener: (context, state) {
              if(state.status.isSuccess){
                context.read<FavouritePokemonCubit>().refreshFavouritePokemon();
              }
            },
            builder: (context, state) {
              switch (state.status) {
                case FavouritePokemonStatus.initial:
                  return const Text('Empty');
                case FavouritePokemonStatus.loading:
                  return const CircularProgressIndicator();
                case FavouritePokemonStatus.success:
                  return FavouritesList(
                    name: state.favouritePokemon.name!,
                    image: state.favouritePokemon.image!,
                  );
                case FavouritePokemonStatus.failure:
                  return const Text('Error');
              }
            },
          ),
        )
    );
  }
}

