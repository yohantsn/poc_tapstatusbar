import 'package:flutter/material.dart';

class BottomNavigator extends StatelessWidget {
  const BottomNavigator({Key? key,
    required this.onItemTapped,
    required this.selectedIndex}) : super(key: key);

  final int selectedIndex;
  final Function onItemTapped;

  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.of(context).padding.bottom;

    return Container(
      height: bottomPadding + 56,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFFE09488),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, color: Colors.white),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline, color: Colors.white),
              label: "Home"
          ),
        ],
        onTap: (value) => onItemTapped(value),
        currentIndex: selectedIndex,
      ),
    );
  }
}
