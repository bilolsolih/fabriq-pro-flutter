import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/models/miscellaneous/miscellaneous_model.dart';
import 'miscellaneous_event.dart';
import 'miscellaneous_state.dart';

class MiscellaneousBloc extends Bloc<MiscellaneousEvent, MiscellaneousState> {
  MiscellaneousBloc() : super(const MiscellaneousState()) {
    on<LoadMiscellaneous>(_onLoad);
    on<AddMiscellaneous>(_onAdd);
    on<UpdateMiscellaneous>(_onUpdate);
    on<DeleteMiscellaneous>(_onDelete);
  }

  void _onLoad(LoadMiscellaneous event, Emitter<MiscellaneousState> emit) {
    final initialItems = [
      Miscellaneous(
        id: 1,
        name: 'Igna',
        model: '1234',
        detail: 'Zamok',
        quantity: '100.dona',
        date: '10.03.2025',
      ),
      Miscellaneous(
        id: 2,
        name: 'Sep',
        model: '1234',
        detail: 'Tugma',
        quantity: '200.dona',
        date: '10.03.2025',
      ),
      Miscellaneous(
        id: 3,
        name: 'Qaychi',
        model: '1234',
        detail: 'Zamok',
        quantity: '1000.dona',
        date: '10.03.2025',
      ),
      Miscellaneous(
        id: 4,
        name: 'Kabel',
        model: '1234',
        detail: 'Zamok',
        quantity: '500.dona',
        date: '10.03.2025',
      ),
      Miscellaneous(
        id: 5,
        name: 'Reziŋka',
        model: '1234',
        detail: 'Zamok',
        quantity: '800.dona',
        date: '10.03.2025',
      ),
      Miscellaneous(
        id: 6,
        name: 'Pachmilik',
        model: '1234',
        detail: 'Zamok',
        quantity: '900.dona',
        date: '10.03.2025',
      ),
      Miscellaneous(
        id: 7,
        name: 'Bolit',
        model: '1234',
        detail: 'Zamok',
        quantity: '100.dona',
        date: '10.03.2025',
      ),
      Miscellaneous(
        id: 8,
        name: 'Gayka',
        model: '1234',
        detail: 'Zamok',
        quantity: '300.dona',
        date: '10.03.2025',
      ),
      Miscellaneous(
        id: 9,
        name: 'Yoğ',
        model: '1234',
        detail: 'Zamok',
        quantity: '50.dona',
        date: '10.03.2025',
      ),
      Miscellaneous(
        id: 10,
        name: 'Kulich',
        model: '1234',
        detail: 'Zamok',
        quantity: '150.dona',
        date: '10.03.2025',
      ),
      Miscellaneous(
        id: 11,
        name: 'Rang',
        model: '1234',
        detail: 'Zamok',
        quantity: '90.dona',
        date: '10.03.2025',
      ),
      Miscellaneous(
        id: 12,
        name: 'Zanjir',
        model: '1234',
        detail: 'Zamok',
        quantity: '400.dona',
        date: '10.03.2025',
      ),
    ];
    emit(state.copyWith(items: initialItems));
  }

  void _onAdd(AddMiscellaneous event, Emitter<MiscellaneousState> emit) {
    final updatedItems = List<Miscellaneous>.from(state.items)..add(event.item);
    emit(state.copyWith(items: updatedItems));
  }

  void _onUpdate(UpdateMiscellaneous event, Emitter<MiscellaneousState> emit) {
    final updatedItems = List<Miscellaneous>.from(state.items)..[event.index] = event.item;
    emit(state.copyWith(items: updatedItems));
  }

  void _onDelete(DeleteMiscellaneous event, Emitter<MiscellaneousState> emit) {
    final updatedItems = List<Miscellaneous>.from(state.items)..removeAt(event.index);
    emit(state.copyWith(items: updatedItems));
  }
}
