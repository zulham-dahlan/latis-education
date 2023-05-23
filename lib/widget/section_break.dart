import 'package:flutter/material.dart';
import 'package:latiseducation_app/common/style.dart';

class SectionBreak extends StatelessWidget {
  const SectionBreak({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: whiteColor,
      height: 4,
      thickness: 4,
    );
  }
}
