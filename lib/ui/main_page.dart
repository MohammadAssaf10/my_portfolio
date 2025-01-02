import 'package:flutter/material.dart';

import '../core/utils/constant.dart';
import '../core/widgets/responsive_widget.dart';
import 'mobile/drawer_mobile.dart';
import 'mobile/mobile_body.dart';
import 'web/web_body.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Constant.scaffoldKey,
      endDrawer:
          ResponsiveWidget.isMobile(context) ? const DrawerMobile() : null,
      body: const ResponsiveWidget(
        mobile: MobileBody(),
        desktop: WebBody(),
      ),
    );
  }
}
