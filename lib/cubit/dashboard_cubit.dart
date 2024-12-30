import 'package:bloc_test/cubit/Arithmetic_cubit.dart';
import 'package:bloc_test/cubit/counter_cubit.dart';
import 'package:bloc_test/cubit/student_cubit.dart';
import 'package:bloc_test/view/arithmetic_cubit_view.dart';
import 'package:bloc_test/view/counter_cubit_view.dart';
import 'package:bloc_test/view/student_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(
    this._counterCubit,
    this._arithmeticCubit,
    this._studentCubit,
    // this._simpleInterestCubit,
    // this._areaCubit,
    // this._bmiCubit,
  ) : super(null);

  final CounterCubit _counterCubit;
  final ArithmeticCubit _arithmeticCubit;
  final StudentCubit _studentCubit;
  // final SimpleInterestCubit _simpleInterestCubit;
  // final AreaCubit _areaCubit;
  // final BMICubit _bmiCubit;

  void openCounterCubitView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _counterCubit,
          child: CounterCubitView(),
        ),
      ),
    );
  }

  void openArithmeticCubitView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _arithmeticCubit,
          child: ArithmeticCubitView(),
        ),
      ),
    );
  }

  void openStudentCubitView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _studentCubit,
          child: StudentCubitView(),
        ),
      ),
    );
  }

  // void openSimpleInterestCubitView(BuildContext context) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (_) => BlocProvider.value(
  //         value: _simpleInterestCubit,
  //         child: SimpleInterestCubitView(),
  //       ),
  //     ),
  //   );
  // }

  // void openAreaCubitView(BuildContext context) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (_) => BlocProvider.value(
  //         value: _areaCubit,
  //         child: AreaCubitView(),
  //       ),
  //     ),
  //   );
  // }

  // void openBMICubitView(BuildContext context) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (_) => BlocProvider.value(
  //         value: _bmiCubit,
  //         child: BMICubitView(),
  //       ),
  //     ),
  //   );
  // }

  // void openStudentBlocView(BuildContext context) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (_) => BlocProvider.value(
  //         value: _bmiCubit,
  //         child: StudentBlocView(),
  //       ),
  //     ),
  //   );
  // }

  // void openCounterBlocView(BuildContext context) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (_) => BlocProvider.value(
  //         value: _bmiCubit,
  //         child: CounterBlocView(),
  //       ),
  //     ),
  //   );
  // }

  // void openArithmeticBlocView(BuildContext context) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (_) => BlocProvider.value(
  //         value: _bmiCubit,
  //         child: ArithmeticBlocView(),
  //       ),
  //     ),
  //   );
  // }
}
