import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moth/features/discovery_test/presentation/state/discovery_bloc/discovery_bloc.dart';
import 'package:moth/features/discovery_test/presentation/state/discovery_bloc/discovery_models.dart';
import 'package:moth/shared/widgets/m_animated_title/m_animated_title.dart';

class DiscoveryTitleWidget extends StatelessWidget {
  final ScrollController scrollController;
  const DiscoveryTitleWidget({required this.scrollController, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiscoveryBloc, DiscoveryState>(
      builder: (context, state) {
        if (state is SuccessDiscovery) {
          return MAnimatedTitle(
            scrollController: scrollController,
            firstTitle: Text(
              'discovery'.tr(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            secondTitles: [
              Text(
                'discovery_results'.tr(),
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                state.devices.isEmpty ? 'not_found'.tr() : 'we_found'.tr(args: [state.devices.length.toString()]),
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          );
        } else {
          return Text(
            'discovery'.tr(),
            style: Theme.of(context).textTheme.headlineMedium,
          );
        }
      },
    );
  }
}
