import 'package:flutter/material.dart';

class LoginPage__hello_phone extends StatelessWidget {
  const LoginPage__hello_phone({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      margin: const EdgeInsets.only(bottom: 30),
      decoration: const BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.all(Radius.circular(18)),
      ),
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
            'Мобильная версия',
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
