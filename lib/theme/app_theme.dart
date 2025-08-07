import 'package:flutter/material.dart';

class AppColors {
  // Brand Colors
  static const Color brandColor = Color(0xFF000DFF);
  static const Color brandSecondaryColor = Color(0xFF6B73FF);

  // Light Theme Colors
  static const Color lightPrimary = Color(0xFF3843FF);
  static const Color lightSecondary = Color(0xFFEBECFF);
  static const Color lightBackgroundColor = Color(0xFFF6F9FF);
  static const Color lightSurfaceColor = Color(0xFFFFFFFF);
  static const Color lightText = Color(0xFF040415);
  static const Color lightTextMuted = Color(0xFF9B9BA1);
  static const Color lightTextSecondary = Color(0xFF686873);
  static const Color lightTextTertiary = Color(0xFFD7D9FF);
  static const Color lightHint = Color(0xFFCDCDD0);
  static const Color lightDivider = Color(0xFFCDCDD0);
  static const Color lightIcon = Color(0xFF9B9BA1);
  static const Color lightBorder = Color(0xFFEAECF0);
  static const Color lightBackgroundSurface = Color(0xFFF3F4F6);

  //
  static const Color secondaryDarkBlue = Color(0xFF878EA8);

  // Dark Theme Colors
  // static const Color darkPrimary = Color(0xFF3843FF);
  // static const Color darkBackgroundColor = Color(0xFF1E1E1E);
  // static const Color darkSurfaceColor = Color(0xFF2C2C2C);
  // static const Color darkText = Color(0xFFE0E0E0);
  // static const Color darkTextSecondary = Color(0xFFA0A0A0);
  // static const Color darkHint = Color(0xFFB0B0B0);
  // static const Color darkDivider = Color(0xFFB0B0B0);
  // static const Color darkIcon = Color(0xFF9B9BA1);
  // static const Color darkBorder = Color(0xFF424242);

  // Common Colors
  static const Color errorColor = Color(0xFFFF5252);
  static const Color successColor = Color(0xFF4CAF50);
}

class AppTheme {
  AppTheme._();
  

  static ThemeData get light {
    final fontFamily = 'AirbnbCereal';
    final baseTheme = ThemeData.light();
    final baseTextTheme = baseTheme.textTheme.apply(fontFamily: fontFamily,
    );

    return baseTheme.copyWith(
      brightness: Brightness.light,
      primaryColor: AppColors.brandColor,
      scaffoldBackgroundColor: AppColors.lightBackgroundColor,
      cardColor: AppColors.lightSurfaceColor,
      iconTheme: const IconThemeData(color: AppColors.lightIcon, size: 24.0),
      colorScheme:
          ColorScheme.fromSeed(
            seedColor: AppColors.brandColor,
            brightness: Brightness.light,
          ).copyWith(
            primary: AppColors.lightPrimary,
            secondary: AppColors.brandSecondaryColor,
            tertiary: AppColors.lightTextSecondary,
            surface: AppColors.lightSurfaceColor,
            secondaryContainer: AppColors.lightSecondary,
            tertiaryContainer: AppColors.lightBackgroundSurface,
            onPrimary: AppColors.lightSurfaceColor,
            onSecondary: AppColors.lightSurfaceColor,
            onSurface: AppColors.lightText,
            onSecondaryContainer: AppColors.lightPrimary,
            onPrimaryContainer: AppColors.lightTextTertiary,
            outline: AppColors.lightBorder,
            error: AppColors.errorColor,
            onError: Colors.white,
      ),

      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.lightSurfaceColor,
        foregroundColor: AppColors.lightText,
        titleSpacing: 8,
        leadingWidth: 72,
        toolbarHeight: 72,
        elevation: 0,
        titleTextStyle: TextStyle(
          fontFamily: fontFamily,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.lightText,
        ),
        iconTheme: IconThemeData(color: AppColors.lightText, size: 20),
      ),
      textTheme: baseTextTheme.copyWith(
        displayLarge: baseTextTheme.displayLarge?.copyWith(
          fontSize: 45,
          fontWeight: FontWeight.w800,
          color: AppColors.lightSurfaceColor,
        ),
        displayMedium: baseTextTheme.displayMedium?.copyWith(
          fontSize: 40,
          fontWeight: FontWeight.w600,
          color: AppColors.lightSurfaceColor,
        ),
        displaySmall: baseTextTheme.displaySmall?.copyWith(
          fontSize: 36,
          fontWeight: FontWeight.w500,
          color: AppColors.lightSurfaceColor,
        ),
        headlineLarge: baseTextTheme.headlineLarge?.copyWith(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: AppColors.lightSurfaceColor,
        ),
        headlineMedium: baseTextTheme.headlineMedium?.copyWith(
          fontSize: 28,
          fontWeight: FontWeight.w500,
          color: AppColors.lightSurfaceColor,
        ),
        headlineSmall: baseTextTheme.headlineSmall?.copyWith(
          fontSize: 24,
          fontWeight: FontWeight.w400,
          color: AppColors.lightSurfaceColor,
        ),
        titleLarge: baseTextTheme.titleLarge?.copyWith(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: AppColors.lightText,
        ),
        titleMedium: baseTextTheme.titleMedium?.copyWith(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: AppColors.lightText,
        ),
        titleSmall: baseTextTheme.titleSmall?.copyWith(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.lightText,
        ),
        bodyLarge: baseTextTheme.bodyLarge?.copyWith(
          fontSize: 16,
          color: AppColors.lightText,
          fontWeight: FontWeight.w500,
        ),
        bodyMedium: baseTextTheme.bodyMedium?.copyWith(
          fontSize: 14,
          color: AppColors.lightText,
          fontWeight: FontWeight.w500
        ),
        bodySmall: baseTextTheme.bodySmall?.copyWith(
          fontSize: 12,
          color: AppColors.lightTextMuted,
          fontWeight: FontWeight.w400
        ),
        labelLarge: baseTextTheme.labelLarge?.copyWith(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: AppColors.lightText,
        ),
        labelMedium: baseTextTheme.labelMedium?.copyWith(
          fontSize: 13,
          color: AppColors.lightText,
          fontWeight: FontWeight.w500
        ),
        labelSmall: baseTextTheme.labelSmall?.copyWith(
          fontSize: 11,
          color: AppColors.lightTextMuted,
          fontWeight: FontWeight.w400
          
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.lightPrimary,
          foregroundColor: AppColors.lightSurfaceColor,
          minimumSize: const Size(double.infinity, 52),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          textStyle: TextStyle(
            fontFamily: fontFamily,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          elevation: 0,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.lightPrimary,
          textStyle: TextStyle(
            fontFamily: fontFamily,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.lightText,
          side: const BorderSide(color: AppColors.lightDivider),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          textStyle: TextStyle(
            fontFamily: fontFamily,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.lightBackgroundColor,
        hintStyle: TextStyle(
          fontFamily: fontFamily,
          color: AppColors.lightHint,
          fontSize: 18,
          fontWeight: FontWeight.w600
        ),
        labelStyle: TextStyle(
          fontFamily: fontFamily,
          color: AppColors.lightText,
          fontSize: 16,
        ),
        floatingLabelStyle: TextStyle(
          fontFamily: fontFamily,
          color: AppColors.lightText,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 14.0,
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightBorder, width: 1.0),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightDivider, width: 1.0),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.successColor,
            width: 1.0,
          ),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: const BorderSide(color: AppColors.errorColor, width: 1.0),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: const BorderSide(color: AppColors.errorColor, width: 1.0),
        ),
      ),

      cardTheme: CardThemeData(
        color: AppColors.lightSurfaceColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
          side: BorderSide(color: AppColors.lightBorder, width: 1.0),
        ),
      ),

      bottomNavigationBarTheme: BottomNavigationBarThemeData().copyWith(
        backgroundColor: AppColors.lightSurfaceColor,
        selectedItemColor: AppColors.lightPrimary,
        unselectedItemColor: AppColors.lightIcon,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
        selectedLabelStyle: TextStyle(fontFamily: fontFamily,
          fontSize: 12,
        ),
        unselectedLabelStyle: TextStyle(fontFamily: fontFamily,
          fontSize: 12,
        ),
      ),
      dividerTheme: const DividerThemeData(
        color: AppColors.lightBorder,
        thickness: 1,
        space: 1,
      ),

      // switchTheme: SwitchThemeData(
      //   thumbColor: MaterialStateProperty.resolveWith((states) {
      //     if (states.contains(MaterialState.selected)) {
      //       return _primaryColor;
      //     }
      //     return _lightHintColor;
      //   }),
      //   trackColor: MaterialStateProperty.resolveWith((states) {
      //     if (states.contains(MaterialState.selected)) {
      //       return _primaryColor.withOpacity(0.5);
      //     }
      //     return _lightDividerColor;
      //   }),
      // ),
    );
  }

//   static ThemeData get dark {
  //     final fontFamily = 'AirbnbCereal';
  //     final baseTheme = ThemeData.dark();
  //     final baseTextTheme = baseTheme.textTheme.apply(fontFamily: fontFamily,
  //     );

//     return baseTheme.copyWith(
  //       brightness: Brightness.dark,
  //       primaryColor: AppColors.brandColor,
  //       scaffoldBackgroundColor: AppColors.darkBackgroundColor,
  //       cardColor: AppColors.darkSurfaceColor,
  //       iconTheme: const IconThemeData(color: AppColors.darkIcon, size: 24.0),
  //       colorScheme: ColorScheme.fromSeed(
  //         seedColor: AppColors.brandColor,
  //         brightness: Brightness.dark,
  //       ).copyWith(
  //               primary: AppColors.brandColor,
  //         secondary: AppColors.brandSecondaryColor,
  //             tertiary: AppColors.lightTextSecondary,
  //               surface: AppColors.darkSurfaceColor,
  //               onPrimary: AppColors.lightSurfaceColor,
  //               onSecondary: AppColors.lightSurfaceColor,
  //               onSurface: AppColors.darkText,
  //               error: AppColors.errorColor,
  //               onError: Colors.white,),
  //       appBarTheme: AppBarTheme(
  //         backgroundColor: AppColors.darkSurfaceColor,
  //         foregroundColor: AppColors.darkText,
  //         elevation: 0,
  //         centerTitle: true,
  //         titleTextStyle: TextStyle(
  //           fontFamily: fontFamily,
  //           fontSize: 20,
  //           fontWeight: FontWeight.bold,
  //           color: AppColors.darkText,
  //         ),
  //         iconTheme: IconThemeData(color: AppColors.darkIcon),
  //       ),

//       textTheme: baseTextTheme.copyWith(
  //         displayLarge: baseTextTheme.displayLarge?.copyWith(
  //           fontSize: 57,
  //           fontWeight: FontWeight.bold,
  //           color: AppColors.darkText,
  //         ),
  //         displayMedium: baseTextTheme.displayMedium?.copyWith(
  //           fontSize: 45,
  //           fontWeight: FontWeight.bold,
  //           color: AppColors.darkText,
  //         ),
  //         displaySmall: baseTextTheme.displaySmall?.copyWith(
  //           fontSize: 36,
  //           fontWeight: FontWeight.bold,
  //           color: AppColors.darkText,
  //         ),
  //         headlineLarge: baseTextTheme.headlineLarge?.copyWith(
  //           fontSize: 32,
  //           fontWeight: FontWeight.bold,
  //           color: AppColors.darkText,
  //         ),
  //         headlineMedium: baseTextTheme.headlineMedium?.copyWith(
  //           fontSize: 28,
  //           fontWeight: FontWeight.bold,
  //           color: AppColors.darkText,
  //         ),
  //         headlineSmall: baseTextTheme.headlineSmall?.copyWith(
  //           fontSize: 24,
  //           fontWeight: FontWeight.bold,
  //           color: AppColors.darkText,
  //         ),
  //         titleLarge: baseTextTheme.titleLarge?.copyWith(
  //           fontSize: 22,
  //           fontWeight: FontWeight.bold,
  //           color: AppColors.darkText,
  //         ),
  //         titleMedium: baseTextTheme.titleMedium?.copyWith(
  //           fontSize: 16,
  //           fontWeight: FontWeight.w600,
  //           color: AppColors.darkText,
  //         ),
  //         titleSmall: baseTextTheme.titleSmall?.copyWith(
  //           fontSize: 14,
  //           fontWeight: FontWeight.w600,
  //           color: AppColors.darkText,
  //         ),
  //         bodyLarge: baseTextTheme.bodyLarge?.copyWith(
  //           fontSize: 16,
  //           color: AppColors.darkText,
  //         ),
  //         bodyMedium: baseTextTheme.bodyMedium?.copyWith(
  //           fontSize: 14,
  //           color: AppColors.darkText,
  //         ),
  //         bodySmall: baseTextTheme.bodySmall?.copyWith(
  //           fontSize: 12,
  //           color: AppColors.darkTextSecondary,
  //         ),
  //         labelLarge: baseTextTheme.labelLarge?.copyWith(
  //           fontSize: 14,
  //           fontWeight: FontWeight.bold,
  //           color: AppColors.darkText,
  //         ),
  //         labelMedium: baseTextTheme.labelMedium?.copyWith(
  //           fontSize: 12,
  //           color: AppColors.darkTextSecondary,
  //         ),
  //         labelSmall: baseTextTheme.labelSmall?.copyWith(
  //           fontSize: 11,
  //           color: AppColors.darkTextSecondary,
  //         ),
  //       ),

//       elevatedButtonTheme: ElevatedButtonThemeData(
  //         style: ElevatedButton.styleFrom(
  //           backgroundColor: AppColors.darkPrimary,
  //           foregroundColor: AppColors.darkText,
  //           shape: RoundedRectangleBorder(
  //             borderRadius: BorderRadius.circular(16.0),
  //           ),
  //           padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
  //           textStyle: TextStyle(
  //             fontFamily: fontFamily,
  //             fontSize: 16,
  //             fontWeight: FontWeight.bold,
  //           ),
  //           elevation: 2,
  //         ),
  //       ),
  //       textButtonTheme: TextButtonThemeData(
  //         style: TextButton.styleFrom(
  //           foregroundColor: AppColors.darkPrimary,
  //           textStyle: TextStyle(
  //             fontFamily: fontFamily,
  //             fontSize: 14,
  //             fontWeight: FontWeight.w600,
  //           ),
  //         ),
  //       ),
  //       outlinedButtonTheme: OutlinedButtonThemeData(
  //         style: OutlinedButton.styleFrom(
  //           foregroundColor: AppColors.darkText,
  //           side: const BorderSide(color: AppColors.darkDivider),
  //           shape: RoundedRectangleBorder(
  //             borderRadius: BorderRadius.circular(12.0),
  //           ),
  //           padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
  //           textStyle: TextStyle(
  //             fontFamily: fontFamily,
  //             fontSize: 16,
  //             fontWeight: FontWeight.w600,
  //           ),
  //         ),
  //       ),

//       inputDecorationTheme: InputDecorationTheme(
  //         filled: true,
  //         fillColor: AppColors.darkBackgroundColor,
  //         hintStyle: TextStyle(
  //           fontFamily: fontFamily,
  //           color: AppColors.darkHint,
  //           fontSize: 14,
  //         ),
  //         labelStyle: TextStyle(
  //           fontFamily: fontFamily,
  //           color: AppColors.darkText,
  //           fontSize: 16,
  //         ),
  //         floatingLabelStyle: TextStyle(
  //           fontFamily: fontFamily,
  //           color: AppColors.darkText,
  //         ),
  //         contentPadding: const EdgeInsets.symmetric(
  //           horizontal: 16.0,
  //           vertical: 14.0,
  //         ),
  //         border: OutlineInputBorder(
  //           borderRadius: BorderRadius.circular(12.0),
  //           borderSide: BorderSide(color: AppColors.darkBorder, width: 1.0),
  //         ),
  //         enabledBorder: OutlineInputBorder(
  //           borderRadius: BorderRadius.circular(12.0),
  //           borderSide: BorderSide(color: AppColors.darkBorder, width: 1.0),
  //         ),
  //         focusedBorder: OutlineInputBorder(
  //           borderRadius: BorderRadius.circular(12.0),
  //           borderSide: const BorderSide(
  //             color: AppColors.successColor,
  //             width: 2.0,
  //           ),
  //         ),
  //         errorBorder: OutlineInputBorder(
  //           borderRadius: BorderRadius.circular(12.0),
  //           borderSide: const BorderSide(color: AppColors.errorColor, width: 2.0),
  //         ),
  //         focusedErrorBorder: OutlineInputBorder(
  //           borderRadius: BorderRadius.circular(12.0),
  //           borderSide: const BorderSide(color: AppColors.errorColor, width: 2.0),
  //         ),
  //       ),

//       cardTheme: CardThemeData(
  //         color: AppColors.darkSurfaceColor,
  //         elevation: 1,
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(16.0),
  //         ),
  //         margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
  //       ),

//       bottomNavigationBarTheme: BottomNavigationBarThemeData().copyWith(
  //         backgroundColor: AppColors.darkSurfaceColor,
  //         selectedItemColor: AppColors.darkPrimary,
  //         unselectedItemColor: AppColors.darkIcon,
  //         type: BottomNavigationBarType.fixed,
  //         elevation: 8,
  //         selectedLabelStyle: TextStyle(fontFamily: fontFamily,
  //           fontSize: 12,
  //         ),
  //         unselectedLabelStyle: TextStyle(fontFamily: fontFamily,
  //           fontSize: 12,
  //         ),
  //       ),
  //       dividerTheme: const DividerThemeData(
  //         color: AppColors.darkDivider,
  //         thickness: 1,
  //         space: 1,
  //       ),

//       // switchTheme: SwitchThemeData(
  //       //   thumbColor: MaterialStateProperty.resolveWith((states) {
  //       //     if (states.contains(MaterialState.selected)) {
  //       //       return _primaryColor;
  //       //     }
  //       //     return _darkHintColor;
  //       //   }),
  //       //   trackColor: MaterialStateProperty.resolveWith((states) {
  //       //     if (states.contains(MaterialState.selected)) {
  //       //       return _primaryColor.withOpacity(0.5);
  //       //     }
  //       //     return _darkDividerColor;
  //       //   }),
  //       // ),
  //     );
  //   }
}
