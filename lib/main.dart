import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/di/service_locator.dart';
import 'core/routing/app_router.dart';
import 'core/routing/observers/router_observer.dart';
import 'core/theming/app_theming.dart';
import 'core/utils/generated/l10n.dart';
import 'features/cloud/ui/bloc/cloud_bloc.dart';
import 'features/order/ui/bloc/order_bloc.dart';
import 'features/point/ui/bloc/point_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final AppRouter appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CloudBloc>(create: (context) => sl<CloudBloc>()),
        BlocProvider<PointBloc>(create: (context) => sl<PointBloc>()),
        BlocProvider<OrderBloc>(create: (context) => sl<OrderBloc>()),
      ],
      child: MaterialApp.router(
        theme: AppTheming.ipad,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        locale: const Locale('ru'),
        debugShowCheckedModeBanner: false,
        supportedLocales: const [
          Locale('en'),
          Locale('ru'),
        ],
        routerDelegate: appRouter.delegate(
          navigatorObservers: () => [RouterObserver()],
        ),
        routeInformationParser: appRouter.defaultRouteParser(
          includePrefixMatches: true,
        ),
        routeInformationProvider: appRouter.routeInfoProvider(),
      ),
    );
  }
}
