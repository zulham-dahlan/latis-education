import 'package:flutter/material.dart';
import 'package:latiseducation_app/common/style.dart';
import 'package:latiseducation_app/data/feed_model.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

class FeedDetail extends StatelessWidget {
  FeedDetail({super.key, required this.detailFeed});

  FeedModel detailFeed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
          padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
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
                            detailFeed.avatarAuthor,
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
                              'Kak ${detailFeed.nameAuthor}',
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
                                  .format(detailFeed.createdAt),
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
                    detailFeed.thumbnail,
                    width: double.infinity,
                    height: 170,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  detailFeed.title,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  detailFeed.description,
                  textAlign: TextAlign.justify,
                  style: TextStyle(height: 1.5),
                ),
                const SizedBox(
                  height: 32,
                ),
              ],
            ),
          )),
    );
  }
}
