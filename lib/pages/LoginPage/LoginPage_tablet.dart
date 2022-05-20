import 'package:flutter/material.dart';
import 'package:flutter_bem/pages/LoginPage/LoginPage__hello_tablet.dart';
import 'package:flutter_bem/widgets/LoginForm/LoginForm.dart';

class LoginPage_tablet extends StatelessWidget {
  const LoginPage_tablet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              LoginPage__hello_tablet(),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
