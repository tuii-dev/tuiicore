import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tuiicore/core/config/theme/tuii_colors.dart';
import 'package:tuiicore/core/widgets/tag_manager/bloc/tag_manager_bloc.dart';

class TagSelectionOption extends StatelessWidget {
  const TagSelectionOption(
      {Key? key,
      required this.tag,
      required this.fontFamily,
      this.readOnly = false})
      : super(key: key);

  final String tag;
  final String fontFamily;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TagManagerBloc, TagManagerState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            if (!readOnly) {
              BlocProvider.of<TagManagerBloc>(context)
                  .add(AddTagEvent(tag: tag));
            }
          },
          child: Container(
              height: 36,
              decoration: BoxDecoration(
                color:
                    readOnly ? TuiiColors.inactiveTrim : TuiiColors.tuiiBadge,
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(14, 8, 14, 8),
                  child: Text(tag,
                      style: TextStyle(
                        color: TuiiColors.white,
                        fontSize: 16,
                        fontFamily: fontFamily,
                      )))),
        );
      },
    );
  }
}