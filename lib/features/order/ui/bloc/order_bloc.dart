import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failure.dart';
import '../../../../entities/entities.dart';

part 'order_bloc.freezed.dart';
part 'order_event.dart';
part 'order_state.dart';

@injectable
class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc() : super(const OrderState.initial()) {
    on<OrderEvent>((event, emit) async {
      await event.when(
        setNewOrder: () {
          emit(const _Loaded(dishes: []));
        },
        setGuestCount: (int count) {
          if (state is _Loaded) {
            emit((state as _Loaded).copyWith(guestCount: count));
          }
        },
        chooseDish: (DishEntity dish) {
          if (state is _Loaded) {
            final oldState = state as _Loaded;
            emit(oldState.copyWith(dishes: [...oldState.dishes, dish]));
          }
        },
      );
    });
  }
}
