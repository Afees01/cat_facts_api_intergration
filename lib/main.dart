import 'package:cat_facts_api_intergration/controllers/fact_lsit_screen_controller.dart';
import 'package:cat_facts_api_intergration/controllers/fact_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'views/fact_screen/fact_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FactScreenController(),
        ),
        ChangeNotifierProvider(
          create: (context) => FactLsitScreenController(),
        )
      ],
      child: MaterialApp(
        home: FactScreen(),
      ),
    );
  }
}
