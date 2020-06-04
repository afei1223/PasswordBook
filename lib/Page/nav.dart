
import 'package:flutter/material.dart';
import 'package:password_book/Page/add.dart';
import 'package:password_book/Page/list.dart';
import 'persion.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BottomNavigationWidgetState();
}

class BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _currentIndex = 0;

  List<Widget> pages = List<Widget>();

  @override
  // ignore: must_call_super
  void initState() {
    pages
      ..add(ListPage())
      ..add(AddPage())
      ..add(PersionPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Color(0xFF3CC2E9),
              ),
              title: Text(
                'LIST',
                style: TextStyle(color: Color(0xFF3CC2E9)),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
                color: Color(0xFF60A1F1),
              ),
              title: Text(
                'ADD',
                style: TextStyle(color: Color(0xFF60A1F1)),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Color(0xFF817DFB),
              ),
              title: Text(
                'hugou',
                style: TextStyle(color: Color(0xFF817DFB)),
              )),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}