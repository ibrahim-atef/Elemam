import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ThemeProvider extends ChangeNotifier {
  static const String _themeBox = "themeBox";
  static const String _themeKey = "isDarkMode";

  late bool _isDarkMode;

  ThemeProvider() {
    _isDarkMode = Hive.box(_themeBox).get(_themeKey, defaultValue: false);
  }

  bool get isDarkMode => _isDarkMode;

  ThemeMode get themeMode => _isDarkMode ? ThemeMode.dark : ThemeMode.light;

  // **Light Mode Theme (White Background)**
  ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white, // خلفية بيضاء
    drawerTheme: const DrawerThemeData(
      backgroundColor: Colors.white, // خلفية بيضاء في الوضع الفاتح
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white, // خلفية بيضاء
      selectedItemColor: Color(0xff65385C), // لون العنصر المحدد
      unselectedItemColor: Colors.grey, // لون العناصر غير المحددة
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white, // خلفية بيضاء
      foregroundColor: Colors.black,  // لون النصوص والأيقونات بالأسود
    ),
    iconTheme: const IconThemeData(
      color: Colors.black, // لون الأيقونات باللون الأسود
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Color(0xFFcea959)), // اللون الجديد للنصوص
    ),
  );

  // **Dark Mode Theme (Black Background with Yellow)**
  ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black, // خلفية سوداء في الوضع الداكن
    drawerTheme: const DrawerThemeData(
      backgroundColor: Colors.black, // خلفية سوداء في الوضع الداكن
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.black, // خلفية سوداء
      selectedItemColor: Color(0xFFFFD700), // اللون الأصفر للعناصر المحددة
      unselectedItemColor: Colors.grey, // اللون الرمادي للأيقونات غير المختارة
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black, // نفس خلفية الوضع الداكن
      foregroundColor: Colors.white, // اللون الأبيض للنصوص والأيقونات
    ),
    iconTheme: const IconThemeData(
      color: Colors.white, // اللون الأبيض للأيقونات
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Colors.white), // النصوص باللون الأبيض
    ),
  );

  void toggleTheme() async {
    _isDarkMode = !_isDarkMode;
    Hive.box(_themeBox).put(_themeKey, _isDarkMode);
    notifyListeners();
  }
}
