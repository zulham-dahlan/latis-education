import 'package:flutter/material.dart';
import 'package:latiseducation_app/common/style.dart';
import 'package:latiseducation_app/data/feed_model.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';
import 'package:latiseducation_app/ui/feed_datail.dart';

class FeedCard extends StatelessWidget {
  FeedCard({super.key, required this.feedModel});
  FeedModel feedModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    feedModel.avatarAuthor,
                    height: 50,
                    width: 50,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kak ${feedModel.nameAuthor}',
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      DateFormat('d MMMM yyyy HH:mm', "id_ID")
                          .format(feedModel.createdAt),
                      style: const TextStyle(fontSize: 10),
                    )
                  ],
                )
              ],
            ),
            const Icon(Icons.more_vert)
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            feedModel.thumbnail,
            width: double.infinity,
            height: 170,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          feedModel.title,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          feedModel.description,
          textAlign: TextAlign.justify,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 16,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FeedDetail(detailFeed: feedModel)));
          },
          child: const Text(
            'Lihat Selengkapnya',
            style: TextStyle(color: primaryColor),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        const Divider(
          color: whiteColor,
          height: 2,
          thickness: 2,
        ),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
