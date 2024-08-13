import 'package:flutter/material.dart';
import 'package:wordle/components/my_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
            Color.fromRGBO(64, 75, 93, 1),
            Color.fromRGBO(84, 121, 137, 1),
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: MyIcon(
            myIcon: Icons.help_outline_outlined,
            myColor: Colors.lightBlue,
          ),
          actions: [
            MyIcon(
              myIcon: Icons.settings,
              myColor: Color.fromRGBO(218, 147, 188, 1),
            ),
          ],
        ),
        body: Column(
          children: [],
        ),
      ),
    );
  }
}
