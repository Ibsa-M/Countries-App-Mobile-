import 'package:flutter/material.dart';
import 'package:countries_app/core/di/injection.dart';
import 'package:countries_app/features/countries/presentation/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

@override
Widget build(BuildContext context) {
  return const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  );
}
}
