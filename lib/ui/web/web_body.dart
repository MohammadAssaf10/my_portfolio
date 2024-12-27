import 'package:flutter/material.dart';

import '../../core/utils/constant.dart';
import 'main_web.dart';
import 'web_contact.dart';
import 'web_header.dart';
import 'web_projects.dart';
import 'web_skills.dart';

class WebBody extends StatelessWidget {
  const WebBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          WebHeader(),
          MainWeb(),
          WebSkills(),
          SizedBox(height: 30),
          WebProjects(),
          SizedBox(height: 30),
          WebContact(),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
