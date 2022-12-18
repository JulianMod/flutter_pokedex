import 'package:flutter/material.dart';
import 'package:flutter_pokedex/favourites/favourites.dart';

class FavouritesList extends StatefulWidget {
  const FavouritesList({Key? key,}) : super(key: key);

  @override
  State<FavouritesList> createState() => _FavouritesListState();
}

class _FavouritesListState extends State<FavouritesList> {

  final List<FavouritePokemon> favouritePokemonList = [];

  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
        children: [
          for( int index = 0; index < favouritePokemonList.length; index++)
          ListTile(
            leading: Image.network(favouritePokemonList[index].image!),
            title: Text(favouritePokemonList[index].name!),
          )
        ],
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            if(oldIndex < newIndex){
              newIndex -= 1;
            }
            final FavouritePokemon item = favouritePokemonList.removeAt(oldIndex);
            favouritePokemonList.insert(newIndex, item);
          });
        });
  }
}
