import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tito - الرئيسية'),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'مرحباً بك في Tito!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'ابدأ في التعارف وتكوين صداقات جديدة من مختلف الدول.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _buildFeatureCard(
                    context,
                    'التعارف',
                    Icons.people,
                    Colors.pink,
                    () {
                      // Navigate to dating screen
                    },
                  ),
                  _buildFeatureCard(
                    context,
                    'الدردشة',
                    Icons.chat,
                    Colors.blue,
                    () {
                      Navigator.pushNamed(context, '/chat');
                    },
                  ),
                  _buildFeatureCard(
                    context,
                    'الألعاب',
                    Icons.games,
                    Colors.green,
                    () {
                      Navigator.pushNamed(context, '/games');
                    },
                  ),
                  _buildFeatureCard(
                    context,
                    'الرومات الصوتية',
                    Icons.mic,
                    Colors.orange,
                    () {
                      Navigator.pushNamed(context, '/voice');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard(BuildContext context, String title, IconData icon,
      Color color, VoidCallback onTap) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 48, color: color),
              const SizedBox(height: 8),
              Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}