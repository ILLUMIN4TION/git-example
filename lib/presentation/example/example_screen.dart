import 'package:flutter/material.dart';

class ExampleScreen extends StatefulWidget {
  const ExampleScreen({super.key});

  @override
  State<ExampleScreen> createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {
  int _count = 0;

  void _handleIncreaseCount() {
    setState(() {
      //setState를 사용 UI변화, Stateful 사용
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _handleIncreaseCount,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(backgroundColor: Colors.blue, title: Text('flutter demo')),
      body: SafeArea(
        // 앱바, 네비게이션 바를 제외한 나머지 공간
        child: SizedBox(
          //사이즈만 사용시 사이즈드 박스, 데코레이션이 필요하면 컨테이너 사용하면됨
          width: double.infinity, //잘사용해야함 row에서는 사용하면 에러
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('버튼 클릭 시 횟수 증가', style: TextStyle(fontSize: 20)),
              Text('$_count', style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    ); //안드로이드의 레이아웃 기능
  }
}
