import 'package:flutter/material.dart';
import 'package:wordle/components/my_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned.fill(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromRGBO(64, 75, 93, 1),
                    Color.fromRGBO(84, 121, 137, 1),
                  ]),
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyIcon(
                    myIcon: Icons.help_outline_outlined,
                    myColor: Colors.lightBlue,
                  ),
                  MyIcon(
                    myIcon: Icons.settings,
                    myColor: Color.fromRGBO(218, 147, 188, 1),
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ),
          ),
        ),
        Positioned(
            bottom: -200,
            right: 0,
            left: 0,
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Center(
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color.fromRGBO(218, 147, 188, 1),
                          Color.fromRGBO(98, 174, 190, 1),
                          Color.fromRGBO(130, 90, 160, 1),
                        ]),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(200),
                  ),
                ),
              ),
            )),
        Positioned.fill(
            bottom: -60,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 350,
                height: 600,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(53, 61, 80, 0.8),
                    borderRadius: BorderRadius.circular(15)),
              ),
            ))
      ],
    ));
  }
}
