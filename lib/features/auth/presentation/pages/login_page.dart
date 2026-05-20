import 'package:flutter/material.dart';
import '../widgets/login_header.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/login_actions.dart';
import '../widgets/social_login_section.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 40),
                const LoginHeader(),
                const SizedBox(height: 40),
                
                const CustomTextField(
                  hintText: 'Correo Electrónico',
                  icon: Icons.mail_outline,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 16),
                const CustomTextField(
                  hintText: 'Contraseña',
                  icon: Icons.lock_outline,
                  isPassword: true,
                ),
                const SizedBox(height: 32),
                const LoginActions(),
                const SizedBox(height: 40),
                const SocialLoginSection(),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}