import 'package:flutter_course_online/constant.dart';
import 'package:flutter/material.dart';

class NavigationHome extends StatelessWidget {
  const NavigationHome({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  final int currentIndex;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      selectedItemColor: blueColor,
      unselectedItemColor: lightBlueColor,
      currentIndex: currentIndex,
      backgroundColor: whiteColor,
      elevation: 0,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Inico",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.grid_view_rounded),
          label: "Lista",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark_rounded),
          label: "Guardados",
        ),
        BottomNavigationBarItem(
          icon: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              "assets/images/person.png",
              width: 26,
              height: 26,
            ),
          ),
          label: "Perfil",
        ),
      ],
    );
  }
}
