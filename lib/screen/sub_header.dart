import 'package:flutter/material.dart';

class SubHeader extends StatefulWidget {
  const SubHeader({super.key});

  @override
  State<SubHeader> createState() => _SubHeaderState();
}

class _SubHeaderState extends State<SubHeader> {
  bool searchTap = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      child: Row(
        children: [

          /// 검색창
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    searchTap = !searchTap;
                  });
                  print('click ${searchTap}');
                  FocusScope.of(context).unfocus();
                },
                child: Container(
                  alignment: Alignment.center,
                  child: searchTap
                  ? TextFormField(
                    decoration: InputDecoration(
                      ///입력창 밑줄 없애기
                      border: InputBorder.none,
                      // isCollapsed: true,
                    ),
                  )
                  : Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 30,
                      ),
                      Text(
                        '텍스트박스 들어갈 곳',
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          ///저건 뭔 버튼이야 일단 버튼
          Container(
            margin: EdgeInsets.fromLTRB(8, 0, 0, 0),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Icon(Icons.tune),
          ),
        ],
      ),
    );
  }
}