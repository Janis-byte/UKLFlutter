import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  BottomNav(this.page);
  int page;
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  getPage(index) {
    if (index == 0) {
      Navigator.pushReplacementNamed(context, '/DashBoard');
    } else if (index == 1) {
      Navigator.pushReplacementNamed(context, '/MyBooking');
    } else if (index == 2) {
      Navigator.pushReplacementNamed(context, '/Movies');
    } else if (index == 3) {
      Navigator.pushReplacementNamed(context, '/Cinema');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Colors.black,
      selectedItemColor: Color.fromARGB(255, 5, 28, 156),
      currentIndex: widget.page,
      onTap: getPage,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.tickets),
          label: "My Booking",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.movie_edit),
          label: "Movie",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.movie),
          label: "Cinema",
        ),
      ],
    );
  }
}
