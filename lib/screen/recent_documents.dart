import 'package:design_clone_1/screen/recent_item.dart';
import 'package:flutter/material.dart';

class RecentDocuments extends StatelessWidget {
  const RecentDocuments({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          /// Title
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
          ),

          /// Cards
          Container(
            child:Column(
              children: [
                RecentItem(
                  itemName: 'Coca Cola',
                  sellerName: 'Brain Stella',
                  sellTime: DateTime.now(),
                ),
                RecentItem(
                  itemName: 'GOOSE',
                  sellerName: 'Lattee',
                  sellTime: DateTime.now(),
                ),
                RecentItem(
                  itemName: 'Pandaaaa',
                  sellerName: 'Brain Stella',
                  sellTime: DateTime.now(),
                ),
                RecentItem(
                  itemName: 'Caramel',
                  sellerName: 'Brain Stella',
                  sellTime: DateTime.now(),
                ),


              ],
            )
          ),
        ],
      ),
    );
  }
}
