import 'package:flutter/material.dart';
import 'package:session3/HightSelectionSection.dart';

class WightAgeSelectionItems extends StatefulWidget {
  const WightAgeSelectionItems({super.key});

  @override
  State<WightAgeSelectionItems> createState() => _WightAgeSelectionItemsState();
}

class _WightAgeSelectionItemsState extends State<WightAgeSelectionItems> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: WeightItem()),
        SizedBox(width: 24),
        Expanded(child: AgeItem()),
      ],
    );
  }
}

class ValueChangedItem extends StatefulWidget {
  const ValueChangedItem({
    super.key,
    required this.title,
    required this.value,
    required this.onIncrement,
    required this.onDecrement,
  });

  final String title;
  final String value;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  @override
  State<ValueChangedItem> createState() => _ValueChangedItemState();
}

class _ValueChangedItemState extends State<ValueChangedItem> {
  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          Text(
            widget.value,
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: widget.onDecrement,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.5),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                      BoxShadow(
                        color: Colors.white.withValues(alpha: 0.05),
                        blurRadius: 4,
                        offset: Offset(-2, -2),
                      ),
                    ],
                    color: Color(0xff4b4E5F),
                  ),
                  child: Icon(Icons.remove),
                ),
              ),
              SizedBox(width: 20),
              GestureDetector(
                onTap: widget.onIncrement,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.5),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                      BoxShadow(
                        color: Colors.white.withValues(alpha: 0.05),
                        blurRadius: 4,
                        offset: Offset(-2, -2),
                      ),
                    ],
                    color: Color(0xff4b4E5F),
                  ),
                  child: Icon(Icons.add),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class WeightItem extends StatefulWidget {
  const WeightItem({super.key});

  @override
  State<WeightItem> createState() => _WightItemState();
}

class _WightItemState extends State<WeightItem> {
  int _Weight = 70;

  @override
  Widget build(BuildContext context) {
    return ValueChangedItem(
      title: 'WEIGHT',
      value: _Weight.toString(),
      onIncrement: () {
        setState(() {
          _Weight++;
        });
      },
      onDecrement: () {
        setState(() {
          _Weight--;
        });
      },
    );
  }
}

class AgeItem extends StatefulWidget {
  const AgeItem({super.key});

  @override
  State<AgeItem> createState() => _AgeItemState();
}

class _AgeItemState extends State<AgeItem> {
  int _age = 20;
  @override
  Widget build(BuildContext context) {
    return ValueChangedItem(
      title: 'AGE',
      value: _age.toString(),
      onIncrement: () {
        setState(() {
          _age++;
        });
      },
      onDecrement: () {
        setState(() {
          _age--;
        });
      },
    );
  }
}
