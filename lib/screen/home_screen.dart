import 'package:design_clone_1/screen/header.dart';
import 'package:design_clone_1/screen/recent_documents.dart';
import 'package:design_clone_1/screen/stocks.dart';
import 'package:design_clone_1/screen/sub_header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE0E0E0),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Container(
            child: Column(
              children: [
                /// header줄
                Header(),

                // search줄
                SubHeader(),

                /// stocks
                Stocks(),

                /// Recent Documents
                RecentDocuments(

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
