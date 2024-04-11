import 'package:flutter/material.dart';

class Factory extends StatelessWidget {
  const Factory({super.key});

  @override
  Widget build(BuildContext context) {
    Widget cricket = Icon(Icons.sports_cricket);
    Widget football = Icon(Icons.sports_football);
    Widget name = Text('widgety refactoring');
    Widget sportsrow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        cricket,
        football,
        name,
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('SPORTS'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        children: [
          sportsrow,
          sportsrow,
          sportsrow,
        ],
      ),
    );
  }
}
