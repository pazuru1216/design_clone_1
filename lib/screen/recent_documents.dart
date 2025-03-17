import 'package:design_clone_1/screen/recent_item.dart';
import 'package:design_clone_1/model/stock_model.dart';
import 'package:flutter/material.dart';

class RecentDocuments extends StatelessWidget {
  RecentDocuments({super.key});

  Map<String, List<StockModel>> stockitems = {
    'Maxi': [
      StockModel(
        itemName: 'Sidar',
        sellerName: 'Maxi',
        sellTime: DateTime.utc(2025, 03, 20),
      ),
      StockModel(
        itemName: 'Pepsiii',
        sellerName: 'Maxi',
        sellTime: DateTime.utc(2025, 03, 01),
      ),
      StockModel(
        itemName: 'Orange',
        sellerName: 'Maxi',
        sellTime: DateTime.utc(2025, 03, 01),
      ),
      StockModel(
        itemName: 'Ipod',
        sellerName: 'Maxi',
        sellTime: DateTime.utc(2025, 03, 01),
      ),
    ],
  };

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
            child: Column(
                children: stockitems.containsKey('Maxi')
                ? stockitems['Maxi']! .map(
                      (e) => RecentItem(
                        itemName: e.itemName,
                        sellerName: e.sellerName,
                        sellTime: e.sellTime,
                      ),
                    )
                    .toList()
                    :[]
                // [
                //   RecentItem(
                //     itemName: 'Coca Cola',
                //     sellerName: 'Brain Stella',
                //     sellTime: DateTime.now(),
                //   ),
                // ],
                ),
          ),
        ],
      ),
    );
  }
}