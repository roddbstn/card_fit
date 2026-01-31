import 'package:flutter/material.dart';

class AppTheme {
  // Font Family
  static const String fontFamily = 'Pretendard';

  // Colors
  static const Color background = Color(0xFFF3F3F3);
  static const Color cardBackground = Color(0xFFFAFAF8);
  static const Color primary = Color(0xFF874FFF);
  static const Color primaryLight = Color(0xFFE9E0FF);
  static const Color textPrimary = Color(0xFF222222);
  static const Color textDark = Color(0xFF1E1E1E);
  static const Color textSecondary = Color(0xFF757575);
  static const Color divider = Color(0xFFF1F1F1);
  static const Color iconGray = Color(0xFF979797);
  static const Color navIconActive = Color(0xFF2F2B30);
  static const Color paginationActive = Color(0xFF444444);
  static const Color paginationInactive = Color(0xFFD9D9D9);
  static const Color cardBorder = Color(0xFF979797);
  static const Color errorRed = Color(0xFFEB5E59);
  static const Color successGreen = Color(0xFF00B087);

  // Spacing
  static const double spacingXs = 5.0;
  static const double spacingS = 10.0;
  static const double spacingM = 15.0;
  static const double spacingL = 20.0;
  static const double spacingXl = 30.0;
  static const double spacingXxl = 40.0;

  // Border radius
  static const double radiusCard = 13.0;
  static const double radiusBigButton = 13.0;
  static const double radiusSmallButton = 29.0;

  // ============================================
  // Text Styles with Visual Hierarchy
  // ============================================

  // Display - 가장 큰 제목 (ExtraBold/Black - w800/w900)
  static TextStyle get displayLarge => const TextStyle(
    fontFamily: fontFamily,
    fontSize: 26,
    fontWeight: FontWeight.w800, // ExtraBold
    letterSpacing: -0.30,
    height: 1.4,
    color: textDark,
  );

  static TextStyle get displayMedium => const TextStyle(
    fontFamily: fontFamily,
    fontSize: 22,
    fontWeight: FontWeight.w700, // Bold
    letterSpacing: -0.24,
    height: 1.5,
    color: textDark,
  );

  // Heading - 섹션 제목 (Bold/SemiBold - w700/w600)
  static TextStyle get headingLarge => const TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w700, // Bold
    letterSpacing: -0.20,
    height: 1.5,
    color: textPrimary,
  );

  static TextStyle get headingMedium => const TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600, // SemiBold
    letterSpacing: -0.18,
    height: 1.5,
    color: textPrimary,
  );

  static TextStyle get headingSmall => const TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w600, // SemiBold
    letterSpacing: -0.15,
    height: 1.5,
    color: textDark,
  );

  // Body - 본문 텍스트 (Medium/Regular - w500/w400)
  static TextStyle get bodyLarge => const TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w500, // Medium
    letterSpacing: -0.18,
    height: 1.6,
    color: textPrimary,
  );

  static TextStyle get bodyMedium => const TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400, // Regular
    letterSpacing: -0.15,
    height: 1.5,
    color: textSecondary,
  );

  static TextStyle get bodySmall => const TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400, // Regular
    letterSpacing: -0.13,
    height: 1.5,
    color: textSecondary,
  );

  // Label - 라벨, 버튼 텍스트 (SemiBold/Medium - w600/w500)
  static TextStyle get labelLarge => const TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600, // SemiBold
    letterSpacing: -0.18,
    height: 1.5,
    color: primary,
  );

  static TextStyle get labelPrimary => const TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600, // SemiBold
    letterSpacing: -0.18,
    height: 1.5,
    color: primary,
  );

  static TextStyle get labelSecondary => const TextStyle(
    fontFamily: fontFamily,
    fontSize: 13,
    fontWeight: FontWeight.w500, // Medium
    letterSpacing: -0.14,
    height: 1.5,
    color: primary,
  );

  static TextStyle get labelSmall => const TextStyle(
    fontFamily: fontFamily,
    fontSize: 11,
    fontWeight: FontWeight.w500, // Medium
    letterSpacing: -0.12,
    height: 1.5,
    color: textSecondary,
  );

  // Caption - 보조 텍스트, 힌트 (Light/Regular - w300/w400)
  static TextStyle get caption => const TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w300, // Light
    letterSpacing: -0.13,
    height: 1.5,
    color: textSecondary,
  );

  // Benefit/Amount - 금액 표시 (Bold/ExtraBold - w700/w800)
  static TextStyle get benefitAmount => const TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w700, // Bold
    letterSpacing: -0.20,
    height: 1.5,
    color: textPrimary,
  );

  static TextStyle get amountLarge => const TextStyle(
    fontFamily: fontFamily,
    fontSize: 22,
    fontWeight: FontWeight.w800, // ExtraBold
    letterSpacing: -0.24,
    height: 1.5,
    color: primary,
  );

  static TextStyle get amountMedium => const TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w700, // Bold
    letterSpacing: -0.18,
    height: 1.5,
    color: textPrimary,
  );

  // Badge/Tag - 태그, 배지 텍스트 (Medium - w500)
  static TextStyle get badge => const TextStyle(
    fontFamily: fontFamily,
    fontSize: 13,
    fontWeight: FontWeight.w500, // Medium
    letterSpacing: -0.14,
    height: 1.5,
    color: primary,
  );

  static TextStyle get badgeSmall => const TextStyle(
    fontFamily: fontFamily,
    fontSize: 10,
    fontWeight: FontWeight.w500, // Medium
    letterSpacing: -0.11,
    height: 1.5,
    color: primary,
  );

  // Button - 버튼 텍스트 (SemiBold/Bold - w600/w700)
  static TextStyle get buttonLarge => const TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600, // SemiBold
    letterSpacing: -0.18,
    height: 1.5,
    color: Colors.white,
  );

  static TextStyle get buttonMedium => const TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w600, // SemiBold
    letterSpacing: -0.15,
    height: 1.5,
    color: Colors.white,
  );

  // Error/Warning - 에러, 경고 텍스트
  static TextStyle get errorText => const TextStyle(
    fontFamily: fontFamily,
    fontSize: 13,
    fontWeight: FontWeight.w600, // SemiBold
    letterSpacing: -0.14,
    height: 1.5,
    color: errorRed,
  );

  // Highlight - 강조 텍스트 (Bold with primary color)
  static TextStyle get highlightPrimary => const TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w700, // Bold
    letterSpacing: -0.20,
    height: 1.5,
    color: primary,
  );

  static TextStyle get highlightError => const TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w700, // Bold
    letterSpacing: -0.20,
    height: 1.5,
    color: errorRed,
  );
}
