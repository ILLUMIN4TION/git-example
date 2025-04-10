import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget _buildContainer() {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F3FF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 90),
          child: Column(
            spacing: 25, //각 사이사이 마다 여백
            children: [
              SizedBox(height: 35),
              Text('BMI CALC', style: TextStyle(fontSize: 50)),
              Row(
                spacing: 20,
                children: [
                  Expanded(child: _buildContainer()),

                  Expanded(child: _buildContainer()),
                ],
              ),
              _buildContainer(),
              _buildContainer(),
              SizedBox(
                width: double.infinity,
                height: 75,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('calc bmi'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
