part of widget_library;

ThemeData get theme {
// Flutter Theming developed by Jess Jaime
// Initialize ThemeData.
  var theme = ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.light,
  );
// Main Setting.
  theme = theme.copyWith(
    colorScheme: theme.colorScheme.copyWith(
      onPrimary: const Color(0xffffffff),
      secondary: secondaryColor,
    ),
  );
// ElevatedButton Setting.
  theme = theme.copyWith(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
        ),
      ),
    ),
  );
// OutlinedButton Setting.
  theme = theme.copyWith(
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
        ),
      ),
    ),
  );
// Chip Setting.
  theme = theme.copyWith(
    chipTheme: theme.chipTheme.copyWith(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          bottomRight: Radius.circular(16.0),
        ),
      ),
      labelStyle: (theme.chipTheme.labelStyle).copyWith(
        color: secondaryColor,
        shadows: [
          const Shadow(
            blurRadius: 2.0,
            color: Colors.grey,
          )
        ],
      ),
      secondaryLabelStyle: (theme.chipTheme.labelStyle).copyWith(
        shadows: [
          const Shadow(
            blurRadius: 2.0,
          )
        ],
      ),
    ),
  );
  return theme;
}
