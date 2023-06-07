import 'package:flutter/material.dart';
import 'package:moth/shared/widgets/m_animated_title/models/title_animation_config.dart';

class MAnimatedTitle extends StatefulWidget {
  final Widget firstTitle;
  final List<Widget> secondTitles;
  final ScrollController scrollController;
  final TitleAnimationConfig titleAnimationConfig;

  const MAnimatedTitle({
    required this.scrollController,
    required this.firstTitle,
    required this.secondTitles,
    this.titleAnimationConfig = const TitleAnimationConfig(),
    Key? key,
  }) : super(key: key);

  @override
  State<MAnimatedTitle> createState() => _MAnimatedTitleState();
}

class _MAnimatedTitleState extends State<MAnimatedTitle> {
  double coefficient = 0;

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(scrollListener);
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(scrollListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final coefficientOpacity1 = 1 - (coefficient * 3).clamp(0.0, 1.0);
    final offset1 = (coefficient * -3).clamp(-1.0, 0.0);

    final coefficientOpacity2 = (((coefficient - 1 / 3).clamp(0.0, 1.0)) * (1 / (1 / 3))).clamp(0.0, 1.0);
    final offset2 = 1 - ((((coefficient - 1 / 3).clamp(0.0, 1.0)) * (1 / (1 / 3))).clamp(0.0, 1.0));

    final coefficientOpacity3 = (((coefficient - 5 / 9).clamp(0.0, 1.0)) * (2)).clamp(0.0, 1.0);
    final offset3 = 1 - ((((coefficient - 5 / 9).clamp(0.0, 1.0)) * (1 / (1 / 3))).clamp(0.0, 1.0));

    return SizedBox(
      height: kToolbarHeight,
      width: MediaQuery.of(context).size.width - 144,
      child: Stack(
        children: [
          Positioned(
            bottom: (kToolbarHeight - 24) / 2,
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 144,
              child: Column(
                children: [
                  Opacity(
                    opacity: coefficientOpacity1,
                    child: FractionalTranslation(
                      translation: Offset(0, offset1),
                      child: widget.firstTitle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 144,
              child: Column(
                children: [
                  Opacity(
                    opacity: coefficientOpacity2,
                    child: FractionalTranslation(
                      translation: Offset(0, offset2),
                      child: widget.secondTitles.isEmpty ? const SizedBox() : widget.secondTitles[0],
                    ),
                  ),
                  Opacity(
                    opacity: coefficientOpacity3,
                    child: FractionalTranslation(
                      translation: Offset(0, offset3),
                      child: widget.secondTitles.length < 2 ? const SizedBox() : widget.secondTitles[1],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void scrollListener() {
    if (widget.scrollController.offset < widget.titleAnimationConfig.beginTrigger) {
      if (coefficient != 0.0) {
        setState(() {
          coefficient = 0.0;
        });
      }
    } else if (widget.scrollController.offset > widget.titleAnimationConfig.endTrigger) {
      if (coefficient != 1.0) {
        setState(() {
          coefficient = 1.0;
        });
      }
    } else {
      setState(() {
        coefficient = 1 -
            (widget.titleAnimationConfig.endTrigger -
                    widget.scrollController.offset
                        .clamp(widget.titleAnimationConfig.beginTrigger, widget.titleAnimationConfig.endTrigger)) /
                (widget.titleAnimationConfig.endTrigger - widget.titleAnimationConfig.beginTrigger);
      });
    }
  }
}
