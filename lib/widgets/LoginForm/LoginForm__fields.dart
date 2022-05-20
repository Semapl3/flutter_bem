import 'package:flutter/material.dart';

class LoginForm__fields extends StatelessWidget {
  const LoginForm__fields({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          TextField(
            autofocus: true,
            maxLength: 50,
            autocorrect: false,
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(height: 8),
          Text(
            'Введите логин',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 12),
          TextField(
            maxLength: 50,
          ),
          const SizedBox(height: 8),
          Text(
            'Введите пароль',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {
              // Navigator.of(context).push();
            },
            child: Text('Войти'),
          ),
        ],
      ),
    );
  }
}
