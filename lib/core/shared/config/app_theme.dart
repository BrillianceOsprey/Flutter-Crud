import 'package:crud_flutter/core/shared/config/app_colors.dart';
import 'package:crud_flutter/core/shared/config/app_consts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get light => ThemeData(
        // useMaterial3: true,
        fontFamily: GoogleFonts.openSans().fontFamily,
        colorScheme: AppColors.lightColorSchemaFromSeed,

        //Elevated Button
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppConsts.buttonRadius),
            ),
          ),
        ),

        // Input decoration
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          isDense: true,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade200,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade200,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade200,
            ),
          ),
        ),

        // Checkbox
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.all<Color>(
            AppColors.lightColorSchema.primary,
          ),
          checkColor: MaterialStateProperty.all<Color>(
            AppColors.lightColorSchema.onPrimary,
          ),
        ),
      );

  static ThemeData get dark => ThemeData(
        // useMaterial3: true,
        fontFamily: GoogleFonts.openSans().fontFamily,
        colorScheme: AppColors.darkColorSchemaFromSeed,

        // Elevated button
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppConsts.buttonRadius),
            ),
          ),
        ),

        // Checkbox
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.all<Color>(
            AppColors.darkColorSchema.primaryContainer,
          ),
          checkColor: MaterialStateProperty.all<Color>(
            AppColors.darkColorSchema.onPrimaryContainer,
          ),
        ),
      );
}
