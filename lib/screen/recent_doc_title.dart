import 'package:flutter/material.dart';

class RecentDocTitle extends StatelessWidget {
  const RecentDocTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return  /// Title
      Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Recent Documents',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'View All',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey),
            )
          ],
        ),
      );
  }
}
