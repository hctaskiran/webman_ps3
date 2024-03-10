import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webman_ps3/bloc/theme_bloc.dart';
import 'package:webman_ps3/bloc/theme_event.dart';
import 'package:webman_ps3/components/bottom_navigation_bar.dart';
import 'package:webman_ps3/constants/application_constants.dart';
import 'package:webman_ps3/core/enum/language_enum.dart';
import 'package:webman_ps3/theme/theme_mods/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final savedLocale = await Languages.loadLang();

  runApp(EasyLocalization(
    startLocale: savedLocale.toLocale(),
    supportedLocales: Application.supportedLanguages.toLocaleList(),
    path: Application.paths.language,
    fallbackLocale: Languages.english.toLocale(),
    child: MultiBlocProvider(providers: [
      BlocProvider<ThemeBloc>(create: (_) => ThemeBloc()..add(InitialThemeSetEvent())),
    ], child: const MyApp()),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeData>(builder: (context, state) {
      return MaterialApp(
        title: 'Webman PS3 for Mobile',
        locale: context.locale,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        theme: CustomTheme().lightTheme,
        themeMode: state == ThemeData.dark() ? ThemeMode.dark : ThemeMode.light,
        darkTheme: CustomTheme().darkTheme,
        debugShowCheckedModeBanner: false,
        home: const BottomNavBar(),
      );
    });
  }
}
