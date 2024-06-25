import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'favorite_button_state.dart';

abstract class FavoriteButtonCubit extends Cubit<FavoriteButtonState> {
  FavoriteButtonCubit() : super(const FavoriteButtonState());

  Future<void> favorite();
  void unfavorite();
}

final class BasicFavoriteButtonCubit extends FavoriteButtonCubit {
  BasicFavoriteButtonCubit({
    required this.favoritingService,
  });

  final FavoritingService favoritingService;

  @override
  Future<void> favorite() async {
    emit(state.copyWith(status: FavoriteButtonStatus.inProgress));

    try {
      await favoritingService.favorite();

      emit(
        state.copyWith(status: FavoriteButtonStatus.success, favorited: true),
      );
    } catch (_) {
      emit(state.copyWith(status: FavoriteButtonStatus.error));
    }
  }

  @override
  void unfavorite() {
    emit(
      state.copyWith(status: FavoriteButtonStatus.success, favorited: false),
    );
  }
}

final class OptimisticFavoriteButtonCubit extends FavoriteButtonCubit {
  OptimisticFavoriteButtonCubit({
    required this.favoritingService,
  });

  final FavoritingService favoritingService;

  @override
  Future<void> favorite() async {
    emit(
      state.copyWith(status: FavoriteButtonStatus.success, favorited: true),
    );

    try {
      await favoritingService.favorite();
    } catch (_) {
      emit(
        state.copyWith(status: FavoriteButtonStatus.error, favorited: false),
      );
    }
  }

  @override
  void unfavorite() {
    emit(
      state.copyWith(status: FavoriteButtonStatus.success, favorited: false),
    );
  }
}

class FavoritingService {
  const FavoritingService();

  Future<void> favorite() => Future.delayed(const Duration(seconds: 2));
}
