import 'package:flutter/material.dart';

import '../../core/utils/constant.dart';
import '../web/site_logo.dart';

class MobileHeader extends StatelessWidget {
  const MobileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.fromLTRB(15, 5, 15, 5),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.transparent,
            Theme.of(context).colorScheme.primary,
          ],
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: [
          const SizedBox(width: 10),
          const Expanded(
            child: SiteLogo(),
          ),
          Flexible(
            child: Align(
              alignment: AlignmentDirectional.centerEnd,
              child: IconButton(
                onPressed: () {
                  Constant.scaffoldKey.currentState?.openEndDrawer();
                },
                icon: const Icon(Icons.menu),
              ),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
