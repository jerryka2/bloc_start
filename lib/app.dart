import 'package:bloc_test/cubit/dashboard_cubit.dart';
import 'package:bloc_test/service_locator/service_locator.dart';
import 'package:bloc_test/view/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Ensure you import the flutter_bloc package

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bloc Test',
      home: BlocProvider.value(
        value: serviceLoactor<DashboardCubit>(),
        child: DashboardView(),
      ),
    );
  }
}
