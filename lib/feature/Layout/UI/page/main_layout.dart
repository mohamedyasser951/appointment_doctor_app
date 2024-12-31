import 'package:appointment_app/core/constants/image_assets.dart';
import 'package:appointment_app/core/di/dependency_injection.dart';
import 'package:appointment_app/core/theme/colors.dart';
import 'package:appointment_app/feature/Chat/Ui/chat_page.dart';
import 'package:appointment_app/feature/Home/Logic/home_cubit.dart';
import 'package:appointment_app/feature/Home/UI/page/home_page.dart';
import 'package:appointment_app/feature/Profile/Logic/ProfileCubit/profile_cubit.dart';
import 'package:appointment_app/feature/Profile/Ui/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    const ChatPage(),
    const ChatPage(),
    const ProfilePage()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    // getIt<HomeCubit>().emitspecializationState();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ProfileCubit>(),
        ),
        BlocProvider(
            create: (context) => getIt<HomeCubit>()..emitspecializationState()),
      ],
      child: Scaffold(
        body: pages[_selectedIndex],
        floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: ColorManger.primaryColor,
          elevation: 10,
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
            backgroundColor: ColorManger.seconderyColor,
            elevation: 10.0,
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
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  ImageAsset.svgsProfileSetting,
                  color: Colors.black,
                ),
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
      ),
    );
  }
}
