import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.dark().copyWith(
          primary: const Color(0xff212121),
          secondary: const Color(0xff0D7377),
        ),
        scaffoldBackgroundColor: const Color(0xff212121),
      ),
      home: const InputPage(),
    );
  }
}
