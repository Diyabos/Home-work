import 'package:flutter/material.dart';

class HightSelectionsection extends StatefulWidget {
  const HightSelectionsection({super.key});

  @override
  State<HightSelectionsection> createState() => _HightSelectionsectionState();
}

class _HightSelectionsectionState extends State<HightSelectionsection> {
  double _hight = 180;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: CustomBackGroundContainer(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'HEIGHT',
              style: TextStyle(fontSize: 18, color: Color(0xff8a8a96)),
            ),
            Row(
              textBaseline: TextBaseline.alphabetic,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _hight.round().toString(),
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    height: 1,
                  ),
                ),
                Text('cm'),
              ],
            ),
            Expanded(
              child: SliderTheme(
                data: SliderThemeData(trackHeight: 1),
                child: Slider(
                  activeColor: Colors.white,
                  inactiveColor: Color(0xff8C8D9A),
                  thumbColor: Color(0xffeb0d54),
                  value: _hight,
                  onChanged: (value) {
                    _hight = value;
                    setState(() {});
                  },
                  min: 100,
                  max: 220,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomBackGroundContainer extends StatelessWidget {
  const CustomBackGroundContainer({
    super.key,
    required this.child,
    this.color,
    this.width,
  });
  final Widget child;
  final Color? color;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: color ?? Color(0xff17172F),
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
