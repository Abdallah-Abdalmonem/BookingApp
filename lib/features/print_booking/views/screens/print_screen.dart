import 'package:flutter/material.dart';

class PrintBookingScreen extends StatelessWidget {
  const PrintBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('طباعة الحجز'),
      ),
    );
  }
}
