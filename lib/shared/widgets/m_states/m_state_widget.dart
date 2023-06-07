import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

abstract class MState extends StatelessWidget {
  const MState({super.key});

  const factory MState.notFound() = _MStateNorFound;
  const factory MState.loading() = _MStateLoading;
}

class _MStateNorFound extends MState {
  const _MStateNorFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const AspectRatio(
            aspectRatio: 1,
            child: RiveAnimation.asset('assets/riv/not_happy.riv'),
          ),
          Text(
            'not_found'.tr(),
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ],
      ),
    );
  }
}

class _MStateLoading extends MState {
  const _MStateLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          AspectRatio(
            aspectRatio: 1,
            child: RiveAnimation.asset('assets/riv/ice_cream.riv'),
          ),
        ],
      ),
    );
  }
}
