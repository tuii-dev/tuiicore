import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tuiicore/core/config/theme/tuii_colors.dart';
import 'package:tuiicore/core/widgets/tag_manager/bloc/tag_manager_bloc.dart';
import 'package:tuiicore/core/widgets/tag_manager/tag_display_option.dart';

class TagDisplay extends StatelessWidget {
  const TagDisplay({Key? key, required this.fontFamily, this.readOnly = false})
      : super(key: key);

  final String fontFamily;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TagManagerBloc, TagManagerState>(
      builder: (context, state) {
        final tags = state.tags ?? [];
        return Container(
            decoration: BoxDecoration(
              color: TuiiColors.white,
              border: Border.all(color: TuiiColors.inactiveTool),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: TuiiColors.lightText.withOpacity(0.3),
                  spreadRadius: 0,
                  blurRadius: 2,
                  offset: const Offset(1, 1), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              child: SizedBox(
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      for (int i = 0; i < tags.length; i++)
                        TagDisplayOption(
                            tag: tags[i],
                            fontFamily: fontFamily,
                            readOnly: readOnly)
                    ],
                  ),
                ),
              ),
            ));
      },
    );
  }
}