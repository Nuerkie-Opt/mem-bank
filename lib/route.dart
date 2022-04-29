import 'package:flutter/material.dart';
import 'package:my_bank/all_cards/cards.dart';
import 'package:my_bank/home/home.dart';
import 'package:my_bank/profile/profile.dart';
import 'package:my_bank/statistics/stats.dart';

class RouteNavBar extends StatefulWidget {
  const RouteNavBar({Key? key}) : super(key: key);

  @override
  State<RouteNavBar> createState() => _RouteNavBarState();
}

class _RouteNavBarState extends State<RouteNavBar> {
  int _page = 0;
  List<Widget> _mainPages() => [
        const Home(),
        const AllCards(),
        const Statistics(),
        const Profile(),
      ];
  @override
  Widget build(BuildContext context) {
    final List<Widget> mainPages = _mainPages();
    return Scaffold(
      body: mainPages[_page],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          iconSize: 24,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home)),
            BottomNavigationBarItem(icon: Icon(Icons.credit_card)),
            BottomNavigationBarItem(icon: Icon(Icons.stacked_bar_chart)),
            BottomNavigationBarItem(icon: Icon(Icons.person)),
          ]),
    );
  }
}
