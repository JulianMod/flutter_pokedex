import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouritesList extends StatefulWidget {
  const FavouritesList({Key? key}) : super(key: key);

  @override
  State<FavouritesList> createState() => _FavouritesListState();
}

class _FavouritesListState extends State<FavouritesList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouriteBloc, FavouriteState>(
        builder: (context, state) {
      switch (state.status) {
        case FavouriteStatus.failure:
          return const Center(child: Text('failed to fetch favourites'));
        case FavouriteStatus.success:
          if (state.favourites.isEmpty) {
            return const Center(
              child: Text('no favourites'),
            );
          }
          return ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return FavouritesListItem(pokemon: state.favourites[index]);
            },
          );
      }
    });
  }
}
