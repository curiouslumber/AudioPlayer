import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 4,
            child: Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(top: 12.0, left: 12.0),
              decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(46, 46, 46, 0.157),
                        offset: Offset(0, 4),
                        blurRadius: 8.0,
                        spreadRadius: 3.0)
                  ],
                  color: Color.fromARGB(255, 42, 105, 97),
                  borderRadius: BorderRadius.all(Radius.circular(12.0))),
              margin: const EdgeInsets.only(bottom: 24.0),
              child: const Text(
                'Dashboard',
                style: TextStyle(
                    fontFamily: 'Urbanist-Medium',
                    color: Colors.white,
                    letterSpacing: 1.0),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.only(left: 12.0, top: 12.0),
              alignment: Alignment.topLeft,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(46, 46, 46, 0.157),
                      offset: Offset(0, 4),
                      blurRadius: 8.0,
                      spreadRadius: 3.0)
                ],
                color: Color.fromARGB(255, 42, 105, 97),
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              margin: const EdgeInsets.only(bottom: 24.0),
              child: const Text(
                "Audios",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Urbanist-Medium',
                    letterSpacing: 0.8),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.only(left: 12.0, top: 12.0),
              alignment: Alignment.topLeft,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(46, 46, 46, 0.157),
                      offset: Offset(0, 4),
                      blurRadius: 8.0,
                      spreadRadius: 3.0)
                ],
                color: Color.fromARGB(255, 42, 105, 97),
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: const Text(
                'Users',
                style: TextStyle(
                    fontFamily: 'Urbanist-Medium',
                    color: Colors.white,
                    letterSpacing: 0.8),
              ),
            ),
          )
        ],
      ),
    );
  }
}
