import 'package:daelim_2025/presentation/common/widgets/white_box/white_box.dart';
import 'package:daelim_2025/presentation/main/widgets/circle_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class InDeContainer extends StatelessWidget {
  final String title;
  final int value;
  final VoidCallback onMinus;
  final VoidCallback onPlus;
  //fun 기능만 사용할 때의 voidCallback, 그렇지 않을때 fun

  const InDeContainer({
    super.key,
    required this.title,
    required this.value,
    required this.onMinus,
    required this.onPlus,
  });

  @override
  Widget build(BuildContext context) {
    return WhiteBox(
      padding: EdgeInsets.all(27),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 타이틀
          Text(title, style: TextStyle(fontSize: 18)),
          // 숫자
          Text(
            '$value',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6C63FF),
            ),
          ),
          // Minus-Plus 버튼
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              CircleIconButton(onTap: onMinus, icon: LucideIcons.minus),
              CircleIconButton(onTap: onPlus, icon: LucideIcons.plus),
            ],
          ),
        ],
      ),
    );
  }
}
