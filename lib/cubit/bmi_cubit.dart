import 'package:flutter_bloc/flutter_bloc.dart';

class BMICubit extends Cubit<double> {
  BMICubit() : super(0.0);

  void calculateBMI(double weight, double height) {
    if (height > 0) {
      emit(weight / (height * height));
    } else {
      emit(0.0);
    }
  }
}
