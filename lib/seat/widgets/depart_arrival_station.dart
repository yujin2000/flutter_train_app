import 'package:flutter/material.dart';

class DepartArrivalStation extends StatelessWidget {
  String depart;
  String arrive;
  DepartArrivalStation(this.depart, this.arrive);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        stationText(depart),
        Icon(
          Icons.arrow_circle_right_outlined,
          size: 30,
        ),
        stationText(arrive),
      ],
    );
  }

  Widget stationText(String text) {
    return Expanded(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30,
          color: Colors.purple,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
