import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../theme/app_theme.dart';
import '../models/benefit_item.dart';
import '../utils/string_formatters.dart';

class BenefitItemWidget extends StatelessWidget {
  final BenefitItem item;

  const BenefitItemWidget({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Category info
        Expanded(
          child: Row(
            children: [
              item.categoryIcon.endsWith('.svg')
                  ? SvgPicture.asset(
                      item.categoryIcon,
                      width: 24,
                      height: 24,
                      colorFilter: const ColorFilter.mode(
                        AppTheme.textPrimary,
                        BlendMode.srcIn,
                      ),
                    )
                  : Image.asset(
                      item.categoryIcon,
                      width: 24,
                      height: 24,
                      fit: BoxFit.contain,
                    ),
              const SizedBox(width: AppTheme.spacingS),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    StringFormatters.formatWon(item.spentAmount),
                    style: AppTheme.headingSmall,
                  ),
                  Text(
                    item.categoryName,
                    style: AppTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
        ),
        // Dots separator
        SvgPicture.asset(
          'assets/icons/dots_separator.svg',
          width: 22,
          height: 8,
        ),
        const SizedBox(width: AppTheme.spacingL),
        // Benefit amount
        Row(
          children: [
            Text(
              '혜택',
              style: AppTheme.bodySmall.copyWith(color: AppTheme.primary),
            ),
            const SizedBox(width: AppTheme.spacingXs),
            Text(
              StringFormatters.formatWon(item.benefitAmount),
              style: AppTheme.headingSmall.copyWith(color: AppTheme.primary),
            ),
          ],
        ),
      ],
    );
  }
}