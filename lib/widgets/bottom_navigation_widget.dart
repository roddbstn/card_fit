import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../theme/app_theme.dart';

class BottomNavigationWidget extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavigationWidget({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.of(context).padding.bottom;
    return Container(
      padding: EdgeInsets.only(top: 9, bottom: 9 + bottomPadding),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: AppTheme.divider, width: 1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(
            icon: 'assets/icons/nav_home.svg',
            label: '홈',
            index: 0,
            isActive: currentIndex == 0,
          ),
          _buildNavItem(
            icon: 'assets/icons/nav_spending.svg',
            label: '소비 계획',
            index: 1,
            isActive: currentIndex == 1,
          ),
          _buildNavItem(
            icon: 'assets/icons/nav_profile.svg',
            label: '내 정보',
            index: 2,
            isActive: currentIndex == 2,
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required String icon,
    required String label,
    required int index,
    required bool isActive,
  }) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            icon,
            width: index == 0 ? 26 : (index == 1 ? 28 : 18),
            height: index == 0 ? 27 : (index == 1 ? 28 : 22),
            colorFilter: ColorFilter.mode(
              isActive ? AppTheme.navIconActive : AppTheme.iconGray,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: AppTheme.bodySmall.copyWith(
              color: isActive ? AppTheme.navIconActive : AppTheme.iconGray,
            ),
          ),
        ],
      ),
    );
  }
}
