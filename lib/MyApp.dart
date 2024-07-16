
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:faveo/bloc/auth/cubit/auth_cubit.dart';
import 'package:faveo/bloc/auth/login/cubit/login_cubit.dart';
import 'package:faveo/bloc/settings/cubit/language_cubit.dart';
import 'package:faveo/bloc/settings/helpers/app_language.dart';
import 'package:faveo/cubits/inbox/inbox_list_cubit.dart';
import 'package:faveo/cubits/tickets/ticket_list_cubit.dart';
import 'package:faveo/pages/Auth/login_screen.dart';
import 'package:faveo/pages/home_page.dart';
import 'package:faveo/utils/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:nb_utils/nb_utils.dart';


class MyApp extends StatefulWidget {
  final AdaptiveThemeMode? savedThemeMode;
  const MyApp( {super.key, this.savedThemeMode});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: Themes.light,
      dark: Themes.dark,
      initial: widget.savedThemeMode ?? AdaptiveThemeMode.light,
      builder: (theme, darkTheme) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (BuildContext context) =>
                  LanguageCubit()..getSavedLanguage(),
                  
            ),
            BlocProvider(
              create: (context) => LoginCubit(),
            ),
            BlocProvider(
              create: (context) => AuthCubit(),
            ),
             BlocProvider(
              create: (context) => TicketListCubit(),
            ),
            BlocProvider(
              create: (context) => InboxListCubit(),
            ),
          ],
          child: BlocBuilder<LanguageCubit, LanguageState>(
            builder: (context, state) {
              if (state is ChangeLanguageState) {
                return MaterialApp(
                  locale: state.locale,
                  title: 'FAVEO',
                  showPerformanceOverlay: false,
                  theme: theme,
                  darkTheme: darkTheme,
                  debugShowCheckedModeBanner: false,
                  supportedLocales: const [
                    Locale('en', ""),
                    Locale("sw", ""),
                  ],
                  localizationsDelegates: const [
                    AppLocalizations.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  localeResolutionCallback: (currentLocal, supportedLocales) {
                    for (var locale in supportedLocales) {
                      if (currentLocal != null &&
                          currentLocal.languageCode == locale.languageCode) {
                        return currentLocal;
                      }
                    }
                    return supportedLocales.first;
                  },
                  home: BlocBuilder<AuthCubit, AuthState>(
                    bloc: AuthCubit()..isAuthenticated(),
                    builder: (context, state) {
                      return state.maybeWhen(success: (isAuth) {
                        return  (isAuth)
                                ? const HomePage()
                                : const LoginScreen();
                      }, orElse: () {
                        return Scaffold(
                          body: Center(
                            child: Loader(
                              size: 50,
                            ),
                          ),
                        );
                      });
                    },
                  ),
                );
              }
              return const SizedBox();
            },
          ),
        );
      },
    );
  }
}
