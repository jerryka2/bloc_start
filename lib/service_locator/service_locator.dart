import 'package:bloc_test/cubit/Arithmetic_cubit.dart';
import 'package:bloc_test/cubit/counter_cubit.dart';
import 'package:bloc_test/cubit/dashboard_cubit.dart';
import 'package:bloc_test/cubit/student_cubit.dart';
import 'package:get_it/get_it.dart';

final serviceLoactor = GetIt.instance;

Future<void> intiDependencies() async {
  _initCubit();
}

void _initCubit() {
  serviceLoactor.registerLazySingleton<CounterCubit>(() => CounterCubit());
  serviceLoactor
      .registerLazySingleton<ArithmeticCubit>(() => ArithmeticCubit());
  serviceLoactor.registerLazySingleton<StudentCubit>(() => StudentCubit());
  serviceLoactor.registerLazySingleton<DashboardCubit>(
    () => DashboardCubit(
      serviceLoactor(),
      serviceLoactor(),
      serviceLoactor(),
    ),
  );
}
