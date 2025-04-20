import 'package:daelim_2025/presentation/common/widgets/white_box/white_box.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double bmi;

  /*
  
   */

  const ResultScreen({super.key, required this.bmi});

  @override
  Widget build(BuildContext context) {
    String bmiString =
        bmi < 10 ? '0$bmi' : bmi.toString(); //10보다 작으면 앞에 0을 붙이기기 <- 응용햇음음

    String bmiType = '';
    if (bmi < 18.5) {
      bmiType = '저체중';
    } else if (18.5 <= bmi && bmi < 23) {
      bmiType = '정상체중';
    } else if (23 >= bmi && bmi < 25) {
      bmiType = '비만전단계';
    } else if (25 <= bmi && bmi < 30) {
      bmiType = '1단계 비만';
    } else if (30 <= bmi && bmi < 35) {
      bmiType = '2단계 비만';
    } else {
      bmiType = '3단계 비만';
    }

    return Scaffold(
      backgroundColor: Color(0xFFF4F3FF),
      appBar: AppBar(
        backgroundColor: Color(0xFFF4F3FF),
        title: Text('BMI result'),
      ),
      body: SafeArea(
        child: Placeholder(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: WhiteBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(color: Color(0xff6c63ff), fontSize: 24),

                      children: [
                        TextSpan(
                          text: bmiString.substring(0, 2),
                          style: TextStyle(
                            fontSize: 120,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: bmiString.substring(2),
                          style: TextStyle(fontSize: 45),
                        ),
                      ],
                    ),
                  ),
                  //비만인지 아닌지 bmi변수를 통해 출력하는 코드 만들기
                  Text(bmiType),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
