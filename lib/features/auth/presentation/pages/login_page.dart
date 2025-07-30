import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Continue with E-mail'),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: InkWell(
              onTap: () => Navigator.pop(context),
              child: Container(
                width: 48,
                height: 48,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_back_ios_new_rounded, size: 20),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [],
      ),
    );
  }
}
