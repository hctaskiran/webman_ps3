import 'package:flutter/material.dart';
import 'package:webman_ps3/model/webman_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final List<WebmanModel> webman = WebmanTile().webman;

    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: webman.length,
              itemBuilder: (context, index) {
                return ListTile(
                    leading: Icon(webman[index].icon),
                    title: Text(webman[index].title),
                    subtitle: Text(webman[index].subtitle),
                    onTap: () {
                      webman[index].onTap(context);
                    });
              }),
        ),
      ],
    ));
  }
}
