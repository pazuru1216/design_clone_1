import 'package:flutter/material.dart';

class StockIcon extends StatelessWidget {
  final int numberText;
  final String stockName;
  final iconName;

  const StockIcon({
    required this.numberText,
    required this.stockName,
    required this.iconName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 18),
          height: 145,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///아이콘 배경
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Color(0xFFDCECFF),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: iconName,
              ),

              /// 숫자 텍스트
              Text(
                numberText.toString(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),

              /// 설명 텍스트
              Text(
                stockName,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
    );
  }
}
