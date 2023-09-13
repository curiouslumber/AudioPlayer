import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:infoware/api.dart';
import 'package:infoware/audio.dart';
import 'package:infoware/form.dart';
import 'package:infoware/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  var pages = [
    const HomePage(),
    const APIPage(),
    const AudioPage(),
    const FormPage()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            systemOverlayStyle: const SystemUiOverlayStyle(
              systemNavigationBarColor: Color(0xff00544F), // Navigation bar
              statusBarColor: Color(0xff00544F), // Status bar
            ),
            centerTitle: true,
            title: const Text(
              'Infoware',
              style: TextStyle(fontFamily: 'Urbanist-Regular'),
            ),
            backgroundColor: const Color(0xff00544F)),
        body: Container(
          alignment: Alignment.center,
          color: const Color.fromARGB(255, 0, 77, 71),
          child: pages[_currentIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: _currentIndex == 2 ? 0.0 : 16.0,
          selectedFontSize: 12.0,
          unselectedFontSize: 10.0,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          backgroundColor: const Color(0xff00544F),
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          enableFeedback: false,

          type: BottomNavigationBarType
              .fixed, // Ensures the labels are always shown
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(bottom: 4.0, top: 4.0),
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == 0
                      ? const Color(0xff00A196)
                      : const Color.fromARGB(255, 0, 112, 105),
                ),
                child: Icon(Icons.home,
                    size: _currentIndex == 0 ? 30.0 : 25.0,
                    color: Colors.white),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(bottom: 4.0, top: 4.0),
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == 1
                      ? const Color(0xff00A196)
                      : const Color.fromARGB(255, 0, 112, 105),
                ),
                child: Icon(Icons.api,
                    size: _currentIndex == 1 ? 30.0 : 25.0,
                    color: Colors.white),
              ),
              label: 'API',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(bottom: 4.0, top: 4.0),
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == 2
                      ? const Color(0xff00A196)
                      : const Color.fromARGB(255, 0, 112, 105),
                ),
                child: Icon(Icons.audio_file,
                    size: _currentIndex == 2 ? 30.0 : 25.0,
                    color: Colors.white),
              ),
              label: 'Audio',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(bottom: 4.0, top: 4.0),
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == 3
                      ? const Color(0xff00A196)
                      : const Color.fromARGB(255, 0, 112, 105),
                ),
                child: Icon(Icons.account_circle,
                    size: _currentIndex == 3 ? 30.0 : 25.0,
                    color: Colors.white),
              ),
              label: 'Form',
            ),
          ],
          unselectedLabelStyle: const TextStyle(
              fontFamily: 'Urbanist-Medium', letterSpacing: 0.5),
          selectedLabelStyle: const TextStyle(
              fontFamily: 'Urbanist-SemiBold', letterSpacing: 0.5),
        ),
      ),
    );
  }
}
