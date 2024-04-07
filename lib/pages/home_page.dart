import 'package:flutter/material.dart';
import 'package:myapp_project/actions/show_Aapi.dart';
import 'package:myapp_project/actions/show_Mapi.dart';
import 'package:myapp_project/pages/appbar_page.dart';

import 'package:myapp_project/pages/pageC.dart';
import 'package:myapp_project/pages/pageL.dart';
import 'package:myapp_project/pages/pageR.dart';

var BottomBarBackgroundColor = Color.fromARGB(255, 79, 197, 233);
var BottomBarForegroundActiveColor = Color.fromARGB(255, 11, 22, 68);
var BottomBarForegroundInActiveColor = Colors.white60;
var SplashColor = Color.fromARGB(255, 242, 128, 34);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1; // กำหนดค่าเริ่มต้นของ _selectedIndex เป็น 1

  void _handleClickButton(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    Widget _buildPageBody() {
      switch (_selectedIndex) {
        case 0:
          return const pageLeft();
        // return const ShowAPIanimation();
        case 1:
          return const pageCenter();
        case 2:
          return const pageRight();
        // return const ShowAPImovie();

        default:
          return const pageCenter();
      }
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0), // กำหนดความสูงของ AppBar เป็น 100
        child: pageAppbar(
            imageUrl:
                'https://pics.craiyon.com/2023-06-12/045fbf5843374838b9841a895bd7fc15.webp'),
      ),
//----------//----------//----------//----------//----------//----------//
      backgroundColor: Color.fromARGB(185, 117, 227, 248),
      
      floatingActionButton: SizedBox(
        width: 100.0,
        height: 90.0,
        child: FloatingActionButton(
          backgroundColor: BottomBarBackgroundColor,
          // splashColor: kSplashColor,
          shape: CircleBorder(),
          onPressed: () {},
          child: AppBottomMenuItem(
            iconData: Icons.home_mini_sharp,
            text: 'Home',
            isSelected: _selectedIndex == 1,
            onClick: () => _handleClickButton(1),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        height: 70.0,
        padding: EdgeInsets.zero,
        color: BottomBarBackgroundColor,
        // notchMargin: 4.0,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: AppBottomMenuItem(
                iconData: Icons.question_mark_rounded,
                text: 'Random',
                isSelected: _selectedIndex == 0,
                onClick: () => _handleClickButton(0),
              ),
            ),
            SizedBox(width: 100.0),
            Expanded(
              child: AppBottomMenuItem(
                iconData: Icons.view_list_outlined,
                text: 'List',
                isSelected: _selectedIndex == 2,
                onClick: () => _handleClickButton(2),
              ),
            ),
          ],
        ),
      ),
      body: Container(child: Center(child: _buildPageBody())),
    );
  }
}

class AppBottomMenuItem extends StatelessWidget {
  const AppBottomMenuItem({
    super.key,
    required this.iconData, // declare iconData as required
    required this.text,
    required this.isSelected,
    required this.onClick,
  });

  final IconData iconData;
  final String text;
  final bool isSelected;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var color = isSelected
        ? BottomBarForegroundActiveColor
        : BottomBarForegroundInActiveColor;

    return ClipOval(
      child: Material(
        color: Colors.transparent, // button color
        child: InkWell(
          // splashColor: kSplashColor,
          onTap: onClick, // button pressed
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(iconData, color: color),
              SizedBox(height: 4.0),
              Text(
                text,
                textAlign: TextAlign.center,
                style: theme.textTheme.labelMedium!.copyWith(
                  color: color,
                  // fontWeight: isSelected ? FontWeight.bold : null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
