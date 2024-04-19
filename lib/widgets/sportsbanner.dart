import 'package:flutter/material.dart';
import 'package:widget_refactoring_1/widgets/sportsbutton.dart';

// ignore: must_be_immutable
class Sportsbanner extends StatelessWidget {
  var buttoncolor;

  //Sportsbanner({super.key});
  final String bannertitle;
  final String buttontext;
  final void Function() buttonAction;
  final Color bannercolor;
  Sportsbanner({
    super.key,
    required this.bannertitle,
    required this.buttontext,
    this.buttoncolor,
    required this.buttonAction,
    required this.bannercolor,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: bannercolor,
      ),
      child: ListTile(
        title: Text(
          bannertitle,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: sportsbutton(
          buttoncolor: buttoncolor,
          buttonname: buttontext,
          buttonaction: buttonAction,
        ),
      ),
    );
  }
}
