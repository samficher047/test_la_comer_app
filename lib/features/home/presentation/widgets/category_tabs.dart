import 'package:flutter/material.dart';

class CategoryTabs extends StatefulWidget {
  const CategoryTabs({Key? key}) : super(key: key);

  @override
  State<CategoryTabs> createState() => _CategoryTabsState();
}

class _CategoryTabsState extends State<CategoryTabs> {
  final List<String> categories = [
    'Todo',
    'Frutas y verduras',
    'Carnes',
    'Abarrotes',
  ];

  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(categories.length, (index) {
              final isSelected = index == selectedIndex;

              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    categories[index],
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: isSelected
                          ? FontWeight.w600
                          : FontWeight.w400,
                      color: isSelected
                          ? const Color(0xFF8CC63F)
                          : Colors.grey.shade500,
                    ),
                  ),
                ),
              );
            }),
          ),
        ),

        const SizedBox(height: 8),

        Row(
          children: List.generate(categories.length, (index) {
            final isSelected = index == selectedIndex;

            return Expanded(
              child: Container(
                height: 2,
                color: isSelected
                    ? const Color(0xFF8CC63F)
                    : Colors.grey.shade300,
              ),
            );
          }),
        ),
      ],
    );
  }
}
