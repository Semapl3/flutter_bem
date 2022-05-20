import 'package:flutter/material.dart';
import 'package:flutter_bem/utils/responsive.dart';
import 'package:flutter_bem/widgets/LoginForm/LoginForm__fields.dart';
import 'package:flutter_bem/widgets/LoginForm/LoginForm__label.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: ResponsiveMinPhoneSize),
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              LoginForm__label(),
              SizedBox(height: 24),
              LoginForm__fields(),
              SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
