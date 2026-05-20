import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeBottomNav extends StatelessWidget {
  const HomeBottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: const Offset(0, -6),
            blurRadius: 12,
            spreadRadius: -6,
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildNavItem(
              icon: 'assets/svg/home.svg',
              label: 'Inicio',
              isSelected: true,
            ),
            _buildNavItem(icon: 'assets/svg/ofertas.svg', label: 'Descuentos'),
            _buildNavItem(
              icon: 'assets/svg/icono_carrito.svg',
              label: 'Carrito',
            ),
            _buildNavItem(icon: 'assets/svg/corazon.svg', label: 'Wishlist'),
            _buildNavItem(icon: 'assets/svg/usuario.svg', label: 'Mi Cuenta'),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required String icon,
    required String label,
    bool isSelected = false,
  }) {
    final iconColor = isSelected
        ? const Color(0xFFD35400)
        : const Color(0xFFF36A26);
    final textColor = Colors.black;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          icon,
          width: 24,
          height: 24,
          colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
        ),

        const SizedBox(height: 4),

        Text(
          label,
          style: TextStyle(
            color: textColor,
            fontSize: 10,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
