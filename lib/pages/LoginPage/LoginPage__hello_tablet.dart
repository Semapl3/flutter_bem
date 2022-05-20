import 'package:flutter/material.dart';

class LoginPage__hello_tablet extends StatelessWidget {
  const LoginPage__hello_tablet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Column(
        children: [
          Text(
            'Добро пожаловать',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          Text(
            'Планшетная версия',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
