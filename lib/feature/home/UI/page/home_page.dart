import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/feature/Home/UI/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.fromLTRB(20, 16, 20, 25),
            width: double.infinity,
            color: Colors.amber,
            child: Column(
              children: [
                const HomeTopBar(),
                verticalSpace(24)
              ],
            ),
          ),
        ));
  }
}
