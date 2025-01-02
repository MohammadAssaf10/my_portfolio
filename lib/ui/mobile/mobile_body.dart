import 'package:flutter/material.dart';

import '../../core/widgets/projects_section.dart';
import '../../core/widgets/skills.dart';
import '../../core/widgets/web_section.dart';
import 'main_mobile.dart';
import 'mobile_header.dart';
import 'mobile_skills_data.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          MobileHeader(),
          MainMobile(),
          Skills(skillsData: MobileSkillsData()),
          SizedBox(height: 30),
          ProjectsSection(),
          SizedBox(height: 30),
          WebSection(),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
