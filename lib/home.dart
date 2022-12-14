import 'package:flutter/material.dart';
import 'package:food_app/card1.dart';
import 'package:food_app/card2.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  // 8
  static List<Widget> pages = <Widget>[
// TODO: Replace with Card1
    const Card1(),
// TODO: Replace with Card2
    const Card2(),
// TODO: Replace with Card3
    Container(color: Colors.blue)
  ];

  // 9
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // TODO: Style the title
      appBar: AppBar(
        title: Text('Fooderlich',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      // TODO: Style the body text
      body: pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        // 5
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        // 10
        currentIndex: _selectedIndex,
        // 11
        onTap: _onItemTapped,
        // 6
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card2',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3',
          ),
        ],
      ),

    );
  }
}
