import 'package:flutter_bloc/flutter_bloc.dart';

class StepsCubit extends Cubit<int> {
  StepsCubit() : super(0);

  void nextStep() => emit(state + 1);

  void reset() => emit(0);
}
