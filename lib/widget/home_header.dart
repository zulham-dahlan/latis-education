import 'package:flutter/material.dart';
import 'package:latiseducation_app/common/style.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'images/bg_home_header.png',
              ),
              fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'images/latis_logo.png',
                height: 25,
                fit: BoxFit.fitHeight,
              ),
              const Icon(
                Icons.notifications,
                color: Colors.white,
              )
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  'images/avatar_satu.png',
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
                  const Text(
                    'Kak Jihan',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                        size: 14,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Cibinong',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            height: 90,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    ImageIcon(
                      AssetImage(
                        'images/profile_icon.png',
                      ),
                      color: primaryColor,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text('Profile')
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    ImageIcon(
                      AssetImage('images/presensi_icon.png'),
                      color: primaryColor,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text('Presensi')
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    ImageIcon(
                      AssetImage('images/history_icon.png'),
                      color: primaryColor,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text('History')
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
