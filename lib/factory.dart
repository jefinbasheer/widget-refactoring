import 'package:flutter/material.dart';
import 'package:widget_refactoring_1/widgets/sportsbanner.dart';
import 'package:widget_refactoring_1/widgets/sportsbutton.dart';

class Factory extends StatelessWidget {
  Widget divider = SizedBox(height: 5.0);

  //const Factory({super.key});

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
          Sportsbanner(
            bannertitle: 'cricket match',
            bannercolor: Colors.amber,
            buttontext: 'view schwcules',
            buttonAction: () {
              print('schedules just see');
            },
          ),
          divider,
          Sportsbanner(
            bannertitle: 'football match',
            bannercolor: Color.fromARGB(255, 94, 43, 134),
            buttontext: 'view schwcules 2',
            buttonAction: () {
              print('schedules just see');
            },
          ),
          Sportsbanner(
            bannertitle: 'volleball',
            buttontext: 'visit',
            buttonAction: () {
              print('volley');
            },
            bannercolor: Colors.cyanAccent,
          )
        ],
      ),
    );
  }
}
