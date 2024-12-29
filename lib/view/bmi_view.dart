import 'package:bloc_test/cubit/bmi_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BMICubitView extends StatelessWidget {
  BMICubitView({super.key});

  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Weight (kg)',
              ),
              keyboardType: TextInputType.number,
              controller: weightController,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Height (m)',
              ),
              keyboardType: TextInputType.number,
              controller: heightController,
            ),
            SizedBox(height: 20),
            BlocBuilder<BMICubit, double>(builder: (context, double state) {
              return Text(
                'BMI: ${state.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              );
            }),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final double weight =
                    double.tryParse(weightController.text) ?? 0.0;
                final double height =
                    double.tryParse(heightController.text) ?? 0.0;
                context.read<BMICubit>().calculateBMI(weight, height);
              },
              child: Text('Calculate BMI'),
            ),
          ],
        ),
      ),
    );
  }
}
