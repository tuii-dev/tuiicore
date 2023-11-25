import 'package:defer_pointer/defer_pointer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:tuiicore/core/config/theme/tuii_colors.dart';
import 'package:tuiicore/core/widgets/tag_manager/bloc/tag_manager_bloc.dart';

class TagDisplayOption extends StatelessWidget {
  const TagDisplayOption(
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
    return DeferredPointerHandler(
      child: BlocBuilder<TagManagerBloc, TagManagerState>(
        builder: (context, state) {
          return Stack(
            clipBehavior: Clip.none,
            children: [
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  if (!readOnly) {
                    BlocProvider.of<TagManagerBloc>(context)
                        .add(RemoveTagEvent(tag: tag));
                  }
                },
                child: Container(
                    height: 36,
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: TuiiColors.tuiiBadge),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(tag,
                            style: TextStyle(
                              color: TuiiColors.tuiiBadge,
                              fontSize: 16,
                              fontFamily: fontFamily,
                            )),
                      ],
                    )),
              ),
              Positioned(
                  top: -6,
                  right: -6,
                  child: !readOnly
                      ? DeferPointer(
                          child: GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: () =>
                                BlocProvider.of<TagManagerBloc>(context)
                                    .add(RemoveTagEvent(tag: tag)),
                            child: Container(
                                height: 16,
                                width: 16,
                                padding: EdgeInsets.zero,
                                decoration: BoxDecoration(
                                  color: TuiiColors.tuiiBadge,
                                  border:
                                      Border.all(color: TuiiColors.tuiiBadge),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(MdiIcons.close,
                                        color: TuiiColors.white, size: 10),
                                  ],
                                )),
                          ),
                        )
                      : const SizedBox.shrink())
            ],
          );
        },
      ),
    );
  }
}