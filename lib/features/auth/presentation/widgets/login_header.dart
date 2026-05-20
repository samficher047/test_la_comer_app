import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/isotipo_login.png',
          height: 150,
          fit: BoxFit.contain,
        ),

        const SizedBox(height: 30),

        Image.asset(
          'assets/images/logotipo.png', 
          height: 60,
          fit: BoxFit.contain,
        ),
      ],
    );
  }
}