import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:tuiicore/core/config/theme/tuii_colors.dart';
import 'package:tuiicore/core/widgets/tag_manager/bloc/tag_manager_bloc.dart';
import 'package:tuiicore/core/widgets/tag_manager/tag_bar.dart';
import 'package:tuiicore/core/widgets/tag_manager/tag_display.dart';
import 'package:tuiicore/core/widgets/tag_manager/tag_selection_list.dart';

class TagManager extends StatefulWidget {
  const TagManager({Key? key, required this.fontFamily, this.readOnly = false})
      : super(key: key);

  final String fontFamily;
  final bool readOnly;

  @override
  State<TagManager> createState() => _TagManagerState();
}

class _TagManagerState extends State<TagManager> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TagManagerBloc, TagManagerState>(
      builder: (context, state) {
        return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                    Text('Add Your Own:'.i18n,
                        style: const TextStyle(
                          fontSize: 14,
                          color: TuiiColors.black,
                        )),
                    const SizedBox(height: 5),
                    TagBar(
                      fontFamily: widget.fontFamily,
                      readOnly: widget.readOnly,
                    ),
                    const SizedBox(height: 5),
                    Expanded(
                        child: TagDisplay(
                      fontFamily: widget.fontFamily,
                      readOnly: widget.readOnly,
                    ))
                  ])),
              const SizedBox(width: 15),
              Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                    Text('Pick From The List:'.i18n,
                        style: const TextStyle(
                          fontSize: 14,
                          color: TuiiColors.black,
                        )),
                    const SizedBox(height: 5),
                    Expanded(
                        child: TagSelectionList(
                      fontFamily: widget.fontFamily,
                      readOnly: widget.readOnly,
                    ))
                  ]))
            ]);
      },
    );
  }
}