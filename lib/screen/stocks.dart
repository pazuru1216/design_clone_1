import 'package:design_clone_1/screen/stock_icon.dart';
import 'package:flutter/material.dart';

class Stocks extends StatelessWidget {
  const Stocks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      child: Row(
        children: [
          StockIcon(
            numberText: 60,
            stockName: 'Out of Stock',
            iconName:
                Icon(Icons.notifications_outlined, color: Color(0xFF1E7BE9)),
          ),
          StockIcon(
              numberText: 20,
              stockName: 'Low Stock',
              iconName:
                  Icon(Icons.bubble_chart, color: Color(0xFF1E7BE9))),
          StockIcon(
              numberText: 30,
              stockName: 'Total Items',
              iconName:
                  Icon(Icons.event_note, color: Color(0xFF1E7BE9))),
        ],
      ),
    );
  }
}