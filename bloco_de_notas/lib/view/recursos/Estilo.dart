

import 'package:flutter/material.dart';

ThemeData estilo() {
  ThemeData base = ThemeData.light();

  return base.copyWith(
    primaryColor: Colors.brown.shade100,
    colorScheme: ColorScheme.light(),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.brown.shade900,
      foregroundColor: Colors.white,
      hoverColor: Colors.brown.shade400
    )
  );
}