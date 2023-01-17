import 'package:bloc/bloc.dart';

enum Event { inc, dec }

// Responsabilidade unica, assino todos os eventos e qual será o retorno desse estado
class AppBloc extends Bloc<Event, int> {
  AppBloc(super.initialState);

  // Uma função Stream() pode ter quantos retornos que você quiser
  // Direferente de um Future()
  Stream<int> callEvent(Event event) async* {
    if (event == Event.inc) {
      yield state + 1; // Retorna todas as vezes que for declarado
    } else {
      yield state - 1;
    }
  }
}
