import 'package:cat_facts_api_intergration/controllers/fact_lsit_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FactsListScreen extends StatefulWidget {
  const FactsListScreen({super.key});

  @override
  State<FactsListScreen> createState() => _FactsListScreenState();
}

class _FactsListScreenState extends State<FactsListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<FactLsitScreenController>(
        builder: (context, value, child) => Container(
            width: 50,
            height: 20,
            decoration: BoxDecoration(color: Colors.yellow),
            child: ListView(),
            )),
      ),
    );
  }
}
