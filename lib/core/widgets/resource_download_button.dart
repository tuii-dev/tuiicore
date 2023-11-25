import 'package:flutter/material.dart';
import 'package:tuiicore/core/common/common.dart';
import 'package:tuiicore/core/common/core_i18n.dart';
import 'package:tuiicore/core/config/theme/tuii_colors.dart';

class ResourceDownloadButton extends StatelessWidget {
  const ResourceDownloadButton(
      {super.key, required this.url, required this.downloadName});

  final String url;
  final String downloadName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: TuiiColors.primary),
          borderRadius: BorderRadius.circular(3.0)),
      child: Material(
        color: TuiiColors.primaryTransparentBackground,
        child: InkWell(
            hoverColor: TuiiColors.primary.withOpacity(0.1),
            splashColor: TuiiColors.primary,
            onTap: () async {
              downloadFileToClientBrowser(url, downloadName);
            },
            child: SizedBox(
              width: 70,
              height: 22,
              child: Center(
                child: Text('Download'.i18n,
                    style: const TextStyle(
                        fontSize: 12.0, color: TuiiColors.primary)),
              ),
            )),
      ),
    );
  }
}