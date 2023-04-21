import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/features/point/ui/widgets/point_loaded.dart';
import '../../../../core/components/app_header.dart';
import '../../../../core/components/app_loader.dart';
import '../../../../core/components/failure_handler.dart';
import '../../../../core/di/service_locator.dart';
import '../../../../core/routing/app_router.dart';
import '../../../../core/theming/app_theming.dart';
import '../../../../entities/entities.dart';
import '../bloc/point_bloc.dart';

class PointPage extends StatefulWidget {
  final PointEntity point;

  const PointPage({Key? key, required this.point}) : super(key: key);

  @override
  State<PointPage> createState() => _PointPageState();
}

class _PointPageState extends State<PointPage> {
  final bloc = sl<PointBloc>();

  @override
  void initState() {
    bloc.add(PointEvent.setPointEntity(widget.point));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(
        trailing: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
                onPressed: () {
                  context.router.push(const QuickOrderRoute());
                },
                child: Text("Quick Order")),
          ],
        ),
      ),
      backgroundColor: AppColors.background,
      body: BlocBuilder<PointBloc, PointState>(
        bloc: bloc,
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const AppLoader(),
            error: (failure) => FailureHandler(
              failure: failure,
              onPressed: () {},
            ),
            loaded: (point, hallIndex) {
              return PointLoaded(point: point, activeHallIndex: hallIndex);
            },
          );
        },
      ),
    );
  }
}
