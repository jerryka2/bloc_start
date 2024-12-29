import 'package:bloc_test/cubit/area_circle_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AreaCubitView extends StatelessWidget {
  AreaCubitView({super.key});

  final TextEditingController radiusController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Area of Circle'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter radius',
              ),
              keyboardType: TextInputType.number,
              controller: radiusController,
            ),
            SizedBox(height: 20),
            BlocBuilder<AreaCubit, double>(builder: (context, double state) {
              return Text(
                'Area: ${state.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              );
            }),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final double radius =
                    double.tryParse(radiusController.text) ?? 0.0;
                context.read<AreaCubit>().calculateArea(radius);
              },
              child: Text('Calculate Area'),
            ),
          ],
        ),
      ),
    );
  }
}
