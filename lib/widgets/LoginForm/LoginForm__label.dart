import 'package:flutter/material.dart';

class LoginForm__label extends StatelessWidget {
  const LoginForm__label({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Войти',
      style: Theme.of(context).textTheme.headline5,
      textAlign: TextAlign.left,
    );
  }
}
