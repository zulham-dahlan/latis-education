import 'package:flutter/material.dart';
import 'package:latiseducation_app/data/feed_model.dart';
import 'package:latiseducation_app/widget/feed_card.dart';

class TutorFeedListView extends StatelessWidget {
  const TutorFeedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listFeeds.length,
        itemBuilder: (context, index) {
          FeedModel feed = listFeeds[index];
          return FeedCard(feedModel: feed);
        });
  }
}
