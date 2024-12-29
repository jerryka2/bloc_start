import 'package:bloc_test/cubit/simple_interest_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleInterestCubitView extends StatelessWidget {
  SimpleInterestCubitView({super.key});

  final TextEditingController principalController = TextEditingController();
  final TextEditingController rateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Interest Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Principal',
              ),
              keyboardType: TextInputType.number,
              controller: principalController,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Rate of Interest',
              ),
              keyboardType: TextInputType.number,
              controller: rateController,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Time (years)',
              ),
              keyboardType: TextInputType.number,
              controller: timeController,
            ),
            SizedBox(height: 20),
            BlocBuilder<SimpleInterestCubit, double>(
                builder: (context, double state) {
              return Text(
                'Simple Interest: ${state.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              );
            }),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final double principal =
                    double.tryParse(principalController.text) ?? 0.0;
                final double rate = double.tryParse(rateController.text) ?? 0.0;
                final double time = double.tryParse(timeController.text) ?? 0.0;
                context
                    .read<SimpleInterestCubit>()
                    .calculate(principal, rate, time);
              },
              child: Text('Calculate Interest'),
            ),
          ],
        ),
      ),
    );
  }
}
