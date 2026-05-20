import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF8CC63F)),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  const Text(
                    'Cambiar sucursal',
                    style: TextStyle(color: Color(0xFF8CC63F), fontSize: 12),
                  ),
                  const SizedBox(width: 10),
                  Image.asset(
                    'assets/icons/icono_cambiar_sucursal.png',
                    width: 10,
                    height: 10,
                    color: const Color(0xFF8CC63F),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Color(0xFF8CC63F),
                  size: 18,
                ),
                SizedBox(width: 4),
                Text(
                  'Sucursal Norte',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ],
        ),
        Container(
          decoration: const BoxDecoration(
            color: Color(0xFFF36A26),
            shape: BoxShape.circle,
          ),
          padding: const EdgeInsets.all(2),
          child: Image.asset(
            'assets/icons/icono_menu.png',
            width: 40,
            height: 40,
          ),
        ),
      ],
    );
  }
}
