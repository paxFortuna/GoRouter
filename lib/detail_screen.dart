import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailScreen'),
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      backgroundColor: Colors.red,
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () => context.go('/modal'),
                child: const Text('go /modal', style: TextStyle(fontSize: 20)),),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () => context.push('/modal'),
                child: const Text('push /modal', style: TextStyle(fontSize: 20)),),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
