import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  int height = 170;
  int weight = 70;
  void calculateBMI() {
    double heightInMeters = height / 100;
    double bmi = weight / (heightInMeters * heightInMeters);

    String result;

    if (bmi < 18.5) {
      result = "Underweight";
    } else if (bmi < 25) {
      result = "Normal";
    } else if (bmi < 30) {
      result = "Overweight";
    } else {
      result = "Obese";
    }

    print("BMI: ${bmi.toStringAsFixed(1)}");
    print("Category: $result");
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffeb0d54),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {
          calculateBMI();
        },
        child: Text('CALCULATE'),
      ),
    );
  }
}
