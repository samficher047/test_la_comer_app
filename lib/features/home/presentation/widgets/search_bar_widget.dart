import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 45,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: const Color(0xFFFFF9F0),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search, color: Color(0xFFF36A26), size: 20),
                  hintText: 'Buscar productos...',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFF36A26)),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset(
            'assets/icons/icono_filtro.png',
            width: 22,
            height: 22,
            color: const Color(0xFFF36A26),
          ),
        ),
      ],
    );
  }
}
