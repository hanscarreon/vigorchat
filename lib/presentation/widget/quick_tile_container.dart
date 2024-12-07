import 'package:chatvigor/core/theme/app_style.dart';
import 'package:chatvigor/presentation/widget/quick_tile.dart';
import 'package:flutter/material.dart';

class QuickTileContainer extends StatelessWidget {
  const QuickTileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppStyle.defaultHorizontalPadding,
      child: GridView.count(
        crossAxisCount: 4,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          QuickTiles(
            title: 'Open Account',
          ),
          QuickTiles(
            title: 'Get Loan',
          ),
          QuickTiles(
            title: 'Get Balance',
          ),
          QuickTiles(
            title: 'Rewards',
          ),
        ],
      ),
    );
  }
}
