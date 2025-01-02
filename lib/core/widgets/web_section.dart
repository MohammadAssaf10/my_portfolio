import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../theming/font_weight_helper.dart';
import '../utils/constant.dart';
import '../utils/functions.dart';
import 'custom_text_field.dart';
import '../../generated/assets.dart';

class WebSection extends StatefulWidget {
  const WebSection({super.key});

  @override
  State<WebSection> createState() => _WebSectionState();
}

class _WebSectionState extends State<WebSection> {
  final TextEditingController subjectTextController = TextEditingController();
  final TextEditingController bodyTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      key: Constant.appBarKeys.last,
      constraints: const BoxConstraints(
        maxWidth: 700,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.fromLTRB(25, 30, 25, 30),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          // title
          Text(
            "Contact Me",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),

          const SizedBox(height: 50),
          CustomTextField(
            controller: subjectTextController,
            hintText: "Subject",
          ),
          const SizedBox(height: 15),
          // message
          CustomTextField(
            controller: bodyTextController,
            hintText: "Your message",
            maxLines: 16,
          ),
          const SizedBox(height: 20),
          // send button
          SizedBox(
            width: double.maxFinite,
            child: ElevatedButton(
              onPressed: () {
                if (subjectTextController.text.isNotEmpty &&
                    bodyTextController.text.isNotEmpty) {
                  sendEmail(
                    subject: subjectTextController.text,
                    body: bodyTextController.text,
                  );
                } else {
                  Fluttertoast.showToast(
                    msg:
                        "Please fill all required fields before sending message",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 2,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    textColor: Theme.of(context).colorScheme.tertiary,
                    fontSize: 16,
                    webPosition: "center_bottom",
                    webBgColor: "#333646",
                  );
                }
              },
              child: const Text(
                "Send",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeightHelper.bold,
                ),
              ),
            ),
          ),

          const Divider(
            endIndent: 180,
            indent: 180,
            height: 60,
          ),

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
