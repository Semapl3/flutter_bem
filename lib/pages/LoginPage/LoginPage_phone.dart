import 'package:flutter/material.dart';
import 'package:flutter_bem/widgets/LoginForm/LoginForm.dart';

import 'LoginPage__hello_phone.dart';

class LoginPage_phone extends StatelessWidget {
  const LoginPage_phone({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          SizedBox(height: 100),
          LoginPage__hello_phone(),
          LoginForm(),
        ],
      ),
    );
  }
}
