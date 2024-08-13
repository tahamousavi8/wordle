import 'package:flutter/material.dart';
import 'package:wordle/pages/HomePage.dart';

class SplashPage extends StatefulWidget{
  @override
  State<SplashPage> createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {


    @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => const HomePage()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
      Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color.fromRGBO(64, 75, 93, 1),
                            Color.fromRGBO(84, 121, 137, 1),
                          ]),
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
                    ]
                    ),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(200),
                  ),
                ),
              ),
            ))
        ],
      )
    );
  }
}