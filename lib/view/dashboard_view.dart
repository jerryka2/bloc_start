import 'package:bloc_test/cubit/dashboard_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
      ),
      body: GridView(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        children: <Widget>[
          Card(
            child: InkWell(
              onTap: () {
                context.read<DashboardCubit>().openCounterCubitView(context);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(Icons.add, size: 48),
                  Text('Counter Cubit'),
                ],
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                context.read<DashboardCubit>().openArithmeticCubitView(context);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(Icons.calculate, size: 48),
                  Text('Arithmetic Cubit'),
                ],
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                context.read<DashboardCubit>().openStudentCubitView(context);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(Icons.person, size: 48),
                  Text('Student Cubit'),
                ],
              ),
            ),
          ),
          // Card(
          //   child: InkWell(
          //     onTap: () {
          //       context.read<DashboardCubit>().openAreaCubitView(context);
          //     },
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: const <Widget>[
          //         Icon(Icons.pie_chart, size: 48),
          //         Text('Area of Circle'),
          //       ],
          //     ),
          //   ),
          // ),
          // Card(
          //   child: InkWell(
          //     onTap: () {
          //       context
          //           .read<DashboardCubit>()
          //           .openSimpleInterestCubitView(context);
          //     },
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: const <Widget>[
          //         Icon(Icons.attach_money, size: 48),
          //         Text('Simple Interest'),
          //       ],
          //     ),
          //   ),
          // ),
          // Card(
          //   child: InkWell(
          //     onTap: () {
          //       context.read<DashboardCubit>().openBMICubitView(context);
          //     },
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: const <Widget>[
          //         Icon(Icons.fitness_center, size: 48),
          //         Text('BMI Calculator'),
          //       ],
          //     ),
          //   ),
          // ),
          // Card(
          //   child: InkWell(
          //     onTap: () {
          //       context.read<DashboardCubit>().openStudentBlocView(context);
          //     },
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: const <Widget>[
          //         Icon(Icons.person, size: 48),
          //         Text('Student Bloc'),
          //       ],
          //     ),
          //   ),
          // ),
          // Card(
          //   child: InkWell(
          //     onTap: () {
          //       context.read<DashboardCubit>().openCounterBlocView(context);
          //     },
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: const <Widget>[
          //         Icon(Icons.add, size: 48),
          //         Text('Counter Bloc'),
          //       ],
          //     ),
          //   ),
          // ),
          // Card(
          //   child: InkWell(
          //     onTap: () {
          //       context.read<DashboardCubit>().openArithmeticBlocView(context);
          //     },
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: const <Widget>[
          //         Icon(Icons.calculate, size: 48),
          //         Text('Arithmetic Bloc'),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
