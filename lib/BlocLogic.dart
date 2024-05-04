import 'package:bloc/bloc.dart';

class BlocLogic extends Cubit<int> {
  BlocLogic() : super(0);
  increment() {
    emit(state + 1); // state is int value
  }

  decrement() {
    emit(state - 1);
  }

  @override
  void onChange(Change<int> change) {
    print("The change in state is $change");
  }
}
