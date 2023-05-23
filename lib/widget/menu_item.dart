import 'package:flutter/material.dart';
import 'package:latiseducation_app/common/style.dart';

class MenuItem extends StatelessWidget {
  Function() onTap;
  String title;
  String image;
  MenuItem(
      {super.key,
      required this.onTap,
      required this.title,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: onTap,
          style: TextButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(16),
              backgroundColor: whiteColor),
          child: Image.asset(
            image,
            width: 20,
            height: 20,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
