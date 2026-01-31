import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../theme/app_theme.dart';
import '../models/benefit_item.dart';
import '../widgets/benefit_item_widget.dart';
import '../widgets/card_carousel_widget.dart';
import '../widgets/bottom_navigation_widget.dart';
import '../utils/string_formatters.dart';
import 'benefit_report_screen.dart';

class CardBenefitsScreen extends StatefulWidget {
  const CardBenefitsScreen({super.key});

  @override
  State<CardBenefitsScreen> createState() => _CardBenefitsScreenState();
}

class _CardBenefitsScreenState extends State<CardBenefitsScreen> {
  int _currentNavIndex = 0;

  final List<BenefitItem> _benefitItems = [
    BenefitItem(
      categoryIcon: 'assets/images/category_cafe.svg',
      categoryName: '카페 카테고리',
      spentAmount: 92200,
      benefitAmount: 10000,
    ),
    BenefitItem(
      categoryIcon: 'assets/images/category_movie.svg',
      categoryName: '영화 카테고리',
      spentAmount: 30000,
      benefitAmount: 10000,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFF3EEFF), Color(0xFFF3F3F3), Color(0xFFDCCCFF)],
            stops: [0.1394, 0.524, 1.0],
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildHeader(),
                      const SizedBox(height: 12),
                      _buildBenefitsGuideBanner(),
                      const SizedBox(height: 12),
                      _buildCardSection(),
                      const SizedBox(height: 12),
                      _buildRecommendationSection(),
                      const SizedBox(height: 12),
                      _buildBenefitsReceivedSection(),
                      const SizedBox(height: 12),
                      _buildCardPerformanceSection(),
                      const SizedBox(height: 12),
                    ],
                  ),
                ),
              ),
              BottomNavigationWidget(
                currentIndex: _currentNavIndex,
                onTap: (index) {
                  setState(() {
                    _currentNavIndex = index;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 20, top: 61),
      child: Row(
        children: [
          const Text(
            '12월',
            style: TextStyle(
              fontFamily: 'Pretendard',
              fontSize: 26,
              fontWeight: FontWeight.w700,
              letterSpacing: -0.29,
              color: Color(0xFF222222),
            ),
          ),
          const SizedBox(width: 10),
          SvgPicture.asset(
            'assets/icons/dropdown_arrow.svg',
            width: 14,
            height: 12,
            colorFilter: const ColorFilter.mode(
              Color(0xFF222222),
              BlendMode.srcIn,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBenefitsGuideBanner() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color(0xFFE9E0FF),
          borderRadius: BorderRadius.circular(13),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '혜택 구조 헷갈린다면?',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.14,
                        color: Color(0xFF757575),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      '카테고리별 상세 조건 확인하기',
                      style: TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.20,
                        color: Color(0xFF222222),
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/images/credit_card_coins.png',
                  width: 64,
                  height: 64,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            const SizedBox(height: 10),
            SvgPicture.asset(
              'assets/icons/pagination_dots.svg',
              width: 16,
              height: 6,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCardSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color(0xFFFAFAF8),
          borderRadius: BorderRadius.circular(13),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 62,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: const Color(0xFF979797),
                      width: 0.5,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.asset(
                      'assets/images/card_taptap.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 9),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '삼성카드 taptap O',
                        style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.20,
                          color: Color(0xFF222222),
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        '카페·영화관·쇼핑 중심',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.14,
                          color: Color(0xFF757575),
                        ),
                      ),
                    ],
                  ),
                ),
                SvgPicture.asset(
                  'assets/icons/three_dots_menu.svg',
                  width: 4,
                  height: 22,
                  colorFilter: const ColorFilter.mode(
                    Color(0xFF757575),
                    BlendMode.srcIn,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFE9E8),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    '못 받은 혜택',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.14,
                      color: Color(0xFFEB5E59),
                    ),
                  ),
                ),
                const Text(
                  '7,000원',
                  style: TextStyle(
                    fontFamily: 'Pretendard',
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.29,
                    color: Color(0xFF222222),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 44,
                    decoration: BoxDecoration(
                      color: const Color(0xFF874FFF),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        '소비내역',
                        style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.18,
                          color: Color(0xFFFAFAF8),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BenefitReportScreen(),
                        ),
                      );
                    },
                    child: Container(
                      height: 44,
                      decoration: BoxDecoration(
                        color: const Color(0xFF874FFF),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                        child: Text(
                          '혜택관리',
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.18,
                            color: Color(0xFFFAFAF8),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecommendationSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color(0xFFFAFAF8),
          borderRadius: BorderRadius.circular(13),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '나와 맞는 카드로 바꾸고\n새로운 혜택 받으러 가기',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.20,
                      height: 1.5,
                      color: Color(0xFF222222),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE9E0FF),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      '바로보기',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.14,
                        color: Color(0xFF874FFF),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 20),
            Image.asset(
              'assets/images/receipt_card.png',
              width: 115,
              height: 81,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBenefitsReceivedSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color(0xFFFAFAF8),
          borderRadius: BorderRadius.circular(13),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '받은 혜택',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.15,
                    color: Color(0xFF757575),
                  ),
                ),
                const Text(
                  '28,000원',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.18,
                    color: Color(0xFF222222),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            _buildBenefitItem(_benefitItems[0]),
            const SizedBox(height: 20),
            _buildBenefitItem(_benefitItems[1]),
            const SizedBox(height: 20),
            Container(height: 1, color: const Color(0xFFF1F1F1)),
            const SizedBox(height: 20),
            const Text(
              '자세히 보기',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.18,
                color: Color(0xFF874FFF),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBenefitItem(BenefitItem item) {
    return Row(
      children: [
        SvgPicture.asset(item.categoryIcon, width: 33, height: 33),
        const SizedBox(width: 22),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringFormatters.formatWon(item.spentAmount),
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.15,
                  color: Color(0xFF1E1E1E),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                item.categoryName,
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.13,
                  color: Color(0xFF757575),
                ),
              ),
            ],
          ),
        ),
        SvgPicture.asset(
          'assets/icons/dots_separator.svg',
          width: 22,
          height: 8,
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              '혜택',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.13,
                color: Color(0xFF874FFF),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              StringFormatters.formatWon(item.benefitAmount),
              style: const TextStyle(
                fontFamily: 'Inter',
                fontSize: 14,
                fontWeight: FontWeight.w700,
                letterSpacing: -0.15,
                color: Color(0xFF874FFF),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildCardPerformanceSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color(0xFFFAFAF8),
          borderRadius: BorderRadius.circular(13),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '카드실적',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.15,
                    color: Color(0xFF757575),
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      '323,000원',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.18,
                        color: Color(0xFF222222),
                      ),
                    ),
                    const SizedBox(width: 7),
                    SvgPicture.asset(
                      'assets/icons/chevron_right_small.svg',
                      width: 5,
                      height: 9,
                      colorFilter: const ColorFilter.mode(
                        Color(0xFF979797),
                        BlendMode.srcIn,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 5),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                '사용금액 447,261원',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.13,
                  color: Color(0xFF757575),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
