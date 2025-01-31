import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/web/web_skills_data.dart';

import '../../core/widgets/projects_section.dart';
import '../../core/widgets/skills.dart';
import 'main_web.dart';
import '../../core/widgets/web_section.dart';
import 'web_header.dart';

class WebBody extends StatelessWidget {
  const WebBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          WebHeader(),
          MainWeb(),
          Skills(skillsData: WebSkillsData()),
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
