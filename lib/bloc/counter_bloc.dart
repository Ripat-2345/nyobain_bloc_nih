import 'package:bloc/bloc.dart';

class CounterEvent {
  final int? value;

  CounterEvent({this.value});
}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterEvent>(
      (event, emit) {
        emit(state + (event.value ?? 1));
      },
    );
  }

  void increment() {
    emit(state + 1);
  }

  @override
  void onChange(Change<int> change) {
    // TODO: implement onChange
    print(change);
    super.onChange(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    // TODO: implement onError
    print(error);
    super.onError(error, stackTrace);
  }

  @override
  void onTransition(Transition<CounterEvent, int> transition) {
    // TODO: implement onTransition
    print(transition);
    super.onTransition(transition);
  }
}
