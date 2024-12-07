import 'package:chatvigor/core/theme/app_colors.dart';
import 'package:chatvigor/core/theme/app_style.dart';
import 'package:chatvigor/core/widget/app_bar/app_bar.dart';
import 'package:chatvigor/presentation/screen/chat_vigor_screen.dart';
import 'package:chatvigor/presentation/widget/quick_tile_container.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  static const String routeName = '/landing';
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VCAppBar.withTitle(
        context: context,
        title: 'Home',
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 127,
                  width: double.infinity,
                  color: AppColors.primaryColor,
                ),
                const SizedBox(
                  height: 50,
                  child: Center(
                    child: Text(
                      'Vigor Chat Icon',
                      style: AppStyle.titleStyle,
                    ),
                  ),
                ),
                Padding(
                  padding: AppStyle.defaultHorizontalPadding,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      ClipRRect(
                        borderRadius: AppStyle.borderRadius,
                        child: SizedBox.fromSize(
                          size: const Size.fromHeight(120),
                          child: Container(
                            padding: AppStyle.modalPaddingSheet,
                            decoration: const BoxDecoration(
                              color: AppColors.white,
                            ),
                            child: const Column(
                              children: [Text('Hi Welcome to ChatVigor')],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const QuickTileContainer()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Vigor Chat',
        onPressed: () {
          Navigator.pushNamed(context, ChatVigorScreen.routeName);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
