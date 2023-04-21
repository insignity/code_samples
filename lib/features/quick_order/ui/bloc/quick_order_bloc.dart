import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failure.dart';
import '../../../../entities/entities.dart';
import '../../domain/use_cases/quick_order_get_dishes.dart';

part 'quick_order_bloc.freezed.dart';

part 'quick_order_event.dart';

part 'quick_order_state.dart';

@lazySingleton
class QuickOrderBloc extends Bloc<QuickOrderEvent, QuickOrderState> {
  final QuickOrderGetDishes getDishes;

  QuickOrderBloc(this.getDishes) : super(const QuickOrderState.initial()) {
    on<QuickOrderEvent>((event, emit) async {
      await event.when(
        getDishes: () async {
          if (state is _Initial || state is _Loaded) {
            final _Loaded oldState = state is _Initial
                ? const _Loaded(dishes: [])
                : state as _Loaded;
            emit(const _Loading());
            try {
              final result = await getDishes();
              emit(oldState.copyWith(dishes: result));
            } catch (e) {
              emit(_Error(NotImplementedFailure(e.toString())));
            }
          }
        },
        setGuestCount: (int count) {
          if (state is _Loaded) {
            emit((state as _Loaded).copyWith(guestsCount: count));
          }
        },
        addDish: (DishEntity dish) {
          if (state is _Loaded) {
            List<DishEntity> orderedDishes = [
              ...(state as _Loaded).orderedDishes
            ];
            orderedDishes.add(dish);
            emit((state as _Loaded).copyWith(orderedDishes: orderedDishes));
          }
        },
        removeDish: (DishEntity dish) {
          if (state is _Loaded) {
            List<DishEntity> orderedDishes = [
              ...(state as _Loaded).orderedDishes,
            ];
            orderedDishes.remove(dish);
            emit((state as _Loaded).copyWith(orderedDishes: orderedDishes));
          }
        },
      );
    });
  }
}
