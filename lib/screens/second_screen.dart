import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('第二页'),
      ),
      body: const Center(
        child: Text(
          '这是第二个页面',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
