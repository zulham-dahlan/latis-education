import 'package:flutter/material.dart';
import 'package:latiseducation_app/ui/feed_page.dart';
import 'package:latiseducation_app/widget/menu_item.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      shrinkWrap: true,
      children: <Widget>[
        MenuItem(
          onTap: () {},
          image: 'images/jadwal_icon.png',
          title: 'Jadwal',
        ),
        MenuItem(
          onTap: () {},
          image: 'images/gaji_icon.png',
          title: 'Gaji',
        ),
        MenuItem(
          onTap: () {},
          image: 'images/payment_icon.png',
          title: 'Bukti\nPembayaran',
        ),
        MenuItem(
          onTap: () {},
          image: 'images/modul_icon.png',
          title: 'Modul',
        ),
        MenuItem(
          onTap: () {},
          image: 'images/daily_icon.png',
          title: 'Daily\nTutoring',
        ),
        MenuItem(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const FeedPage()));
          },
          image: 'images/feed_icon.png',
          title: 'Feed',
        )
      ],
    );
  }
}
