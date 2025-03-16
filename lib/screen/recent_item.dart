import 'package:flutter/material.dart';

class RecentItem extends StatelessWidget {
  final String itemName;
  final String sellerName;
  final DateTime sellTime;


  const RecentItem(
      {super.key,
      required this.itemName,
      required this.sellerName,
      required this.sellTime});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.only(bottom: 10),
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Row(
            children: [
              ///사진
              Container(
                width: 85,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/mice.jpg')),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),

              ///정보
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        itemName,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/mice.jpg')),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                          Text(
                            sellerName,
                            style: TextStyle(
                              fontSize: 17,
                              color: Color(0xFF646464),
                            ),
                          )
                        ],
                      ),
                      Text(
                        '${sellTime.hour.toString()}:${sellTime.minute.toString()} AM',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              ///버튼
              Container(
                width: 40,
                child: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
