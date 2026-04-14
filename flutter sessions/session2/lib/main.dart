import 'package:flutter/material.dart';

void main() {
  runApp(const DashboredApp());
}

class DashboredApp extends StatelessWidget {
  const DashboredApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Widgets Demo',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isTablet = width > 600;

    return Scaffold(
      backgroundColor: const Color(0xffF5F5F7),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HeaderCard(),
                    const SizedBox(height: 20),
                    const Text(
                      'Quick Stats',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    QuickStats(isTablet: isTablet),
                    const SizedBox(height: 20),
                    const Text(
                      'Features',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const FeaturesList(),
                  ],
                ),
              ),
            ),
            const BottomButtons(), // pinned at bottom
          ],
        ),
      ),
    );
  }
}

class HeaderCard extends StatelessWidget {
  const HeaderCard({super.key});

  void _onGetStarted() {
    debugPrint('Get Started clicked');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [Color(0xff7F5AF0), Color(0xff5F3DC4)],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.purple.withValues(alpha: .3),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Hello! 👋',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Try your best to build this ui',
            style: TextStyle(color: Colors.white70),
          ),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: _onGetStarted,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 14),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: .2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class QuickStats extends StatelessWidget {
  final bool isTablet;
  const QuickStats({super.key, required this.isTablet});

  @override
  Widget build(BuildContext context) {
    if (isTablet) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Expanded(
            child: StatCard(
              icon: Icons.group,
              value: '1,234',
              label: 'Users',
              color: Colors.orange,
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: StatCard(
              icon: Icons.star,
              value: '4.8',
              label: 'Rating',
              color: Colors.green,
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: StatCard(
              icon: Icons.show_chart,
              value: '98%',
              label: 'Success',
              color: Colors.red,
            ),
          ),
        ],
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        StatCard(
          icon: Icons.group,
          value: '1,234',
          label: 'Users',
          color: Colors.orange,
        ),
        StatCard(
          icon: Icons.star,
          value: '4.8',
          label: 'Rating',
          color: Colors.green,
        ),
        StatCard(
          icon: Icons.show_chart,
          value: '98%',
          label: 'Success',
          color: Colors.red,
        ),
      ],
    );
  }
}

class StatCard extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;
  final Color color;

  const StatCard({
    super.key,
    required this.icon,
    required this.value,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width < 600 ? 100 : double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 6)],
      ),
      child: Column(
        children: [
          Icon(icon, color: color),
          const SizedBox(height: 10),
          Text(
            value,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 4),
          Text(label, style: const TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}

/// Features list
class FeaturesList extends StatelessWidget {
  const FeaturesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        FeatureTile(
          icon: Icons.flash_on,
          title: 'Fast Performance',
          subtitle: 'Lightning fast app performance',
          color: Colors.blue,
        ),
        FeatureTile(
          icon: Icons.shield,
          title: 'Secure',
          subtitle: 'Your data is safe with us',
          color: Colors.green,
        ),
        FeatureTile(
          icon: Icons.palette,
          title: 'Beautiful UI',
          subtitle: 'Modern and clean design',
          color: Colors.purple,
        ),
      ],
    );
  }
}

/// Single feature tile widget
class FeatureTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;

  const FeatureTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  void _onTileTap() {
    debugPrint('$title clicked');
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTileTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 6)],
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: color.withValues(alpha: .1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(icon, color: color),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(subtitle, style: const TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}

/// Bottom buttons section
class BottomButtons extends StatelessWidget {
  const BottomButtons({super.key});

  void _onSettingsPressed() {
    debugPrint('Settings clicked');
  }

  void _onProfilePressed() {
    debugPrint('Profile clicked');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: _onSettingsPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              child: const Text('Settings'),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: ElevatedButton(
              onPressed: _onProfilePressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              child: const Text('Profile'),
            ),
          ),
        ],
      ),
    );
  }
}
