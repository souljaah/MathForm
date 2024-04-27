import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FavoritePage extends StatefulWidget {
  final Color chosenColor;
  final Function(String) onTapTopic;
  final Set<String> favoriteTopics;

  const FavoritePage({
    Key? key,
    required this.chosenColor,
    required this.onTapTopic,
    required this.favoriteTopics,
  }) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  late Set<String> _favoriteTopics;

  @override
  void initState() {
    super.initState();
    _favoriteTopics = widget.favoriteTopics;
  }

  Future<void> _toggleFavorite(String topic) async {
    setState(() {
      if (_favoriteTopics.contains(topic)) {
        _favoriteTopics.remove(topic);
      } else {
        _favoriteTopics.add(topic);
      }
    });
    widget.onTapTopic(topic);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Topics'),
        backgroundColor: widget.chosenColor,
      ),
      backgroundColor: widget.chosenColor,
      body: ListView(
        children: _favoriteTopics.map((topic) {
          return ListTile(
            title: Text(topic),
            onTap: () => widget.onTapTopic(topic),
            trailing: IconButton(
              icon: Icon(
                _favoriteTopics.contains(topic)
                    ? Icons.favorite
                    : Icons.favorite_border,
              ),
              color: Colors.red,
              onPressed: () => _toggleFavorite(topic),
            ),
          );
        }).toList(),
      ),
    );
  }
}
