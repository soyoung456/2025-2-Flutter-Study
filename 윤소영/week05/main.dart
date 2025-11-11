import 'package:flutter/material.dart';
import 'package:toonflix/widgets/Button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: Padding(
          // 글씨가 너무 화면에 붙지 않도록
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ), // 수직과 수평 padding 지정
          child: Column(
            // 왼쪽으로 글씨 붙이기
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // size가 있는 box
              const SizedBox(height: 80),
              Row(
                // 글씨가 오른쪽 끝으로 가도록 설정
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    // 두 텍스트 모두 끝에 맞춰지도록
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Hey, Selena',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          // 글씨 굵기 조절
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          color: Colors.white.withAlpha(100),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 120),
              Text(
                'Total Balance',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white.withAlpha(100),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                '\$5 194 482', // 변수가 아니라는 것을 나타내기 위한 '/'
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w600, // 글씨 굵기 조정
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                // 2개의 버튼 사이에 빈 공간 생성
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Button(
                    text: 'Transfer',
                    bgColor: Color(0xFFF1B33B),
                    textColor: Colors.black,
                  ),
                  const Button(
                    text: 'Request',
                    bgColor: Color(0xFF1F2123),
                    textColor: Colors.white,
                  ),
                ],
              ),
              const SizedBox(height: 100),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Wallets',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.white.withAlpha(100),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF1F2123),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Euro',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                '6 428',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(width: 5),
                              Text(
                                'EUR',
                                style: TextStyle(
                                  color: Colors.white.withAlpha(100),
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
