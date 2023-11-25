import 'package:flutter/material.dart';
import 'package:tuiicore/core/config/theme/tuii_colors.dart';

enum IndicatorSide { start, end }

/// A vertical tab widget for flutter
class VerticalTabView extends StatefulWidget {
  final int initialIndex;
  final double tabsWidth;
  final double indicatorWidth;
  final IndicatorSide indicatorSide;

  final List<Tab> tabs;
  final List<Widget> contents;

  final PageController? pageController;

  final TextDirection direction;
  final Color indicatorColor;
  final bool disabledChangePageFromContentView;
  final Axis contentScrollAxis;
  final Color selectedTabBackgroundColor;
  final Color tabBackgroundColor;
  final TextStyle selectedTabTextStyle;
  final TextStyle tabTextStyle;
  final Duration changePageDuration;
  final Curve changePageCurve;
  final Color tabsShadowColor;
  final double tabsElevation;
  final Function(int tabIndex)? onSelect;
  final Color? backgroundColor;

  const VerticalTabView(
      {Key? key,
      required this.tabs,
      required this.contents,
      this.tabsWidth = 90,
      this.indicatorWidth = 3,
      this.pageController,
      this.indicatorSide = IndicatorSide.start,
      this.initialIndex = 0,
      this.direction = TextDirection.ltr,
      this.indicatorColor = TuiiColors.secondary,
      this.disabledChangePageFromContentView = true,
      this.contentScrollAxis = Axis.horizontal,
      this.selectedTabBackgroundColor =
          TuiiColors.secondaryTransparentSettingsBackground,
      this.tabBackgroundColor = TuiiColors.white,
      this.selectedTabTextStyle =
          const TextStyle(color: TuiiColors.secondary, fontSize: 16),
      this.tabTextStyle = const TextStyle(color: Colors.black38, fontSize: 16),
      this.changePageCurve = Curves.easeInOut,
      this.changePageDuration = const Duration(milliseconds: 300),
      this.tabsShadowColor = Colors.black54,
      this.tabsElevation = 0.0,
      this.onSelect,
      this.backgroundColor})
      : super(key: key);

  @override
  _VerticalTabViewState createState() => _VerticalTabViewState();
}

class _VerticalTabViewState extends State<VerticalTabView>
    with TickerProviderStateMixin {
  late int _selectedIndex;
  late bool _changePageByTapView;

  late Animation<double> animation;
  late Animation<RelativeRect> rectAnimation;
  late PageController pageController;

  List<AnimationController> animationControllers = [];

  ScrollPhysics pageScrollPhysics = const AlwaysScrollableScrollPhysics();

  @override
  void initState() {
    _selectedIndex = widget.initialIndex;
    _changePageByTapView = false;
    pageController = widget.pageController ?? PageController();

    for (int i = 0; i < widget.tabs.length; i++) {
      animationControllers.add(AnimationController(
        duration: const Duration(milliseconds: 200),
        vsync: this,
      ));
    }
    // _selectTab(widget.initialIndex);

    if (widget.disabledChangePageFromContentView == true) {
      pageScrollPhysics = const NeverScrollableScrollPhysics();
    }

    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _selectTab(widget.initialIndex);

      pageController.jumpToPage(widget.initialIndex);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: widget.direction,
      child: Container(
        color: widget.backgroundColor ?? Theme.of(context).canvasColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(height: 20),
            Expanded(
              child: Row(
                children: <Widget>[
                  Material(
                    elevation: widget.tabsElevation,
                    shadowColor: widget.tabsShadowColor,
                    shape: const BeveledRectangleBorder(),
                    child: Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              right:
                                  BorderSide(color: TuiiColors.inactiveTool))),
                      width: widget.tabsWidth,
                      child: ListView.builder(
                        itemCount: widget.tabs.length,
                        itemBuilder: (context, index) {
                          Tab tab = widget.tabs[index];

                          Alignment alignment = Alignment.centerLeft;
                          if (widget.direction == TextDirection.rtl) {
                            alignment = Alignment.centerRight;
                          }

                          Widget child;
                          if (tab.child != null) {
                            child = tab.child!;
                          } else {
                            child = Container(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  children: <Widget>[
                                    (tab.text != null)
                                        ? Expanded(
                                            child: SizedBox(
                                                width: widget.tabsWidth - 50,
                                                height: 20,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      tab.text!,
                                                      softWrap: true,
                                                      style: _selectedIndex == index
                                                          ? widget
                                                              .selectedTabTextStyle
                                                          : widget.tabTextStyle,
                                                    ),
                                                  ],
                                                )),
                                          )
                                        : Expanded(child: Container()),
                                    (tab.icon != null)
                                        ? Row(
                                            children: <Widget>[
                                              tab.icon!,
                                            ],
                                          )
                                        : Container(),
                                  ],
                                ));
                          }

                          Color itemBGColor = widget.tabBackgroundColor;
                          if (_selectedIndex == index) {
                            itemBGColor = widget.selectedTabBackgroundColor;
                          }

                          late double? left, right;
                          if (widget.direction == TextDirection.rtl) {
                            left = (widget.indicatorSide == IndicatorSide.end)
                                ? 0
                                : null;
                            right =
                                (widget.indicatorSide == IndicatorSide.start)
                                    ? 0
                                    : null;
                          } else {
                            left = (widget.indicatorSide == IndicatorSide.start)
                                ? 0
                                : null;
                            right = (widget.indicatorSide == IndicatorSide.end)
                                ? 0
                                : null;
                          }

                          return Stack(
                            children: <Widget>[
                              _changePageByTapView == true
                                  ? Positioned(
                                      top: 2,
                                      bottom: 2,
                                      width: widget.indicatorWidth,
                                      left: left,
                                      right: right,
                                      child: ScaleTransition(
                                        child: Container(
                                          color: widget.indicatorColor,
                                        ),
                                        scale:
                                            Tween(begin: 0.0, end: 1.0).animate(
                                          CurvedAnimation(
                                            parent: animationControllers[index],
                                            curve: Curves.elasticOut,
                                          ),
                                        ),
                                      ),
                                    )
                                  : Positioned(
                                      top: 2,
                                      bottom: 2,
                                      width: widget.indicatorWidth,
                                      left: left,
                                      right: right,
                                      child: Container(
                                        color: widget.indicatorColor,
                                      ),
                                    ),
                              GestureDetector(
                                onTap: () {
                                  _changePageByTapView = true;
                                  setState(() {
                                    _selectTab(index);
                                  });

                                  // pageController.animateToPage(index,
                                  //     duration: widget.changePageDuration,
                                  //     curve: widget.changePageCurve);

                                  pageController.jumpToPage(index);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: itemBGColor,
                                  ),
                                  alignment: alignment,
                                  padding: const EdgeInsets.all(10),
                                  child: child,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: PageView.builder(
                      scrollDirection: widget.contentScrollAxis,
                      physics: pageScrollPhysics,
                      onPageChanged: (index) {
                        if (_changePageByTapView == false) {
                          _selectTab(index);
                        }
                        if (_selectedIndex == index) {
                          _changePageByTapView = false;
                        }
                        setState(() {});
                      },
                      controller: pageController,
                      itemCount: widget.contents.length,
                      itemBuilder: (BuildContext context, int index) {
                        return widget.contents[index];
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _selectTab(index) {
    if (index == -1) return;

    _selectedIndex = index;
    for (AnimationController animationController in animationControllers) {
      animationController.reset();
    }
    animationControllers[index].forward();

    if (widget.onSelect != null) {
      widget.onSelect!(_selectedIndex);
    }
  }

  @override
  void dispose() {
    for (AnimationController animationController in animationControllers) {
      animationController.dispose();
    }
    super.dispose();
  }
}