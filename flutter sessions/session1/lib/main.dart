import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                // Top banner
                Container(
                  height: 160,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),

                const SizedBox(height: 20),

                // Profile Row
                Row(
                  children: [
                    Container(height: 40, width: 40, color: Colors.grey),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(height: 20, color: Colors.grey[300]),
                    ),
                  ],
                ),

                const SizedBox(height: 20),
                const Divider(),

                const SizedBox(height: 20),

                // Green cards
                Row(
                  children: [
                    Expanded(child: buildCard(Colors.green)),
                    const SizedBox(width: 10),
                    Expanded(child: buildCard(Colors.orange)),
                    const SizedBox(width: 10),
                    Expanded(child: buildCard(Colors.orange)),
                  ],
                ),

                const SizedBox(height: 20),

                // Purple cards
                Row(
                  children: [
                    Expanded(child: buildCard(Colors.purple)),
                    const SizedBox(width: 10),
                    Expanded(child: buildCard(Colors.purpleAccent)),
                    const SizedBox(width: 10),
                    Expanded(child: buildCard(Colors.purple)),
                    const SizedBox(width: 10),
                    Expanded(child: buildCard(Colors.purple[200]!)),
                  ],
                ),

                const SizedBox(height: 20),

                // Blue cards
                Row(
                  children: [
                    Expanded(child: buildCard(Colors.teal[200]!)),
                    const SizedBox(width: 10),
                    Expanded(child: buildCard(Colors.teal)),
                  ],
                ),

                const SizedBox(height: 20),

                // Bottom section
                Container(height: 60, color: Colors.grey[300]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCard(Color color) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
