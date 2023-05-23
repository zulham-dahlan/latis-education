import 'package:flutter/material.dart';
import 'package:latiseducation_app/common/style.dart';
import 'package:latiseducation_app/ui/new_post_page.dart';
import 'package:latiseducation_app/widget/home_daily_report.dart';
import 'package:latiseducation_app/widget/home_header.dart';
import 'package:latiseducation_app/widget/home_menu.dart';
import 'package:latiseducation_app/widget/home_test.dart';
import 'package:latiseducation_app/widget/section_break.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              HomeHeader(),
              SectionBreak(),
              HomeMenu(),
              SectionBreak(),
              HomeTest(),
              SectionBreak(),
              HomeDailyReport(),
            ],
          ),
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NewPostPage()));
        },
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          backgroundColor: Colors.white,
          maximumSize: const Size(130, 50),
          padding: const EdgeInsets.all(16),
          shadowColor: greyColor,
          elevation: 5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/plus_icon.png',
              width: 24,
              height: 24,
            ),
            const SizedBox(
              width: 8,
            ),
            const Text(
              'Posting',
              style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
