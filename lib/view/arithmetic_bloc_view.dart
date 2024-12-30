import 'package:bloc_test/cubit/Arithmetic_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArithmeticBlocView extends StatelessWidget {
  ArithmeticBlocView({super.key});

  final TextEditingController firstNumberController = TextEditingController();
  final TextEditingController secondNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Arithmetic Bloc'),
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Enter first number',
            ),
            controller: firstNumberController,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Enter second number',
            ),
            controller: secondNumberController,
          ),
          SizedBox(height: 20),
          BlocBuilder<ArithmeticCubit, int>(builder: (context, int state) {
            return Text(
              '$state',
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            );
          }),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: Text('Add'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: Text('Subtract'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: Text('Multiply'),
          ),
        ],
      ),
    );
  }
}
