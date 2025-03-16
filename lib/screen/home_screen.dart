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
              horizontal: 10,
            ),
            child: Container(
              child: Column(
                children: [
                  ///첫번째 줄
                  Container(
                    color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20)
                            )
                          ),
                        ),

                        ///알림, 추가버튼
                        Container(
                          child: Row(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20)
                                    )
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(8, 0, 0, 0),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20)
                                    )
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  /// 성취 알람칸들
                  Container(
                    child: Row(
                      children: [],
                    ),
                  ),

                  /// Recent Documents
                  /// Title
                  Container(
                    child: Row(
                      children: [],
                    ),
                  ),

                  /// Cards
                  Container(
                    child: Column(
                      children: [],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
