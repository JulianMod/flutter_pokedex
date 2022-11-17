import 'package:flutter/material.dart';
import 'package:flutter_pokedex/favourites/favourites_page.dart';
import 'package:flutter_pokedex/pokemon/view/pokemon_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  static Route<String> route() {
    return MaterialPageRoute(builder: (_) => const SearchPage());
  }

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _textController = TextEditingController();

  String get _text => _textController.text;

  @override
  void dispose(){
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pokemon Search'),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () => Navigator.of(context).push(FavouritesPage.route()),
          )
        ],
      ),
      body: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                controller: _textController,
                decoration: const InputDecoration(
                    labelText: 'Pokemon',
                    hintText: 'Pikachu'
                ),
              ),
            ),
          ),
          IconButton(
            key: const Key('searchPage_search_iconButton'),
            icon: const Icon(Icons.search, semanticLabel: 'Submit'),
            onPressed: () => Navigator.of(context).push(PokemonPage.route(_text)),
          )
        ],
      ),
    );
  }
}
