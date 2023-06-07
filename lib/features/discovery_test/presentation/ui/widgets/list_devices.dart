import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moth/features/discovery_test/presentation/state/discovery_bloc/discovery_bloc.dart';
import 'package:moth/features/discovery_test/presentation/state/discovery_bloc/discovery_models.dart';
import 'package:moth/shared/widgets/m_list_tile/m_list_tile.dart';
import 'package:moth/shared/widgets/m_states/m_state_widget.dart';
import 'package:sliver_tools/sliver_tools.dart';

class ListDevicesContent extends StatelessWidget {
  final ScrollController scrollController;
  const ListDevicesContent({
    required this.scrollController,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiscoveryBloc, DiscoveryState>(builder: (context, state) {
      if (state is SuccessDiscovery) {
        if (state.devices.isNotEmpty) {
          return CustomScrollView(
            physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            controller: scrollController,
            slivers: [
              MultiSliver(
                children: [
                  SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      return MListTile(
                        icon: 'assets/icons/device.svg',
                        title: state.devices[index]['LOCATION'] ?? 'new_device'.tr(),
                        subtitle: state.devices[index]['USN'] ?? '',
                      );
                    }, childCount: state.devices.length),
                  ),
                ],
              ),
            ],
          );
        } else {
          return MState.notFound();
        }
      }
      return const SizedBox();
    });
  }
}
