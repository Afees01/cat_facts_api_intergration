import 'package:cat_facts_api_intergration/controllers/fact_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FactScreen extends StatelessWidget {
  const FactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<FactScreenController>().getfact();
        },
      ),
      body:  Center(
        child: Consumer<FactScreenController>(
          builder: (context, providerObj, child) => providerObj.isLoading
              ? CircularProgressIndicator()
              : Row(
                  children: [
                    Text(providerObj.resobj?.length.toString() ?? "no data"),
                    Expanded(
                      child: Text(
                        providerObj.resobj?.fact.toString() ?? "no data",
                        maxLines: 3,
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
    