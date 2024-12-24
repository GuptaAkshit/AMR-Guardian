import 'package:flutter/material.dart';
import 'package:guidelines/adult_disc.dart';
import 'package:guidelines/child_disc.dart';
import 'package:guidelines/home_page.dart';
import 'package:guidelines/information.dart';
import 'package:guidelines/medicine.dart';
import 'package:guidelines/menu(1).dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  int test1 = 0;
  int test2 = 0;
  final List<Widget> _screens = [
    HomePage(),
    Menu('Adult'),
    Menu('Children'),
    Medicine(),
    Information(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        //backgroundColor: Color.fromARGB(255, 0, 0, 0),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            if (index == 1 && test1 == 0) {
              test1 = 1;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AdultDisc(),
                  ));
            }
            if (index == 2 && test2 == 0) {
              test2 = 1;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChildDisc(),
                  ));
            }
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Adults',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.child_care),
            label: 'Children',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medication_outlined),
            label: 'Dosage',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            label: 'Info',
          ),
        ],
      ),
    );
  }
}
