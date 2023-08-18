import 'package:flutter/material.dart';
import 'package:kkkk/cummon_layout.dart';
import 'package:kkkk/latihan_layout.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LatihanLayout(),
                  ),
                );
              },
              child:Text("LatihanLayout")),
        ],
      ),
    );
  }
}
