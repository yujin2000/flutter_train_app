import 'package:flutter/material.dart';

class SeatBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Column 안에 ListView 를 사용할 때는 높이를 고정하거나 Expanded 로 감싸주어야 함
    return Expanded(
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              numBox('A'),
              numBox('B'),
              numBox(''),
              numBox('C'),
              numBox('D'),
            ],
          ),
          for (int i = 1; i <= 20; i++) seatBoxRow('$i'),
        ],
      ),
    );
  }

  Widget seatBoxRow(String text) {
    return Padding(
      // 좌석 Box 밑에만 padding 값 8 주기 위해 Row 감싸기
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          seatBox(),
          SizedBox(width: 4),
          seatBox(),
          Container(
            alignment: Alignment.center,
            width: 50,
            height: 50,
            child: Text(
              text,
              style: TextStyle(fontSize: 18),
            ),
          ),
          seatBox(),
          SizedBox(width: 4),
          seatBox(),
        ],
      ),
    );
  }

  Widget numBox(String text) {
    return Container(
      alignment: Alignment.center,
      width: 50,
      height: 50,
      child: Text(text, style: TextStyle(fontSize: 18)),
    );
  }

  Container seatBox() {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(8)),
    );
  }
}
