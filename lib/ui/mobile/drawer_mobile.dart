import 'package:flutter/material.dart';

import '../../core/theming/font_weight_helper.dart';
import '../../core/utils/constant.dart';
import '../../core/utils/functions.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 20,
                bottom: 20,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.close),
              ),
            ),
          ),
          for (int i = 0; i < Constant.appBarIcons.length; i++)
            ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              titleTextStyle: TextStyle(
                color: Theme.of(context).colorScheme.tertiary,
                fontWeight: FontWeightHelper.semiBold,
                fontSize: 16,
              ),
              onTap: () {
                Constant.scaffoldKey.currentState?.closeEndDrawer();
                scrollToSection(Constant.appBarKeys[i]);
              },
              leading: Icon(Constant.appBarIcons[i]),
              title: Text(Constant.appBarTitles[i]),
            )
        ],
      ),
    );
  }
}
