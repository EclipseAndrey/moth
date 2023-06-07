import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:moth/features/discovery_test/presentation/state/discovery_bloc/discovery_bloc.dart';
import 'package:moth/features/discovery_test/presentation/state/discovery_bloc/discovery_models.dart';
import 'package:moth/features/discovery_test/presentation/ui/widgets/list_devices.dart';
import 'package:moth/features/discovery_test/presentation/ui/widgets/title.dart';
import 'package:rive/rive.dart';

@RoutePage()
class DiscoveryTestScreen extends StatefulWidget {
  const DiscoveryTestScreen({Key? key}) : super(key: key);

  @override
  State<DiscoveryTestScreen> createState() => _DiscoveryTestScreenState();
}

class _DiscoveryTestScreenState extends State<DiscoveryTestScreen> {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DiscoveryBloc>(
      create: (context) => GetIt.I.get<DiscoveryBloc>()..add(const DiscoveryEvent.search()),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: DiscoveryTitleWidget(
              scrollController: scrollController,
            ),
          ),
          body: SafeArea(
            child: BlocBuilder<DiscoveryBloc, DiscoveryState>(builder: (context, state) {
              if (state is LoadingDiscovery) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const AspectRatio(
                        aspectRatio: 1,
                        child: RiveAnimation.asset('assets/riv/animalin.riv'),
                      ),
                      Text(
                        'finding'.tr(),
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                );
              } else if (state is SuccessDiscovery) {
                return ListDevicesContent(
                  scrollController: scrollController,
                );
              } else {
                return Column(
                  children: [
                    const AspectRatio(
                      aspectRatio: 1,
                      child: RiveAnimation.asset('assets/riv/not_happy.riv'),
                    ),
                    Text(
                      'error'.tr(),
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                );
              }
            }),
          ),
        );
      }),
    );
  }
}
