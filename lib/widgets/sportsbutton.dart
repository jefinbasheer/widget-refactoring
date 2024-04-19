import "package:flutter/material.dart";

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
