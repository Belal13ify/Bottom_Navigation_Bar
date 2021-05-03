import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _cIndex = 0;

  void selectedIndex(int cIndex) {
    setState(() {
      _cIndex = cIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Text(
            'BottomNavigationBarWithFAB',
            style: TextStyle(fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            'TAB: ${_cIndex.toString()}',
            style: TextStyle(fontSize: 30),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 23,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 20,
          unselectedFontSize: 17,
          selectedItemColor: Colors.orange,
          currentIndex: _cIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'This',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'is',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'A',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Bottom',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.error),
              label: 'Bar',
            ),
          ],
          onTap: selectedIndex,
        ),
      ),
    );
  }
}
