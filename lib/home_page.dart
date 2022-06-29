import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Catalog'),
      ),
      body: Center(
        child: Container(
          child: Text('hello'),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
