import 'package:animated_check/animated_check.dart';
// import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tuiicore/core/config/theme/tuii_colors.dart';

class SuccessfulDropAnimation extends StatefulWidget {
  const SuccessfulDropAnimation(
      {Key? key, required this.iconSize, required this.callback})
      : super(key: key);

  final double iconSize;
  final Function() callback;

  @override
  State<SuccessfulDropAnimation> createState() =>
      _SuccessfulDropAnimationState();
}

class _SuccessfulDropAnimationState extends State<SuccessfulDropAnimation>
    with SingleTickerProviderStateMixin {
  double opacity = 0;
  int animationLength = 300;

  late AnimationController _animationController;
  late Animation<double> _animation;
  // late AudioPlayer _audioPlayer;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: animationLength));

    _animation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.easeInOutCirc));

    // _audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);

    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        opacity = 1;
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    // _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
        opacity: opacity,
        duration: const Duration(milliseconds: 300),
        onEnd: () {
          Future.delayed(Duration(milliseconds: animationLength + 400), () {
            setState(() {
              widget.callback();
            });
          });
          // Future.delayed(const Duration(milliseconds: 100), () async {
          //   await _playLocal();
          // });
          _animationController.forward();
        },
        child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(color: TuiiColors.secondary, width: 3)),
            child: AnimatedCheck(
              color: TuiiColors.secondary,
              strokeWidth: 3,
              progress: _animation,
              size: widget.iconSize,
            )));
  }

  // Future<int> _playLocal() async {
  //   return await _audioPlayer.play('assets/sounds/drop-beep.wav',
  //       isLocal: true);
  // }
}