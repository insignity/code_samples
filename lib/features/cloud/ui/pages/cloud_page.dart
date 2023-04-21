import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/components/app_loader.dart';
import '../../../../core/components/failure_handler.dart';
import '../../../../core/di/service_locator.dart';
import '../../../../core/routing/app_router.dart';
import '../../../../core/theming/app_theming.dart';
import '../../domain/entities/cloud_entities.dart';
import '../bloc/cloud_bloc.dart';
import '../widgets/cloud_login_loaded.dart';
import '../widgets/cloud_name_loaded.dart';
import '../widgets/cloud_points.dart';

class CloudPage extends StatefulWidget {
  const CloudPage({Key? key}) : super(key: key);

  @override
  State<CloudPage> createState() => _CloudPageState();
}

class _CloudPageState extends State<CloudPage> {
  final bloc = sl<CloudBloc>();

  @override
  void initState() {
    bloc.add(const CloudEvent.fetch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CloudBloc, CloudState>(
      bloc: bloc,
      listener: (context, state) {
        state.maybeWhen(
          pointLoaded: (point) {
            context.router.push(
              PointRouter(children: [LockRoute(pointId: point.id)]),
            );
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.primary,
          body: Center(
            child: state.when(
              initial: () => const SizedBox.shrink(),
              loading: () => const AppLoader(color: AppColors.white),
              error: (failure) => FailureHandler(
                failure: failure,
                onPressed: () {
                  bloc.add(const CloudEvent.setCloudName());
                },
              ),
              nameLoaded: (_) => CloudNameLoaded(
                onPressedButton: () {
                  bloc.add(const CloudEvent.checkCloud());
                },
                onChangedField: (text) {
                  bloc.add(CloudEvent.setCloudName(text));
                },
              ),
              loginLoaded: (_, __) {
                return CloudLoginLoaded(
                  onChangedLogin: (login) {
                    bloc.add(CloudEvent.setLogin(login));
                  },
                  onChangedPassword: (password) {
                    bloc.add(CloudEvent.setPassword(password));
                  },
                  onPressedButton: () {
                    bloc.add(const CloudEvent.login());
                  },
                );
              },
              pointsLoaded: (points) {
                return CloudPoints(
                  points: points,
                  onTap: (point) {
                    bloc.add(CloudEvent.savePoint(point));
                    context.router.push(
                      PointRouter(children: [LockRoute(pointId: point.id)]),
                    );
                  },
                );
              },
              pointLoaded: (PointDescriptionEntity pointDescription) {
                return const SizedBox.shrink();
              },
            ),
          ),
        );
      },
    );
  }
}
