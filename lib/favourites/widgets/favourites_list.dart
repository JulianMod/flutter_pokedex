import 'package:flutter/material.dart';

class FavouritesList extends StatefulWidget {
  const FavouritesList({Key? key,
  required this.name,
  required this.image
  }) : super(key: key);

  final String name;
  final String image;

  @override
  State<FavouritesList> createState() => _FavouritesListState();
}

class _FavouritesListState extends State<FavouritesList> {
  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
        children: [
          ListTile(
            leading: Image.network(widget.image),
            title: Text(widget.name),
          )
        ],
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            if(oldIndex < newIndex){
              newIndex -= 1;
            }
            final int item = _items.removeAt(oldIndex);
            _items.insert(newIndex, item)
          });
        });
  }
}
