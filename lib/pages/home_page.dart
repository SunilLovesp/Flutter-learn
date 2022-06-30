import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Catalog'),
      ),
      body: Center(
        child: Column(children: [
          Text('hello'),
          ElevatedButton(
            onPressed: () {},
            child: Text('hello sunil'),
          ),
        ]),
      ),
      drawer: Drawer(),
    );
  }
}
