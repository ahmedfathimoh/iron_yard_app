import 'package:flutter/material.dart';
import 'package:iron_yard_app/pages/homePage.dart';
import 'package:iron_yard_app/pages/orderPage.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.orange,
      iconSize: 30.0,
      onTap: (value) {},
      items: [
        BottomNavigationBarItem(
          icon: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
            child: Icon(
              Icons.home,
            ),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.track_changes),
          label: 'Track Order',
        ),
        BottomNavigationBarItem(
          icon: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OrderPage()),
              );
            },
            child: Icon(Icons.view_list),
          ),
          label: 'My Orders',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.contacts),
          label: 'Profile',
        ),
      ],
    );
  }
}
