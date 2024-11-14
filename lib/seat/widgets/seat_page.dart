import 'package:flutter/material.dart';
import 'package:flutter_train_app/seat/widgets/depart_arrival_station.dart';
import 'package:flutter_train_app/seat/widgets/seat_bottom.dart';
import 'package:flutter_train_app/seat/widgets/seat_box.dart';
import 'package:flutter_train_app/seat/widgets/selected_lable.dart';

class SeatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('좌석 선택'),
      ),
      body: Column(
        children: [
          DepartArrivalStation(),
          SizedBox(height: 20),
          SelectedLable(),
          SizedBox(height: 20),
          SeatBox(),
          SeatBottom(),
        ],
      ),
    );
  }
}
