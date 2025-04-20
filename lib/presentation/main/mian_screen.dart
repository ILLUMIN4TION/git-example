import 'package:daelim_2025/app/router/app_route.dart';
import 'package:daelim_2025/presentation/common/widgets/white_box/white_box.dart';
import 'package:daelim_2025/presentation/main/widgets/gender_box.dart';
import 'package:daelim_2025/presentation/main/widgets/height_box.dart';
import 'package:daelim_2025/presentation/main/widgets/in_de_container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _age = 0;
  int _weight = 0;
  double _height = 100.0;
  Gender _gender = Gender.male; // 기본값 저장

  void _onCalculatored() {
    debugPrint('나이:$_age');
    debugPrint('무게:$_weight');
    debugPrint('키키:$_height');
    debugPrint('성별:$_gender');

    //round로 int형병환 -> 100-> 1m
    final chHeight = _height.round() / 100;
    //bmi 계산식 몸무게/키*키
    final bmi = _weight / (chHeight * chHeight);
    debugPrint('BMI: $bmi');

    context.pushNamed(
      AppRoute.result.name,
      queryParameters: {'bmi': bmi.toStringAsFixed(2)},
    );

    // context.goNamed(
    //   AppRoute.result.name,
    //   queryParameters: {'bmi : ${bmi.toStringAsFixed(2)}'},
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F3FF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 90),
          child: Column(
            spacing: 25,
            children: [
              SizedBox(height: 35),
              Text('BMI CALCULATOR', style: TextStyle(fontSize: 20)),
              //#region 나이와 몸무게를를 입력
              Row(
                spacing: 20,
                children: [
                  Expanded(
                    child: InDeContainer(
                      title: 'Age',
                      value: _age,
                      onMinus: () {
                        //사람 나이가 0살보다 적을 수 없으므로 return처리,
                        if (_age == 0) return;

                        setState(() => _age--);
                        debugPrint('Age: 마이너스 클릭');
                      },
                      onPlus: () {
                        setState(() => _age++);
                        debugPrint('Age: 플러스 클릭');
                      },
                    ),
                  ),
                  Expanded(
                    child: InDeContainer(
                      title: 'Weight (KG)',
                      value: _weight,
                      onMinus: () {
                        if (_weight == 0) return;

                        setState(() => _weight--);
                        debugPrint('Weight: 마이너스 클릭');
                      },
                      onPlus: () {
                        setState(() => _weight++);
                        debugPrint('Weight: 플러스 클릭');
                      },
                    ),
                  ),
                ],
              ),
              //region 키
              HeightBox(
                onChanged: (height) {
                  _height = height;
                  debugPrint('키: $height');
                },
              ),
              // WhiteBox(padding: EdgeInsets.all(25), child: SizedBox.shrink()),

              //region 성별별
              GenderBox(
                onChanged: (gender) {
                  _gender = gender;
                  // debugPrint("성별: $gender");
                },
              ),

              //region Calc button
              SizedBox(
                width: double.infinity,
                height: 75,
                child: ElevatedButton(
                  onPressed: () {
                    _onCalculatored();
                  },
                  child: Text('Calculate BMI'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
