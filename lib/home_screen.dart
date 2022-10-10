import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        backgroundColor: Colors.blueGrey,
        elevation: 0,
      ),
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  var id = Random().nextInt(100);
                  context.go('/detail/$id');
                },
                child: const Text('go /detail/:id', style: TextStyle(fontSize: 20),),),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () => context.push('/detail'),
                child: const Text('push /detail', style: TextStyle(fontSize: 20)),),
              const SizedBox(height: 32),
              // ElevatedButton(
              //   onPressed: () => context.go('/modal'),
              //   child: const Text('go /modal', style: TextStyle(fontSize: 20)),),
              // const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  var blog = 'cutie';
                  context.go('/modal', extra: blog);
                },
                child: const Text('go /modal', style: TextStyle(fontSize: 20)),),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
