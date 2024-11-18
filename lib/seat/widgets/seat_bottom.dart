import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeatBottom extends StatelessWidget {
  SeatBottom(this.selectedSeats);
  Set<String> selectedSeats;

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
                onPressed: () {
                  // 비어있으면 예약 불가
                  if (selectedSeats.isNotEmpty) {
                    reservationDialog(context);
                  }
                },
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

  Future<dynamic> reservationDialog(BuildContext context) {
    return showCupertinoDialog(
      context: context,
      builder: (context) {
        String seats = selectedSeats.join(', ');
        return CupertinoAlertDialog(
          title: Text('예매 하시겠습니까?'),
          content: Text('좌석 : $seats'),
          actions: [
            CupertinoDialogAction(
              isDefaultAction: true, // 취소
              onPressed: () {
                Navigator.of(context).pop(); // 뒤로가기
              },
              child: Text(
                '취소',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
            CupertinoDialogAction(
              isDestructiveAction: true, // 확인
              onPressed: () {
                // 특정 조건으로(첫 화면)으로 이동
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: Text(
                '확인',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
