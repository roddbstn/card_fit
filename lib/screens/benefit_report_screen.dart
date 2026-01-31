import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BenefitReportScreen extends StatelessWidget {
  const BenefitReportScreen({super.key});

  // Pretendard 폰트 패밀리 상수
  static const String _fontFamily = 'Pretendard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAF8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBackButton(context),
              const SizedBox(height: 5),
              // Main content with sections
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header and Card Section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [_buildHeader(), const SizedBox(height: 15)],
                    ),
                  ),
                  const SizedBox(height: 15),
                  // Card Display Section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: _buildCardSection(),
                  ),
                  const SizedBox(height: 50),
                  // Section Divider
                  Container(
                    width: double.infinity,
                    height: 15,
                    color: const Color(0xFFF5F5F5),
                  ),
                  const SizedBox(height: 50),
                  // Benefits Missed Section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: _buildBenefitsMissedSection(),
                  ),
                  const SizedBox(height: 50),
                  // Section Divider
                  Container(
                    width: double.infinity,
                    height: 15,
                    color: const Color(0xFFF5F5F5),
                  ),
                  const SizedBox(height: 50),
                  // Performance Section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: _buildPerformanceSection(),
                  ),
                  const SizedBox(height: 55),
                  // Spending Breakdown Section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: _buildSpendingBreakdownSection(),
                  ),
                  const SizedBox(height: 50),
                  // Efficiency Guide Section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: _buildEfficiencyGuideSection(),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20),
      child: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Container(
          width: 33,
          height: 33,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/icons/back_arrow.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return SizedBox(
      width: 274,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: '지난 달에는\n',
              style: TextStyle(
                color: const Color(0xFF1E1E1E),
                fontSize: 22,
                fontFamily: _fontFamily,
                fontWeight: FontWeight.w700, // Bold - 주요 제목
                height: 1.50,
                letterSpacing: -0.24,
              ),
            ),
            TextSpan(
              text: '혜택을 적게 받았어요',
              style: TextStyle(
                color: const Color(0xFFEB5E59),
                fontSize: 22,
                fontFamily: _fontFamily,
                fontWeight: FontWeight.w800, // ExtraBold - 강조 텍스트
                height: 1.50,
                letterSpacing: -0.24,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCardSection() {
    return Column(
      children: [
        // Card Image
        // Card Name
        SizedBox(
          width: 390,
          child: Text(
            '삼성카드 taptap O',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xFF222222),
              fontSize: 16,
              fontFamily: _fontFamily,
              fontWeight: FontWeight.w600, // SemiBold - 카드 이름
              height: 1.50,
              letterSpacing: -0.15,
            ),
          ),
        ),
        const SizedBox(height: 15),
        Container(
          width: double.infinity,
          height: 214,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.rotate(
                angle: 0,
                child: Container(
                  width: 135.07,
                  height: 214,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/card_taptap.png'),
                      fit: BoxFit.cover,
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 0.50,
                        strokeAlign: BorderSide.strokeAlignOutside,
                        color: const Color(0xFFD9D9D9),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 25),
        // Guide Text
        SizedBox(
          width: 390,
          child: Text(
            '잘 쓰는법 확인하세요',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xFF757575),
              fontSize: 14,
              fontFamily: _fontFamily,
              fontWeight: FontWeight.w400, // Regular - 보조 텍스트
              height: 1.50,
              letterSpacing: -0.15,
            ),
          ),
        ),
        const SizedBox(height: 6),
        // CTA Button
        Container(
          width: 284,
          height: 51,
          padding: const EdgeInsets.all(10),
          decoration: ShapeDecoration(
            color: const Color(0xFF874FFF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icons/arrow_up.svg',
                width: 15,
                height: 15,
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                '카드 혜택 가이드 보기',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: _fontFamily,
                  fontWeight: FontWeight.w600, // SemiBold - 버튼 텍스트
                  height: 1.50,
                  letterSpacing: -0.18,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBenefitsMissedSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header Row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '32,000',
                      style: TextStyle(
                        color: const Color(0xFF874FFF),
                        fontSize: 18,
                        fontFamily: _fontFamily,
                        fontWeight: FontWeight.w800, // ExtraBold - 금액 강조
                        height: 1.50,
                        letterSpacing: -0.20,
                      ),
                    ),
                    TextSpan(
                      text: '원 혜택을 놓쳤어요',
                      style: TextStyle(
                        color: const Color(0xFF222222),
                        fontSize: 18,
                        fontFamily: _fontFamily,
                        fontWeight: FontWeight.w700, // Bold - 섹션 제목
                        height: 1.50,
                        letterSpacing: -0.20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: ShapeDecoration(
                color: const Color(0xFFFFE9E8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                '낮은 효율',
                style: TextStyle(
                  color: const Color(0xFFEB5E59),
                  fontSize: 13,
                  fontFamily: _fontFamily,
                  fontWeight: FontWeight.w600, // SemiBold - 배지 텍스트
                  letterSpacing: -0.14,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        // Benefits Card
        Container(
          width: 390,
          padding: const EdgeInsets.all(20),
          decoration: ShapeDecoration(
            color: const Color(0xFFF5F5F5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Last month benefits header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '지난 달 받은 혜택',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: const Color(0xFF757575),
                      fontSize: 14,
                      fontFamily: _fontFamily,
                      fontWeight: FontWeight.w600, // SemiBold - 소제목
                      height: 1.50,
                      letterSpacing: -0.15,
                    ),
                  ),
                  Text(
                    '3,000원',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: const Color(0xFF222222),
                      fontSize: 16,
                      fontFamily: _fontFamily,
                      fontWeight: FontWeight.w700, // Bold - 금액
                      height: 1.50,
                      letterSpacing: -0.18,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              // Transportation Category
              _buildCategoryBenefitItem(
                iconPath: 'assets/images/category_bus.png',
                amount: '22,850원',
                category: '교통 카테고리',
                benefit: '2,285원',
              ),
              const SizedBox(height: 30),
              // Overseas Category
              _buildCategoryBenefitItem(
                iconPath: 'assets/images/category_globe.png',
                amount: '55,021원',
                category: '해외 카테고리',
                benefit: '715원',
              ),
              const SizedBox(height: 20),
              // Divider
              Container(
                width: double.infinity,
                height: 1,
                color: const Color(0xFFF1F1F1),
              ),
              const SizedBox(height: 30),
              // Check Past Spending Button
              Container(
                width: 350,
                height: 57,
                padding: const EdgeInsets.symmetric(
                  horizontal: 11,
                  vertical: 6,
                ),
                decoration: ShapeDecoration(
                  color: const Color(0xFFE9DFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '지난 소비 확인하기',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFF874FFF),
                        fontSize: 16,
                        fontFamily: _fontFamily,
                        fontWeight: FontWeight.w600, // SemiBold - 버튼 텍스트
                        height: 1.50,
                        letterSpacing: -0.18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryBenefitItem({
    required String iconPath,
    required String amount,
    required String category,
    required String benefit,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 33,
              height: 33,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: const Color(0xFFE5DCDC)),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Center(
                child: Image.asset(
                  iconPath,
                  width: 25,
                  height: 25,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(width: 21),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  amount,
                  style: TextStyle(
                    color: const Color(0xFF1E1E1E),
                    fontSize: 14,
                    fontFamily: _fontFamily,
                    fontWeight: FontWeight.w600, // SemiBold - 금액
                    height: 1.50,
                    letterSpacing: -0.15,
                  ),
                ),
                SizedBox(
                  width: 75,
                  child: Text(
                    category,
                    style: TextStyle(
                      color: const Color(0xFF757575),
                      fontSize: 12,
                      fontFamily: _fontFamily,
                      fontWeight: FontWeight.w400, // Regular - 카테고리명
                      height: 1.50,
                      letterSpacing: -0.13,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        // Dot indicators
        Row(
          children: [
            Container(
              width: 4,
              height: 4,
              decoration: ShapeDecoration(
                color: const Color(0xFFB897FF),
                shape: OvalBorder(),
              ),
            ),
            const SizedBox(width: 3),
            Container(
              width: 4,
              height: 4,
              decoration: ShapeDecoration(
                color: const Color(0xFFDCCCFF),
                shape: OvalBorder(),
              ),
            ),
          ],
        ),
        // Benefit display
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: ShapeDecoration(
                color: const Color(0xFFF3EEFF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                '혜택',
                style: TextStyle(
                  color: const Color(0xFF874FFF),
                  fontSize: 10,
                  fontFamily: _fontFamily,
                  fontWeight: FontWeight.w500, // Medium - 태그
                  letterSpacing: -0.11,
                ),
              ),
            ),
            const SizedBox(width: 5),
            Text(
              benefit,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: const Color(0xFF874FFF),
                fontSize: 14,
                fontFamily: _fontFamily,
                fontWeight: FontWeight.w700, // Bold - 혜택 금액
                letterSpacing: -0.15,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildPerformanceSection() {
    return Container(
      width: 390,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '지출 대비\n',
                        style: TextStyle(
                          color: const Color(0xFF222222),
                          fontSize: 18,
                          fontFamily: _fontFamily,
                          fontWeight: FontWeight.w700, // Bold - 제목
                          height: 1.50,
                          letterSpacing: -0.20,
                        ),
                      ),
                      TextSpan(
                        text: '0.71% 혜택',
                        style: TextStyle(
                          color: const Color(0xFFEB5E59),
                          fontSize: 18,
                          fontFamily: _fontFamily,
                          fontWeight: FontWeight.w800, // ExtraBold - 강조
                          height: 1.50,
                          letterSpacing: -0.20,
                        ),
                      ),
                      TextSpan(
                        text: '을 받았어요',
                        style: TextStyle(
                          color: const Color(0xFF222222),
                          fontSize: 18,
                          fontFamily: _fontFamily,
                          fontWeight: FontWeight.w700, // Bold - 제목
                          height: 1.50,
                          letterSpacing: -0.20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: ShapeDecoration(
                  color: const Color(0xFFFFE9E8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  '낮은 효율',
                  style: TextStyle(
                    color: const Color(0xFFEB5E59),
                    fontSize: 13,
                    fontFamily: _fontFamily,
                    fontWeight: FontWeight.w600, // SemiBold - 배지
                    letterSpacing: -0.14,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Spending Summary Card
          Container(
            width: 390,
            height: 83,
            decoration: ShapeDecoration(
              color: const Color(0xFFF5F5F5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '지난 달에 쓴 돈',
                    style: TextStyle(
                      color: const Color(0xFF757575),
                      fontSize: 14,
                      fontFamily: _fontFamily,
                      fontWeight: FontWeight.w400, // Regular - 라벨
                      height: 1.50,
                      letterSpacing: -0.15,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '417,261원',
                        style: TextStyle(
                          color: const Color(0xFF757575),
                          fontSize: 16,
                          fontFamily: _fontFamily,
                          fontWeight: FontWeight.w500, // Medium - 금액
                          height: 1.50,
                          letterSpacing: -0.18,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 2,
                            ),
                            decoration: ShapeDecoration(
                              color: const Color(0xFFF3EEFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Text(
                              '총 혜택',
                              style: TextStyle(
                                color: const Color(0xFF874FFF),
                                fontSize: 12,
                                fontFamily: _fontFamily,
                                fontWeight: FontWeight.w500, // Medium - 태그
                                letterSpacing: -0.13,
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            '3,000원',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: const Color(0xFF874FFF),
                              fontSize: 22,
                              fontFamily: _fontFamily,
                              fontWeight: FontWeight.w800, // ExtraBold - 큰 금액
                              height: 1.50,
                              letterSpacing: -0.24,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSpendingBreakdownSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Divider
        Container(width: 390, height: 1, color: const Color(0xFFF1F1F1)),
        const SizedBox(height: 20),
        // Header
        SizedBox(
          width: 390,
          child: Text(
            '339,390원은\n혜택에 기여하지 못했어요',
            style: TextStyle(
              color: const Color(0xFF222222),
              fontSize: 18,
              fontFamily: _fontFamily,
              fontWeight: FontWeight.w700, // Bold - 섹션 제목
              height: 1.50,
              letterSpacing: -0.20,
            ),
          ),
        ),
        const SizedBox(height: 5),
        // Percentage text
        Text(
          '총 지출의 81.3%에 해당돼요',
          style: TextStyle(
            color: const Color(0xFF757575),
            fontSize: 13,
            fontFamily: _fontFamily,
            fontWeight: FontWeight.w400, // Regular - 설명 텍스트
            height: 1.50,
            letterSpacing: -0.14,
          ),
        ),
        const SizedBox(height: 20),
        // Benefits Contributing Spending Card
        Container(
          width: 390,
          padding: const EdgeInsets.all(20),
          decoration: ShapeDecoration(
            color: const Color(0xFFF5F5F5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '혜택에 기여한 소비',
                style: TextStyle(
                  color: const Color(0xFF757575),
                  fontSize: 13,
                  fontFamily: _fontFamily,
                  fontWeight: FontWeight.w500, // Medium - 소제목
                  height: 1.50,
                  letterSpacing: -0.14,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '77,871원',
                    style: TextStyle(
                      color: const Color(0xFF222222),
                      fontSize: 16,
                      fontFamily: _fontFamily,
                      fontWeight: FontWeight.w600, // SemiBold - 금액
                      height: 1.50,
                      letterSpacing: -0.18,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        decoration: ShapeDecoration(
                          color: const Color(0xFFF3EEFF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          '총 혜택',
                          style: TextStyle(
                            color: const Color(0xFF874FFF),
                            fontSize: 12,
                            fontFamily: _fontFamily,
                            fontWeight: FontWeight.w500, // Medium - 태그
                            letterSpacing: -0.13,
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        '3,000원',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: const Color(0xFF874FFF),
                          fontSize: 18,
                          fontFamily: _fontFamily,
                          fontWeight: FontWeight.w700, // Bold - 혜택 금액
                          height: 1.50,
                          letterSpacing: -0.20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Text(
                '나머지 소비',
                style: TextStyle(
                  color: const Color(0xFF757575),
                  fontSize: 13,
                  fontFamily: _fontFamily,
                  fontWeight: FontWeight.w500, // Medium - 소제목
                  height: 1.50,
                  letterSpacing: -0.14,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '339,390원',
                    style: TextStyle(
                      color: const Color(0xFF757575),
                      fontSize: 16,
                      fontFamily: _fontFamily,
                      fontWeight: FontWeight.w400, // Regular - 비활성 금액
                      height: 1.50,
                      letterSpacing: -0.18,
                    ),
                  ),
                  Text(
                    '+0원',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: const Color(0xFF757575),
                      fontSize: 18,
                      fontFamily: _fontFamily,
                      fontWeight: FontWeight.w600, // SemiBold - 혜택 없음
                      height: 1.50,
                      letterSpacing: -0.20,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildEfficiencyGuideSection() {
    return Container(
      width: 390,
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: const Color(0xFFF5F5F5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '카드 효율 등급 안내',
            style: TextStyle(
              color: const Color(0xFF757575),
              fontSize: 16,
              fontFamily: _fontFamily,
              fontWeight: FontWeight.w600, // SemiBold - 섹션 제목
              height: 1.50,
              letterSpacing: -0.18,
            ),
          ),
          const SizedBox(height: 25),
          _buildEfficiencyItem(
            label: '높은 효율',
            percentage: '3~6%',
            color: const Color(0xFF00B087),
          ),
          const SizedBox(height: 25),
          _buildEfficiencyItem(
            label: '중간 효율',
            percentage: '1~2%',
            color: const Color(0xFF874FFF),
          ),
          const SizedBox(height: 25),
          _buildEfficiencyItem(
            label: '낮은 효율',
            percentage: '0~1%',
            color: const Color(0xFFEB5E59),
          ),
          const SizedBox(height: 20),
          Text(
            '※ 총지출액 대비 혜택금액 비율',
            style: TextStyle(
              color: const Color(0xFF757575),
              fontSize: 13,
              fontFamily: _fontFamily,
              fontWeight: FontWeight.w300, // Light - 주석
              height: 1.50,
              letterSpacing: -0.14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEfficiencyItem({
    required String label,
    required String percentage,
    required Color color,
  }) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: ShapeDecoration(
            color: color.withOpacity(0.1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(
            label,
            style: TextStyle(
              color: color,
              fontSize: 13,
              fontFamily: _fontFamily,
              fontWeight: FontWeight.w600, // SemiBold - 배지
              height: 1.50,
              letterSpacing: -0.14,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Text(
          percentage,
          style: TextStyle(
            color: const Color(0xFF222222),
            fontSize: 13,
            fontFamily: _fontFamily,
            fontWeight: FontWeight.w500, // Medium - 숫자
            height: 1.50,
            letterSpacing: -0.14,
          ),
        ),
      ],
    );
  }
}
