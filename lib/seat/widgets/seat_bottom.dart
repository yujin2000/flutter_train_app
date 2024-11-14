import 'package:flutter/material.dart';

class SeatBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 버튼을 갖고 있는 Container 생성
    return Container(
      height: 115,
      width: double.infinity,
      child: Column(
        children: [
          // 버튼 패딩 가로 길이 조절
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            // ElevatedButton 크기 지정을 위해 SizedBox 사용
            child: SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  '에매 하기',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
