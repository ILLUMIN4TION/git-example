import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  //앱 이름름
  Widget _buildAppName() {
    return Text(
      'Bmi Calculator',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 30,
        fontStyle: FontStyle.italic,
      ),
    );
  }

  //타이틀
  Widget _buildTitle() => Text(
    'Get Started with \nTracking Your Health!',
    style: TextStyle(
      color: Colors.white,
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
  );
  //설명
  Widget _buildDescription() {
    return Text(
      'Calculate your BMI and stay on top of your wellness journey, effortlessly.',
      style: TextStyle(fontSize: 15, color: Color(0xFFC6C3F9)),
    );
  }

  //시작 버튼
  Widget _buildStartButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(onPressed: () {}, child: Text('Get Started')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6C63FF),
      body: SafeArea(
        child: Center(
          child: Container(
            width: 280, //width infinity를 사용하기위해 데코레이션용 Container안에 집어 넣기
            margin: const EdgeInsets.symmetric(horizontal: 30), //
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildAppName(),
                SizedBox(
                  height: 60,
                ), //편하게 여백주는 방법, sizedbox에 height값을 통하여 빈공간을 생설할 수 있음
                Image.asset('assets/images/bike.png'),

                SizedBox(height: 95),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [_buildTitle()],
                ),

                SizedBox(height: 15),
                _buildDescription(),
                SizedBox(height: 40),
                _buildStartButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
