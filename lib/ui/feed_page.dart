import 'package:flutter/material.dart';
import 'package:latiseducation_app/common/style.dart';
// ignore: depend_on_referenced_packages
import 'package:extended_tabs/extended_tabs.dart';
import 'package:latiseducation_app/widget/my_feed_list_view.dart';
import 'package:latiseducation_app/widget/tutor_feed_list_view.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Image.asset(
            'images/latis_logo.png',
            height: 25,
            fit: BoxFit.fitHeight,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 24),
            child: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          )
        ],
      ),
      backgroundColor: primaryColor,
      body: Container(
        padding: const EdgeInsets.all(24),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Home / Feed',
              style: TextStyle(color: greyColor, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 32,
            ),
            Material(
              borderRadius: BorderRadius.circular(5),
              color: whiteColor,
              child: TabBar(
                indicator: const ColorTabIndicator(primaryColor),
                labelColor: whiteColor,
                unselectedLabelColor: primaryColor,
                labelStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                tabs: const [
                  Tab(text: "Feed Tutor"),
                  Tab(text: "Feed Saya"),
                ],
                controller: _tabController,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Expanded(
              child: TabBarView(controller: _tabController, children: const [
                TutorFeedListView(),
                MyFeedListView(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
