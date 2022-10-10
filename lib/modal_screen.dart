import 'package:flutter/material.dart';

class ModalScreen extends StatelessWidget {
  const ModalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ModalScreen'),
        backgroundColor: Colors.lightBlue,
        elevation: 0,
      ),
      backgroundColor: Colors.lightBlue,
      body: Container(),
    );
  }
}
