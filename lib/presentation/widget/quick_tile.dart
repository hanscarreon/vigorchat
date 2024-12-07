import 'package:chatvigor/core/theme/app_style.dart';
import 'package:flutter/material.dart';

class QuickTiles extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final double imageSize;

  const QuickTiles({
    super.key,
    required this.title,
    this.onTap,
    this.imageSize = 40,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.account_balance_wallet,
            size: imageSize,
            color: Colors.black,
          ),
          Text(
            title,
            style: AppStyle.smallTextStyle,
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
