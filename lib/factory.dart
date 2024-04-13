import 'package:flutter/material.dart';

class Factory extends StatelessWidget {
  const Factory({super.key});
  Widget sportsbutton({
    Color? buttoncolor,
    String? buttonname,
    void Function()? buttonaction,
  }) {
    return ElevatedButton(
      onPressed: buttonaction,
      child: Text(
        buttonname!,
        style: const TextStyle(color: Colors.orange),
      ),
      style: ElevatedButton.styleFrom(backgroundColor: buttoncolor),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget cricket = const Icon(Icons.sports_cricket);
    Widget football = const Icon(Icons.sports_football);
    Widget name = const Text('widgety refactoring');
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
        title: const Text('SPORTS'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        children: [
          sportsrow,
          sportsrow,
          sportsrow,
          sportsbutton(
            buttoncolor: Colors.black,
            buttonname: "First button",
            buttonaction: () {
              // ignore: avoid_print
              print("first one is clicked");
            },
          ),
          sportsbutton(
            buttoncolor: Colors.transparent,
            buttonname: 'Second button',
            buttonaction: () {
              print('second button is clicked');
            },
          ),
        ],
      ),
    );
  }
}
