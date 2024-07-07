import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:faveo/MyApp.dart';
import 'package:faveo/bloc/settings/helpers/cache_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  final savedThemeMode = await AdaptiveTheme.getThemeMode();

  await CacheHelper.init();

   FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(MyApp(savedThemeMode: savedThemeMode));

  FlutterNativeSplash.remove();
}


