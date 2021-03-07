import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutAppDialog extends StatelessWidget {
  const AboutAppDialog({
    Key? key,
  }) : super(key: key);

  Future<void> _launchGitHub() async {
    try {
      const url =
          'https://github.com/dhimasdewanto/convert_image_to_ascii';
      if (await canLaunch(url)) {
        await launch(url);
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> _launchLicense() async {
    try {
      const url =
          'https://github.com/dhimasdewanto/convert_image_to_ascii/blob/master/LICENSE';
      if (await canLaunch(url)) {
        await launch(url);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    final bodyText1 =
        Theme.of(context).textTheme.bodyText1 ?? const TextStyle();

    return FutureBuilder<PackageInfo>(
      future: PackageInfo.fromPlatform(),
      builder: (context, snapshot) {
        if (snapshot.hasData == false) {
          return const Offstage();
        }

        final packageInfo = snapshot.data;
        if (packageInfo == null) {
          return const Offstage();
        }

        return SimpleDialog(
          title: Text(tr('about')),
          contentPadding: const EdgeInsets.all(24),
          children: [
            Text(
              "v${packageInfo.version}+${packageInfo.buildNumber}",
              style: bodyText1,
            ),
            const SizedBox(height: 24),
            InkWell(
              onTap: _launchGitHub,
              child: Text(
                "GitHub",
                style: bodyText1.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const SizedBox(height: 24),
            InkWell(
              onTap: _launchLicense,
              child: Text(
                "BSD 3-Clause License",
                style: bodyText1.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
