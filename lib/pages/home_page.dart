import 'package:flutter/material.dart';
import 'package:wordle/components/my_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: MyIcon(
          myIcon: Icons.help_outline_outlined,
          myColor: Colors.lightBlue,
        ),
        actions: const [
          MyIcon(
            myIcon: Icons.settings,
            myColor: Colors.red,
          ),
        ],
      ),
      body: const Center(child: Text('Salam')),
    );
  }
}
