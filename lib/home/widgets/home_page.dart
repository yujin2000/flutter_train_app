import 'package:flutter/material.dart';
import 'package:flutter_train_app/home/widgets/station_selection_box.dart';
import 'package:flutter_train_app/seat/widgets/seat_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? depart;
  String? arrive;

  void onStationChanged(String title, String station) {
    setState(() {
      title == '출발역' ? depart = station : arrive = station;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('기차 예매'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StationSelectionBox(depart, arrive, onStationChanged),
            SizedBox(height: 20),
            // 버튼
            SizedBox(
              height: 56,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // 출발/도착역 모두 선택이 되어있어야 좌석 선택 가능
                  if (depart != null && arrive != null) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SeatPage(depart!, arrive!);
                    }));
                  }
                },
                child: Text(
                  '좌석 선택',
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
          ],
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
