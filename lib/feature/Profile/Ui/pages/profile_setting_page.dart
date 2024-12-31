import 'package:appointment_app/core/constants/image_assets.dart';
import 'package:appointment_app/core/helpers/extensions.dart';
import 'package:appointment_app/core/helpers/storage_helper.dart';
import 'package:appointment_app/core/routing/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileSettingPage extends StatelessWidget {
  const ProfileSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
        title: Text(
          "Setting",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: Column(
              children: [
                ListTile(
                  leading: SvgPicture.asset(ImageAsset.svgsAlert),
                  title: Text(
                    "Notification",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                ),
                ListTile(
                  leading:
                      SvgPicture.asset(ImageAsset.svgsProfileMessageQuestion),
                  title: Text(
                    "FAQ",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                ),
                ListTile(
                  leading: SvgPicture.asset(ImageAsset.svgsProfileLock),
                  title: Text(
                    "Security",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                ),
                ListTile(
                  leading:
                      SvgPicture.asset(ImageAsset.svgsProfileLanguageSquare),
                  title: Text(
                    "Language",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                ),
                ListTile(
                  onTap: () {
                    showLogoutDialog(context);
                  },
                  leading: SvgPicture.asset(ImageAsset.svgsProfileLogout),
                  title: Text(
                    "Logout",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: Colors.red),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Logout'),
          content: const Text('Are you sure you want to logout?'),
          actions: [
            TextButton(
              onPressed: () {
                context.pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                StorageHelper.clearAllSecuredData();
                context.pop();
                Navigator.of(context).pop();
                context.pushReplacementNamed(AppRouteName.loginPage);
              },
              child: const Text('Logout'),
            ),
          ],
        );
      },
    );
  }
}
