import 'package:flutter/material.dart';
import 'package:flutter_bem/pages/LoginPage/LoginPage_phone.dart';
import 'package:flutter_bem/pages/LoginPage/LoginPage_tablet.dart';
import 'package:flutter_bem/utils/responsive.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return responsive(
      context,
      phone: const LoginPage_phone(),
      tablet: const LoginPage_tablet(),
    );
  }
}
