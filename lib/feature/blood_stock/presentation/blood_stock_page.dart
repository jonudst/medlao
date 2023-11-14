import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:medlao/routes/app_router.dart';
import 'package:medlao/routes/app_router.gr.dart';

import '../../../config/dependency.dart';

@RoutePage()
class BloodStockPage extends StatelessWidget {
  const BloodStockPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("1"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => getIt<AppRouter>().push(const BloodMatchRoute()),
          child: const Text("Next"),
        ),
      ),
    );
  }
}
