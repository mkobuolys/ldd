part of 'favorite_button_cubit.dart';

enum FavoriteButtonStatus {
  initial,
  inProgress,
  success,
  error,
}

final class FavoriteButtonState extends Equatable {
  const FavoriteButtonState({
    this.status = FavoriteButtonStatus.initial,
    this.favorited = false,
  });

  final FavoriteButtonStatus status;
  final bool favorited;

  FavoriteButtonState copyWith({
    FavoriteButtonStatus? status,
    bool? favorited,
  }) {
    return FavoriteButtonState(
      status: status ?? this.status,
      favorited: favorited ?? this.favorited,
    );
  }

  @override
  List<Object> get props => [status, favorited];
}
