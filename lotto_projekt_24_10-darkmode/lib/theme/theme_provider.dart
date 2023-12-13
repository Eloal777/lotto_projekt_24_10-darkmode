import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotto_projekt_24_10/theme/theme.dart';

class ThemeProvider extends Notifier<CdemyTheme> {
  @override
  CdemyTheme build() {
    return CdemyTheme.lightMode;
  }

  void setTheme(CdemyTheme theme) {
    state = theme;
  }

  void toggleTheme() {
    if (state.id == 'light') {
      state = CdemyTheme.darkMode;
    } else {
      state = CdemyTheme.lightMode;
    }
  }
}



/* import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeData>((ref) {
  return ThemeNotifier(); 
});

class ThemeNotifier extends StateNotifier<ThemeData> {
  ThemeNotifier() : super(_lightMode);

  static final _lightMode = ThemeData(
    
    brightness: Brightness.light,
    
  );

  static final _darkMode = ThemeData(
  
    brightness: Brightness.dark,
    
  );

  void toggleTheme() {
    state = state.brightness == Brightness.light ? _darkMode : _lightMode;
  }
} */
