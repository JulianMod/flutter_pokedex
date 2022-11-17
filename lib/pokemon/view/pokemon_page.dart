import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../pokemon.dart';

class PokemonPage extends StatefulWidget {
  const PokemonPage({Key? key}) : super(key: key);

  @override
  State<PokemonPage> createState() => _PokemonPageState();
}

class _PokemonPageState extends State<PokemonPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PokemonCubit(context.read<PokemonRepository>()),
      child: const PokemonView(),
    );
  }
}

class PokemonView extends StatefulWidget {
  const PokemonView({Key? key}) : super(key: key);

  @override
  State<PokemonView> createState() => _PokemonViewState();
}

class _PokemonViewState extends State<PokemonView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () => context.read<PokemonCubit>.addFavourite(state.pokemon),
          )
        ],
      ),
      body: Center(
        child: BlocBuilder<PokemonCubit, PokemonState>(
          builder: (context, state) {
            switch (state.status) {
              case PokemonStatus.initial:
                return const Text('Empty');
              case PokemonStatus.loading:
                return const CircularProgressIndicator();
              case PokemonStatus.success:
                return PokemonPopulated(
                    id: state.pokemon.id!,
                    name: state.pokemon.name!,
                    image: state.pokemon.image!
                );
              case PokemonStatus.failure:
                return const Text('Error');
            }
          },
        ),
      ),
    );
  }
}

