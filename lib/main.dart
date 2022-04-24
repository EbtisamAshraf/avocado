import 'package:avocado_healthy_food/constants/routes.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'business_logic/app_logic/app_cubit.dart';
import 'business_logic/app_logic/app_state.dart';
import 'constants/design_constants/theme_manager.dart';
import 'data/local_data/shared_preferences/shared_pref.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  await SharedPref.init();
  runApp(
    EasyLocalization(
      child: const MyApp(),
      path: 'resources/translation',
      supportedLocales: const [
        Locale('ar', 'AR'),
        Locale('en', 'EN'),
      ],
      saveLocale: true,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool? isDarkMode = SharedPref.getBoolData(key: 'isDark');
    return BlocProvider(
      create: (context) => AppCubit()..initDarkMode(isDarkMode: isDarkMode),
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            title: 'avocado',
            theme: ThemeManager.lightTheme(),
            darkTheme: ThemeManager.darkTheme(),
            themeMode:
                AppCubit.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
            initialRoute: Routes.splashRoute,
            onGenerateRoute: RouteGenerator.getRoute,
          );
        },
      ),
    );
  }
}
