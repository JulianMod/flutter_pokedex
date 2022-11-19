import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favourites'),),
      body: BlocConsumer(
        create: (_) => FavouriteBloc(httpClient: http.Client())..add(FavouriteFetched()),
        child: const FavouritesList()
      ),
    );
  }
}
