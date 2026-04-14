import 'package:flutter/material.dart';
import 'package:session3/HightSelectionSection.dart';
import 'package:session3/WightAgeSelectionItems.dart';
import 'package:session3/customButton.dart';
import 'package:session3/customerAppBar.dart';
import 'package:session3/genderSelectionSection.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xff03051A),
      ),
      home: const MyHomePage(title: 'flutter demo home page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            SizedBox(height: 10),
            CustomAppBar(),
            Expanded(child: GenderSelectionSection()),
            SizedBox(height: 5),
            Expanded(child: HightSelectionsection()),
            SizedBox(height: 14),
            Expanded(child: WightAgeSelectionItems()),
            SizedBox(height: 5),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
