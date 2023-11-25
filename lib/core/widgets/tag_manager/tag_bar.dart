import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tuiicore/core/config/theme/tuii_colors.dart';
import 'package:tuiicore/core/widgets/tag_manager/bloc/tag_manager_bloc.dart';

@immutable
class TagBar extends StatelessWidget {
  const TagBar({Key? key, required this.fontFamily, this.readOnly = false})
      : super(key: key);

  final String fontFamily;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return _getTextFormField(context, '', true);
  }

  Widget _getTextFormField(
      BuildContext context, String hintText, bool includeAddIcon) {
    final controller = TextEditingController();
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
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
      child: TextFormField(
        // autocorrect: true,
        controller: controller,
        readOnly: readOnly,
        style: TextStyle(
          fontFamily: fontFamily,
          fontSize: 18.0,
        ),
        // onChanged: (value) {

        // },
        onFieldSubmitted: (value) {
          if (!readOnly) {
            final tag = controller.text;
            if (tag.isNotEmpty) {
              BlocProvider.of<TagManagerBloc>(context)
                  .add(AddTagEvent(tag: tag));
            }
          }
        },
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(color: TuiiColors.inactiveTool)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(color: TuiiColors.inactiveTool)),
          filled: true,
          hintStyle: const TextStyle(color: TuiiColors.lightText),
          hintText: hintText,
          fillColor: TuiiColors.white,
          suffixIcon: includeAddIcon
              ? Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      if (!readOnly) {
                        final tag = controller.text;
                        if (tag.isNotEmpty) {
                          BlocProvider.of<TagManagerBloc>(context)
                              .add(AddTagEvent(tag: tag));
                        }
                      }
                    },
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: readOnly
                            ? TuiiColors.inactiveTrim
                            : TuiiColors.tuiiBadge,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                          child: Icon(Icons.add, color: TuiiColors.white)),
                    ),
                  ),
                )
              : const SizedBox.shrink(),
        ),
      ),
    );
  }
}