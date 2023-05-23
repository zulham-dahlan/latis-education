import 'package:flutter/material.dart';

class HomeDailyReport extends StatelessWidget {
  const HomeDailyReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Daily Report',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
              'Real time report belajar siswa, wajib diisi setiap pertemuan ya kak!')
        ],
      ),
    );
  }
}
