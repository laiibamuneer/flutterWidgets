import 'package:flutter/material.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              //alignment: Alignment.bottomRight,
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 70),
              //padding: EdgeInsets.fromLTRB(50, 0, 50, 100),
              //padding: const EdgeInsets.only(
              //left: 80,
              //right: 20,
              //),
              height: 200,
              width: 250,
              decoration: const BoxDecoration(
                color: Colors.black,
                // borderRadius: BorderRadius.circular(20)
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
              ),
              child: const Center(
                child: Text(
                  "Laiba", //  /n for line break in text
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 3,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              //alignment: Alignment.bottomRight,
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 70),
              //padding: EdgeInsets.fromLTRB(50, 0, 50, 100),
              //padding: const EdgeInsets.only(
              //left: 80,
              //right: 20,
              //),
              height: 200,
              width: 250,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
              ),
              child: const Center(
                child: Text(
                  "Muneer", //  /n for line break in text
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 3,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            //alignment: Alignment.bottomRight,
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 70),
            //padding: EdgeInsets.fromLTRB(50, 0, 50, 100),
            //padding: const EdgeInsets.only(
            //left: 80,
            //right: 20,
            //),
            height: 200,
            width: 250,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
            ),
            child: const Center(
              child: Text(
                "Khan", //  /n for line break in text
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 3,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
