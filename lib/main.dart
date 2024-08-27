import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:refridge/firebase_options.dart';
import 'package:refridge/src/services/first_launch/bloc/first_launch_bloc.dart';
import 'package:refridge/src/services/notifications/bloc/remote_notifications_bloc.dart';
import 'package:refridge/src/services/snackbar/blocs/snackbar_bloc.dart';
import 'package:refridge/src/settings/get_it_setup.dart';
import 'package:refridge/src/settings/navigation_service.dart';
import 'package:refridge/src/settings/router/router.dart';
import 'package:refridge/src/settings/router/routes.dart';
import 'package:refridge/src/settings/theme/themes.dart';
import 'package:refridge/src/views/auth_screens/blocs/auth_bloc.dart';
import 'package:refridge/src/views/user_auth_wrapper/presentation/user_auth_wrapper.dart';
import 'package:refridge/src/widgetbook/snackbar/custom_snackbar.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  configureGetIt();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider.value(value: getIt<SnackbarBloc>()),
      BlocProvider.value(
        value: getIt<FirstLaunchBloc>()
          ..add(
            const FirstLaunchEvent.isFirstLaunch(),
          ),
      ),
      BlocProvider.value(
        value: getIt<RemoteNotificationsBloc>()
          ..add(
            const RemoteNotificationsEvent.requestNotificationPermission(),
          ),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final RouteObserver routeObserver = RouteObserver();
    final navigator = getIt<NavigationService>();

    return MaterialApp(
      title: 'ReFridge',
      theme: lightTheme,
      onGenerateRoute: generateRoutes,
      navigatorKey: getIt<NavigationService>().navigatorKey,
      navigatorObservers: [routeObserver],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => getIt<AuthBloc>()),
        ],
        child: MultiBlocListener(
          listeners: [
            BlocListener<FirstLaunchBloc, FirstLaunchState>(
                listenWhen: (previous, current) =>
                    current.isFirstLaunch == true,
                listener: (context, state) async {
                  navigator.navigateTo(Routes.firstLaunchScreen);
                }),
            BlocListener<SnackbarBloc, SnackbarState>(
                listenWhen: (previous, current) => current.showSnackbar == true,
                listener: (context, state) async {
                  showAnimatedTopSnackBar(
                    context,
                    state.snackbarType ?? SnackbarType.info,
                    state.title ?? '',
                    state.body ?? '',
                  );
                  context.read<SnackbarBloc>().add(
                        const SnackbarEvent.initial(),
                      );
                })
          ],
          child: UserAuthWrapper(),
        ),
      ),
    );
  }
}
