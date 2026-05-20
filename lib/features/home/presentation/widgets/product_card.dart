import 'package:flutter/material.dart';

import '../../data/models/product_model.dart';

class ProductCard extends StatefulWidget {
  final ProductModel product;

  const ProductCard({super.key, required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isHovered = false;
  bool isFavorite = false;


  bool isSelected = false;


  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = true;
        });
      },

      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            isHovered = true;
          });
        },

        onExit: (_) {
          setState(() {
            isHovered = false;
          });
        },

        child: AnimatedScale(
          duration: const Duration(milliseconds: 200),

          scale: isHovered ? 1.03 : 1,

          child: AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            width: 135,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,

              borderRadius: BorderRadius.circular(18),

              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(isHovered ? 0.12 : 0.08),
                  blurRadius: 14,
                  offset: const Offset(0, 6),
                ),
                BoxShadow(
                  color: Colors.black.withOpacity(isSelected ? 0.08 : 0.04),
                  blurRadius: 12,
                  offset: const Offset(4, 4),
                ),
              ],
            ),

            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Center(
                      child: Image.asset(
                        widget.product.image,
                        height: 80,
                        fit: BoxFit.contain,
                      ),
                    ),

                    const SizedBox(height: 8),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Expanded(
                          child: Text(
                            widget.product.name,

                            style: const TextStyle(
                              fontWeight: FontWeight.bold,

                              fontSize: 14,
                            ),

                            maxLines: 2,

                            overflow: TextOverflow.ellipsis,
                          ),
                        ),

                        const SizedBox(width: 4),

                        Padding(
                          padding: const EdgeInsets.only(top: 2),

                          child: Text(
                            '\$${widget.product.price}',

                            style: const TextStyle(
                              color: Color(0xFF8CC63F),

                              fontWeight: FontWeight.bold,

                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    Row(
                      mainAxisAlignment:
      MainAxisAlignment.spaceBetween,

                      children: [
                        Text(
                          widget.product.unit,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                          const SizedBox(width: 15),
                        AnimatedSwitcher(
                          duration: const Duration(milliseconds: 250),

                          child: isSelected
                        
                              ? Container(
                                  key: const ValueKey('stepper'),

                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 4,
                                  ),

                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color(0xFF9ACD32),
                                      width: 1.5,
                                    ),

                                    borderRadius: BorderRadius.circular(30),
                                  ),

                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,

                                    children: [
                             
                                      GestureDetector(
                                        onTap: () {
                                          if (quantity > 1) {
                                            setState(() {
                                              quantity--;
                                            });
                                          }
                                        },

                                        child: Container(
                                          width: 22,

                                          height: 22,

                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,

                                            border: Border.all(
                                              color: const Color(0xFF9ACD32),
                                            ),
                                          ),

                                          child: const Icon(
                                            Icons.remove,

                                            size: 14,

                                            color: Color(0xFF9ACD32),
                                          ),
                                        ),
                                      ),

                                      const SizedBox(width: 14),

                                      Text(
                                        '${quantity}kg',

                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),

                                      const SizedBox(width: 14),

                               
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            quantity++;
                                          });
                                        },

                                        child: Container(
                                          width: 22,

                                          height: 22,

                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,

                                            border: Border.all(
                                              color: const Color(0xFF9ACD32),
                                            ),
                                          ),

                                          child: const Icon(
                                            Icons.add,

                                            size: 14,

                                            color: Color(0xFF9ACD32),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                       
                              : Row(
                                  key: const ValueKey('normal'),

                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,

                                  children: [
                              

                                    Container(
                                      width: 24,

                                      height: 24,

                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,

                                        border: Border.all(
                                          color: const Color(0xFF9ACD32),

                                          width: 1.6,
                                        ),
                                      ),

                                      child: const Center(
                                        child: Icon(
                                          Icons.add,

                                          size: 16,

                                          color: Color(0xFF9ACD32),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                        ),
                      ],
                    ),
                  ],
                ),

                Positioned(
                  top: 0,
                  right: 0,

                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },

                    child: Container(
                      width: 24,

                      height: 24,

                      decoration: const BoxDecoration(
                        color: Color(0xFFE57A3A),

                        shape: BoxShape.circle,
                      ),

                      child: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,

                        size: 14,

                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
