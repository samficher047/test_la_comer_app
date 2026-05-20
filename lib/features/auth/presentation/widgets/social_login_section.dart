import 'package:flutter/material.dart';

class SocialLoginSection extends StatelessWidget {
  const SocialLoginSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Divider(color: Colors.grey.shade400, thickness: 1)),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'O inicia sesión con',
                style: TextStyle(
                  color: Color(0xFFE36D25),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Expanded(child: Divider(color: Colors.grey.shade400, thickness: 1)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildSocialButton(
              iconPath: 'assets/icons/facebook.png',
              onTap: () {},
            ),

            const SizedBox(width: 6),

            _buildSocialButton(
              iconPath: 'assets/icons/ios.png',
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSocialButton({
    required String iconPath,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(40),
      child: Container(
        width: 90,
        height: 90,
        decoration: const BoxDecoration(shape: BoxShape.circle),
        child: Center(child: Image.asset(iconPath, height: 40)),
      ),
    );
  }
}
