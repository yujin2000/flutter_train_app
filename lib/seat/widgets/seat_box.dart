import 'package:flutter/material.dart';

class SeatBox extends StatelessWidget {
  SeatBox(this.selectedSeats, this.onSelected);

  Set<String> selectedSeats;
  void Function(String row, String col) onSelected;

  @override
  Widget build(BuildContext context) {
    // Column 안에 ListView 를 사용할 때는 높이를 고정하거나 Expanded 로 감싸주어야 함
    return Expanded(
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              textBox('A'),
              textBox('B'),
              textBox(''),
              textBox('C'),
              textBox('D'),
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
          seatBox('A', text),
          SizedBox(width: 4),
          seatBox('B', text),
          textBox(text),
          seatBox('C', text),
          SizedBox(width: 4),
          seatBox('D', text),
        ],
      ),
    );
  }

  Widget textBox(String text) {
    return Container(
      alignment: Alignment.center,
      width: 50,
      height: 50,
      child: Text(text, style: TextStyle(fontSize: 18)),
    );
  }

  Container seatBox(String row, String col) {
    // 좌석 선택 체크
    bool selected = selectedSeats.contains('$row:$col');
    return Container(
      width: 50,
      height: 50,
      child: GestureDetector(
        onTap: () {
          print('seatBox $row - $col 클릭');
          onSelected(row, col);
        },
      ),
      decoration: BoxDecoration(
        color: selected ? Colors.purple : Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
