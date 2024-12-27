import 'package:flutter/material.dart';

import '../../core/utils/constant.dart';
import '../../core/utils/functions.dart';
import '../../core/widgets/custom_text_field.dart';
import '../../generated/assets.dart';

class WebContact extends StatelessWidget {
  const WebContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: Constant.appBarKeys.last,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: Theme.of(context).colorScheme.primary,
      child: Column(
        children: [
          // title
          Text(
            "Get in touch",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),

          const SizedBox(height: 50),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
              maxHeight: 100,
            ),
            child: LayoutBuilder(
              builder: (context, constraints) {
                // if (constraints.maxWidth >= kMinDesktopWidth) {
                return buildNameEmailFieldDesktop();
                // }

                // else
                // return buildNameEmailFieldMobile();
              },
            ),
          ),
          const SizedBox(height: 15),
          // message
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: const CustomTextField(
              hintText: "Your message",
              maxLines: 16,
            ),
          ),
          const SizedBox(height: 20),
          // send button
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Get in touch"),
              ),
            ),
          ),
          const SizedBox(height: 30),

          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 300,
            ),
            child: const Divider(),
          ),
          const SizedBox(height: 15),

          // SNS icon button links
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  openUrl(SocialMediaLinks.github);
                },
                child: Image.asset(
                  Assets.imagesGithub,
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  openUrl(SocialMediaLinks.linkedIn);
                },
                child: Image.asset(
                  Assets.imagesLinkedin,
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  openUrl(SocialMediaLinks.facebook);
                },
                child: Image.asset(
                  Assets.imagesFacebook,
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  openUrl(SocialMediaLinks.telegram);
                },
                child: Image.asset(
                  Assets.imagesTelegram,
                  width: 28,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Row buildNameEmailFieldDesktop() {
    return const Row(
      children: [
        // name
        Flexible(
          child: CustomTextField(
            hintText: "Your name",
          ),
        ),
        SizedBox(width: 15),
        // email
        Flexible(
          child: CustomTextField(
            hintText: "Your email",
          ),
        ),
      ],
    );
  }

  Column buildNameEmailFieldMobile() {
    return const Column(
      children: [
        // name
        Flexible(
          child: CustomTextField(
            hintText: "Your name",
          ),
        ),
        SizedBox(height: 15),
        // email
        Flexible(
          child: CustomTextField(
            hintText: "Your email",
          ),
        ),
      ],
    );
  }
}
