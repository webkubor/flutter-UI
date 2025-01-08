import 'package:flutter/material.dart';

class DeviceInfoCard extends StatelessWidget {
  final String info;

  const DeviceInfoCard({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Icon(Icons.phone_android, size: 50),
            const SizedBox(height: 10),
            Text(
              info,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
