import 'package:flutter/material.dart';
import 'package:session3/genderItem.dart';

class GenderSelectionSection extends StatefulWidget {
  const GenderSelectionSection({super.key});

  @override
  State<GenderSelectionSection> createState() => _GenderSelectionSectionState();
}

class _GenderSelectionSectionState extends State<GenderSelectionSection> {
  final Color _selectedColor = Color(0xff17172F);
  final Color _unSelectedColor = Color(0xfF090B24);
  bool _isMaleSelected = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isMaleSelected = true;
                });
              },
              child: GenderItem(
                color: _isMaleSelected ? _selectedColor : _unSelectedColor,
                data: 'MALE',
                icon: Icons.male,
                onTap: () {},
              ),
            ),
          ),
          SizedBox(width: 24),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isMaleSelected = false;
                });
              },
              child: GenderItem(
                color: _isMaleSelected ? _unSelectedColor : _selectedColor,
                data: 'FEMALE',
                icon: Icons.female,
                onTap: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
