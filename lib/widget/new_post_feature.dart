import 'package:flutter/material.dart';
import 'package:latiseducation_app/common/style.dart';

class NewPostFeature extends StatelessWidget {
  NewPostFeature(
      {super.key,
      required this.icon,
      required this.colorIcon,
      required this.nameFeature,
      required this.function});
  IconData icon;
  Color colorIcon;
  String nameFeature;
  Function() function;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: greyColor,
              width: 1.0,
            ),
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: colorIcon,
            ),
            const SizedBox(
              width: 16,
            ),
            Text(nameFeature)
          ],
        ),
      ),
    );
  }
}
