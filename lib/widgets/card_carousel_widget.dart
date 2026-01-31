import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../theme/app_theme.dart';

class CardCarouselWidget extends StatefulWidget {
  const CardCarouselWidget({super.key});

  @override
  State<CardCarouselWidget> createState() => _CardCarouselWidgetState();
}

class _CardCarouselWidgetState extends State<CardCarouselWidget> {
  int _currentIndex = 0;

  // Mock data for user's cards
  final List<Map<String, String>> _cards = [
    {'name': '삼성카드 taptap O', 'image': 'assets/images/card_taptap_main.png'},
    {'name': '삼성카드 taptap O', 'image': 'assets/images/card_taptap_main.png'},
    {'name': '삼성카드 taptap O', 'image': 'assets/images/card_taptap_main.png'},
    {'name': '삼성카드 taptap O', 'image': 'assets/images/card_taptap_main.png'},
    {'name': '삼성카드 taptap O', 'image': 'assets/images/card_taptap_main.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Title
        Text(_cards[_currentIndex]['name']!, style: AppTheme.headingSmall),
        const SizedBox(height: 18),
        // Card display with background cards
        SizedBox(
          height: 136,
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              // Background shadow card (left side) - partially visible
              Positioned(
                left: 68,
                child: Container(
                  width: 182,
                  height: 115,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: const Color(0xFF979797),
                      width: 0.5,
                    ),
                  ),
                ),
              ),
              // Background shadow card (right side) - partially visible
              Positioned(
                right: 68,
                child: Image.asset(
                  'assets/images/card_taptap_shadow.png',
                  width: 181,
                  height: 114,
                  fit: BoxFit.contain,
                ),
              ),
              // Main card - centered
              Center(
                child: GestureDetector(
                  onHorizontalDragEnd: (details) {
                    if (details.primaryVelocity! > 0) {
                      // Swipe right
                      setState(() {
                        _currentIndex = (_currentIndex - 1) % _cards.length;
                        if (_currentIndex < 0) _currentIndex = _cards.length - 1;
                      });
                    } else if (details.primaryVelocity! < 0) {
                      // Swipe left
                      setState(() {
                        _currentIndex = (_currentIndex + 1) % _cards.length;
                      });
                    }
                  },
                  child: Container(
                    width: 215,
                    height: 136,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xFF979797),
                        width: 0.5,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        _cards[_currentIndex]['image']!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 18),
        // Pagination dots
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _cards.asMap().entries.map((entry) {
            return Container(
              width: 8,
              height: 8,
              margin: const EdgeInsets.symmetric(horizontal: 6),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == entry.key
                    ? const Color(0xFF444444)
                    : const Color(0xFFD9D9D9),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
