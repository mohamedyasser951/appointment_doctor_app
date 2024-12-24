import 'package:appointment_app/core/constants/image_assets.dart';
import 'package:appointment_app/core/theme/colors.dart';
import 'package:appointment_app/feature/Home/UI/page/home_page.dart';
import 'package:appointment_app/feature/Profile/Ui/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainLayoutPage extends StatefulWidget {
  const MainLayoutPage({super.key});

  @override
  MainLayoutPageState createState() => MainLayoutPageState();
}

class MainLayoutPageState extends State<MainLayoutPage> {
  int _selectedIndex = 0;
  List<Widget> pages = [
    const HomePage(),
    const ProfilePage(),
    const ProfilePage(),
    const ProfilePage()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: ColorManger.primaryColor,
        onPressed: () {
          // Handle the floating action button press
        },
        child: SvgPicture.asset(ImageAsset.svgsBottomNavSearch),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        height: 98.h,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: const CircularNotchedRectangle(),
        notchMargin: 5.0,
        child: BottomNavigationBar(
          backgroundColor: Colors.blueAccent,
          elevation: 0.0,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(ImageAsset.svgsBottomNavHome),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(ImageAsset.svgsBottomNavMessageText),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(ImageAsset.svgsBottomNavCalendar),
              label: 'favorite',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          currentIndex: _selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.white,
          unselectedItemColor: ColorManger.darkBlue,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
