import 'package:flutter/material.dart';
import 'package:movie_app/provider/provider.dart';
import 'package:provider/provider.dart';

class ChgnBtn extends StatelessWidget {
  const ChgnBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Switch.adaptive(
      value: themeProvider.isDarkMode,
      onChanged: (bool value) {
        final provider = Provider.of<ThemeProvider>(context, listen: false);
        provider.toggleTheme(value);
      },
    );
  }
}
