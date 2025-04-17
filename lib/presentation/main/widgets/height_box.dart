import 'package:daelim_2025/presentation/common/widgets/white_box/white_box.dart';
import 'package:flutter/material.dart';

class HeightBox extends StatefulWidget {
  const HeightBox({super.key});

  @override
  State<HeightBox> createState() => _HeightBoxState();
}

class _HeightBoxState extends State<HeightBox> {
  double _height = 100.0;
  //0으로 설정 시 오류 100으로 설정정

  @override
  Widget build(BuildContext context) {
    return WhiteBox(
      padding: EdgeInsets.all(18),
      child: Column(
        children: [
          // 타이틀틀
          Text('Height (CM)', style: TextStyle(fontSize: 18)),

          // 숫자
          Text(
            '$_height',
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6C63FF),
            ),
          ),
          //슬라이더는 버튼처럼  ++같은 코드가 필요하지 않음, 슬라이더가 값을 전달해주기 때문문
          Slider(
            year2023: false,
            value: _height,
            min: 50.0,
            max: 300.0,
            onChanged: (double value) {
              setState(() {
                _height = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
