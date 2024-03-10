import 'package:flutter/material.dart';
import 'package:webman_ps3/model/game_model.dart';

class GameCommands extends StatefulWidget {
  const GameCommands({super.key});

  @override
  State<GameCommands> createState() => _GameCommandsState();
}

class _GameCommandsState extends State<GameCommands> {
  final TextEditingController ipController = TextEditingController();
  final TextEditingController urlController = TextEditingController();
  final List<GameModel> game = GameTile().game;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: game.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(game[index].icon),
          title: Text(game[index].title),
          titleTextStyle: const TextStyle(fontSize: 18),
          subtitle: Text(game[index].subtitle),
          subtitleTextStyle: const TextStyle(fontSize: 12),
          onTap: () {
            game[index].onTap(context);
          },
        );
      },
    );
  }
}
