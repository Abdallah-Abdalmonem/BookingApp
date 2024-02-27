import 'package:flutter/material.dart';

class EmployeeScreen extends StatelessWidget {
  const EmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('اضافة موظف'),
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) => Card(
            child: ListTile(
              title: const Text(
                'عبدالله',
              ),
              subtitle: const Text('abdallah@gmail.com'),
              trailing: Checkbox(value: true, onChanged: (value) {}),
            ),
          ),
        ),
      ),
    );
  }
}
