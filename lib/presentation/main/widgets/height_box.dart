import 'package:daelim_2025/presentation/common/widgets/white_box/white_box.dart';
import 'package:flutter/material.dart';

class HeightBox extends StatefulWidget {
  final Function(double height) onChanged;

  const HeightBox({super.key, required this.onChanged});

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
            '${_height.toStringAsFixed(1)}',
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
            activeColor: Color(0xFF6C63ff),
            onChanged: (double value) {
              setState(() {
                _height = value;
              });

              widget.onChanged(_height);
            },
          ),
        ],
      ),
    );
  }
}
