import 'package:flutter/material.dart';
import 'package:projects/styles/app_text.dart';

import '../styles/app_colors.dart';

class Toolbar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final List<Widget>? actions;
  const Toolbar({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      backgroundColor: AppColors.background,
      title: Text(title,
      style: AppText.header2,
      ),
      centerTitle: false,
      actions: actions,
    );

  }

  @override
  Size get preferredSize => const Size.fromHeight(64);

}
