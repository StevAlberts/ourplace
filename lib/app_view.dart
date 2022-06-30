import 'package:flutter/material.dart';
import 'package:ourplace/views/homesView/home_view.dart';
import 'package:ourplace/views/messagesView/messages_view.dart';
import 'package:ourplace/views/profileView/profile_view.dart';
import 'package:ourplace/views/roommatesView/roommates_view.dart';

class AppView extends StatefulWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  int _currentIndex = 0;

  static const List<Widget> _pageViews = <Widget>[
    HomeView(),
    RoommatesView(),
    MessagesView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageViews.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.green,
        onTap: (value) {
          // Respond to item press.
          setState(() => _currentIndex = value);
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Homes',
            icon: Icon(Icons.chair),
          ),
          BottomNavigationBarItem(
            label: 'Roommates',
            icon: Icon(Icons.people),
          ),
          BottomNavigationBarItem(
            label: 'Messages',
            icon: Icon(Icons.chat_bubble),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
