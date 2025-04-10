import 'package:daelim_2025/app/router/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  final _title = 'Get Started with \nTracking Your Health!';
  final _desc =
      'Calculate your BMI and stay on top of your wellness journey, effortlessly.';
  TextStyle get _titleStyle =>
      TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold);

  TextStyle get _descStyle => TextStyle(fontSize: 15, color: Color(0xFFC6C3F9));

  //앱 이름름
  Widget _buildAppName() {
    return Text('Bmi Calculator', style: _titleStyle);
  }

  //타이틀
  Widget _buildTitle() => Text(_title, style: _titleStyle);

  //설명
  Widget _buildDescription() {
    return Text(
      _desc,
      style: TextStyle(fontSize: 15, color: Color(0xFFC6C3F9)),
    );
  }

  Widget _buildTitleDesc() {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: _title, style: _titleStyle),
          TextSpan(text: '\n'),
          WidgetSpan(child: SizedBox(height: 30)),
          TextSpan(text: _desc, style: _descStyle),
        ],
      ),
    );
  }

  //시작 버튼
  Widget _buildStartButton(BuildContext context) {
    //context를 불러올 수 없으므로로
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        onPressed: () => context.go(AppRoute.main.toPath),
        //ToDO 메인화면 이동동
        style: ElevatedButton.styleFrom(foregroundColor: Color(0xff081854)),
        child: Text('Get Started'),
      ),
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

                _buildTitleDesc(),
                SizedBox(height: 30),
                _buildStartButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
