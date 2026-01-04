import 'package:calculations/components/input.dart';
import 'package:flutter/material.dart';

class NewEmployees extends StatelessWidget {
  const NewEmployees({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(18, 18, 18, 1),
        leading: Padding(
          padding: const EdgeInsets.only(left: 8), // adjust this
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        title: Transform.translate(
          offset: Offset(-10, 0),
          child: Text(
            "Add New Employee",           // use the passed title
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              letterSpacing: 2,
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Input(label: 'NAME', placeholder: 'Enter Employee Name'),
            SizedBox(height: 20),
            Input(label: 'PHONE NUMBER', placeholder: 'Enter Employee Phone'),
          ],
        ),
      ),
    );
  }
}