import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webman_ps3/components/bottom_navigation_bar.dart';
import 'package:webman_ps3/theme/theme_mods/bloc/theme_bloc.dart';
import 'package:webman_ps3/theme/theme_mods/bloc/theme_event.dart';
import 'package:webman_ps3/theme/theme_mods/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MultiBlocProvider(providers: [
    BlocProvider<ThemeBloc>(create: (_) => ThemeBloc()..add(InitialThemeSetEvent())),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeData>(builder: (context, state) {
      return MaterialApp(
        title: 'Webman PS3 for Mobile',
        theme: CustomTheme().lightTheme,
        themeMode: state == ThemeData.dark() ? ThemeMode.dark : ThemeMode.light,
        debugShowCheckedModeBanner: false,
        home: const BottomNavBar(),
      );
    });
  }
}
